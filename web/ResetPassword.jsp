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
        <div id="content">
             <%@include file="Language.jsp"%> 
            <form method="GET" action="ResetPassword.jsp">
        
    </div>    <div class="form-group">
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
            <%
                Class.forName("com.mysql.jdbc.Driver"); 
                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plotters","root","root");
                 Statement stmt = con.createStatement();
                  try{
             if(request.getParameter("password")!=null){
             String sql = "select * from forgot where UID = " + session.getAttribute("forgot_id") + ";";
             ResultSet res =  stmt.executeQuery(sql);
             res.next();
             if(session.getAttribute("conf_string").equals(res.getString("confirm_string"))){
            String sql1 = "UPDATE users SET password = \"" + request.getParameter("password") + "\" where UID = " + session.getAttribute("forgot_id") + ";";
            if(stmt.executeUpdate(sql1)>0){
             response.sendRedirect("ResetSuccess.jsp");
             String delete = "delete from forgot where UID = " + session.getAttribute("forgot_id") + ";";
               stmt.executeUpdate(delete);
            
            }
                     }else{
             out.print("Reset unsucessfull <a href=\"forgot.jsp\">Retry</a>");
             String delete = "delete from confirmation where UID = " + session.getAttribute("forgot_id") + ";";
             stmt.executeUpdate(delete);
             }
             }
                }catch(Exception e){
              out.print("Reset unsucessfull <a href=\"forgot.jsp\">Retry</a>");
             String delete = "delete from confirmation where UID = " + session.getAttribute("forgot_id") + ";";
             stmt.executeUpdate(delete);
            out.print(e);
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
