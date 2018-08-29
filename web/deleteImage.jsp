<%-- 
    Document   : getimage
    Created on : 20 Mar, 2018, 11:32:22 PM
    Author     : sanket
--%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
     try{
                            OutputStream oImage;
                    Class.forName("com.mysql.jdbc.Driver"); 
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plotters","root","root");
   Statement stmt = con.createStatement();
			
         String sql = "delete from graph where graph_id=" + request.getParameter("your_id") + ";";
         stmt.executeUpdate(sql);
         response.sendRedirect("charts.jsp");
                        }catch(Exception e){
out.print(e);
}
     %>
</html>
