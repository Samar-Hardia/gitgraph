<%-- 
    Document   : ChangePassword
    Created on : 21 Mar, 2018, 11:47:21 AM
    Author     : sanket
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <% if(session.getAttribute("UID")!=null){
       
    %>
   <%@include file="navbar_wli.jsp"%>
               <%
               }
               else{
              
               %>
              <%@include file="navbar_wlo.html"%>   
                <%}%>
    <body>
         <div class="content-wrapper">
          <div id="mainContent">
    <div class="container-fluid">
         <%@include file="Language.jsp"%> 
        <form method="POST" action="ChangePassword.jsp">
           
            <div class="form-group">
                 <div class="form-row">
                    <div class="col-md-12">
                      <label for="exampleInputPassword1">Old Password</label>
                      <input class="form-control" id="old_password" name="old_password" type="password" placeholder="Old Password">
                    </div>
                 </div>
                  <div class="form-row">
                    <div class="col-md-6">
                      <label for="exampleInputPassword1">Password</label>
                      <input class="form-control" id="password" name="password" type="password" placeholder="Password">
                    </div>
                    <div class="col-md-6">
                      <label for="exampleConfirmPassword">Confirm password  <span id='message'></span></label>
                       <span id='message'></span>
                       <input class="form-control" id="confirm_password" name="cpassword" type="password" onkeyup="check()" placeholder="Confirm password">
                    </div>
                  </div>
                </div>
                    <input type="submit" value="Register" class="btn btn-primary btn-block" disabled="true" id="submit1"/>
              </form>
    </div>
          </div>
         </div></body>
         <%
             try{
              String pass = request.getParameter("password");
              String opass = request.getParameter("old_password");
             if(pass!=null){
         Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plotters","root","root");
            Statement stmt = con.createStatement();
            String query = "SELECT * FROM users WHERE UID = " + session.getAttribute("UID") + " AND password = \"" +  opass + "\";";
            ResultSet res = stmt.executeQuery(query);
            if(res.next()){
            String sql = "UPDATE users SET password = \"" + pass + "\" where UID = " + session.getAttribute("UID");
            stmt.executeUpdate(sql);
            out.print("<script>alert(\"password successfully changed \");</script>");
            response.sendRedirect("index.jsp");
            }else{
            out.print("<script>alert(\"old passsword incorrect\");</script>");
            }
              }}catch(Exception e){
             out.print(e);
             }
         %>
         <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/sb-admin.min.js"></script>
     <script>
                 var check = function() {
  if (document.getElementById('password').value ==
    document.getElementById('confirm_password').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'matching';
     document.getElementById('submit1').disabled = false;
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'both password must be same';
   
  }
}
              </script>
</html>
