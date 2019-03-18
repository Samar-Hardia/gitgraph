<%-- 
    Document   : Login
    Created on : 19 Mar, 2018, 9:25:15 AM
    Author     : sanket
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
     <%@include file="navbar_wlo.html" %>
       <body>
           <body class="bg-dark">
               <div class="content-wrapper">
          <div id="mainContent">
            <div class="container-fluid">
        <div class="container">
            <%@include file="Language.jsp"%> 
          <div class="card card-login mx-auto mt-5">
            <div class="card-header">Login</div>
            <div class="card-body">
                <form method="POST" action="Login.jsp">
                <div class="form-group">
                  <label for="exampleInputEmail1">e-mail</label>
                  <input class="form-control" id="Uname" name="Uname" type="text" aria-describedby="emailHelp" placeholder="Enter email">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input class="form-control" id="password" name="password" type="password" placeholder="Password">
                </div>
               
                 <input type="submit" value="Login" class="btn btn-primary btn-block"/>
              </form>
              <div class="text-center">
                <a class="d-block small mt-3" href="SignInForm.jsp">Register an Account</a>
                <a class="d-block small" href="forgot.jsp">Forgot Password?</a>
              </div>
            </div>
          </div>
        </div>
        <%
         try{  
         Class.forName("com.mysql.jdbc.Driver"); 
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plotters","root","root");
   String email = request.getParameter("Uname");
   String pass = request.getParameter("password");
     if((email!=null)&&(pass!=null)){
   Statement stmt = con.createStatement();
   String sql = "SELECT * FROM users WHERE email =\"" + email + "\" AND password = \"" + pass + "\"";
   ResultSet res = stmt.executeQuery(sql);
  
   if(res.next()){
        res.first();
        if(res.getInt("active")==1){
       session.setAttribute("UID",res.getInt("UID"));
       response.sendRedirect("index.jsp");
        }else{
       out.print("<script>alert('confirm mail first');</script>");        }
   }else{
        out.print("<script>alert('invalid username or password');</script>");
   }
         }
         }
                    catch(Exception e){
                   out.print(e);
                    }  
        %>
            </div>
          </div>
          </div>
        </body>
            <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/sb-admin.min.js"></script>
</html>