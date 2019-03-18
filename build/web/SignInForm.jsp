<%-- 
    Document   : SignIn
    Created on : 19 Mar, 2018, 8:44:11 AM
    Author     : sanket
--%>

<%-- 
    Document   : SignIn
    Created on : 19 Mar, 2018, 8:44:11 AM
    Author     : sanket
--%>

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
<body class="bg-dark">
        <div class="container">
          <div class="card card-register mx-auto mt-5">
            <div class="card-header">Register an Account</div>
            <div class="card-body">
                <form method="POST" action="SignIn.jsp" name="regF">
                <div class="form-group">
                  <div class="form-row">
                      <label for="exampleInputName">User name</label>
                      <input class="form-control" id="user_name" type="text" name="Uname" aria-describedby="nameHelp" placeholder="Enter User name">
                  </div>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>&nbsp;&nbsp;&nbsp;<span id="status"></span>
                  <input class="form-control" id="email" type="email" name="email" aria-describedby="emailHelp" placeholder="Enter email">
                </div>
               <div class="form-group">
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
              <div class="text-center" id="login">
                  <a class="d-block small mt-3" href="Login.jsp">Login Page</a>
                <a class="d-block small" href="#">Forgot Password?</a>
              </div>
            </div>
          </div>
        </div>
    </div>
                   
           </div>
          </div>
           </div>
    <script src="vendor/jquery/jquery.min.js"></script>
                <script>
             $('#email').keyup(function(){
                 var email = $('#email').val();
                 $('#status').html('loading.....');
                 if(email!=''){
                     $.post('SignIn.jsp',{email:email},
                     function(data){
                             $('#status').html(data);
                     });
                 }
                 else{
                     $('#status').html('');
                 }
             }); 
                    </script>
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
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/sb-admin.min.js"></script>
</html>
