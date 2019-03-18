<%-- 
    Document   : ConfirmationPage
    Created on : 2 Apr, 2018, 4:31:10 PM
    Author     : sanket
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
            <%
                String UID = request.getParameter("uid");
             String conf = request.getParameter("rand");
            session.setAttribute("forgot_id", UID);
            session.setAttribute("conf_string", conf);
            response.sendRedirect("ResetPassword.jsp");
            %>
</html>
