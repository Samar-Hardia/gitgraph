<%-- 
    Document   : LogOut
    Created on : 20 Mar, 2018, 2:27:50 PM
    Author     : sanket
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%
   session.setAttribute("UID", null);
session.invalidate();
response.sendRedirect("http://localhost:8084/Plotit/");
   %>
</html>
