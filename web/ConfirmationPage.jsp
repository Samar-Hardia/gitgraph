<%-- 
    Document   : ConfirmationPage
    Created on : 2 Apr, 2018, 4:31:10 PM
    Author     : sanket
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <%@include file="navbar_wlo.html" %>
       <body>
         <div class="content-wrapper">
          <div id="mainContent">
            <div class="container-fluid">
                 <%@include file="Language.jsp"%> 
        <div id="content">
            <%
                int UID = Integer.parseInt(request.getParameter("uid"));
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plotters","root","root");
             String conf = request.getParameter("rand");
             Statement stmt = con.createStatement();
                try{
             String sql = "select * from confirmation where UID = " + UID + ";";
             ResultSet res =  stmt.executeQuery(sql);
             res.next();
             if(conf.equals(res.getString("confirm_string"))){
             String update = "update users set active =1 where UID = " + UID + ";";
             stmt.executeUpdate(update);
             out.println("confirmation successful <a href=\"Login.jsp\">Login</a>");
             String delete = "delete from confirmation where UID = " + UID + ";";
             stmt.executeUpdate(delete);
                     }else{
             String fail = "SELECT *  from users where UID ="  + UID + ";";
             res = stmt.executeQuery(fail);
             res.next();
             String mail = res.getString("email");
             session.setAttribute("mail", mail);
             out.print("Confirmation unsucessfull <a href=\"Confirmation.jsp\">resend link</a>");
             String delete = "delete from confirmation where UID = " + UID + ";";
             stmt.executeUpdate(delete);
             }
                }catch(Exception e){
                 String fail = "SELECT *  from users where UID ="  + UID + ";";
             ResultSet res = stmt.executeQuery(fail);
             res.next();
             String mail = res.getString("email");
             session.setAttribute("mail", mail);
             out.print("Confirmation unsucessfull <a href=\"Confirmation.jsp\">resend link</a>");
             String delete = "delete from confirmation where UID = " + UID + ";";
             stmt.executeUpdate(delete);
                }
            %>
        </div>
            </div>
          </div>
         </div>
       </body>
       <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/sb-admin.min.js"></script>
</html>
