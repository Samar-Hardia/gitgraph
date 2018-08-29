<%-- 
    Document   : ResetSuccess
    Created on : 4 Apr, 2018, 12:22:37 AM
    Author     : sanket
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <%@include file="navbar_wlo.html" %>
      <div class="content-wrapper">
          <div id="mainContent">
            <div class="container-fluid">
        <div id="content">
             <%@include file="Language.jsp"%> 
      <%
         out.println("Reset successful <a href=\"Login.jsp\">Login</a>");
      %>
        </div>
            </div>
          </div>
      </div>
       <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/sb-admin.min.js"></script>
</html>
