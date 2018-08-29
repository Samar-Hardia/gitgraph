<%-- 
    Document   : save
    Created on : 22 Apr, 2018, 2:56:17 PM
    Author     : sanket
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Random"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <%
          try{
          File imgfile = new File("D:\\mypainting.jpeg");
 Class.forName("com.mysql.jdbc.Driver"); 
 Random r = new Random();
 int g = r.nextInt(20000)+30000;
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plotters","root","root");
 FileInputStream fin = new FileInputStream(imgfile);
 PreparedStatement pre = con.prepareStatement("insert into graph (graph_id,graph_type,UID,graph_img,title) values(?,?,?,?,?)");
     pre.setInt(1, g);
     session.setAttribute("gid", g);
 pre.setString(2, "UML");
 if(session.getAttribute("UID")!=null){
 String a = session.getAttribute("UID").toString();
 pre.setInt(3, Integer.parseInt(a) );
 }else{
  pre.setInt(3, 1 );
 }
 pre.setBinaryStream(4,(InputStream)fin,(int)imgfile.length());
  pre.setString(5, "MyUml");
		   pre.executeUpdate();
                    pre.close();
		   con.close(); 
                   response.sendRedirect("http://localhost:8084/Plotit/j/diagramo.com/editor/editor.jsp");
                   
          }catch(Exception e){
          
          }
       %>
</html>
