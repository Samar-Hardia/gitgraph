<%-- 
    Document   : Confirmation
    Created on : 1 Apr, 2018, 3:57:58 PM
    Author     : sanket
--%>

<%@page import="java.sql.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.*"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <%@include file="navbar_wlo.html" %>
       <body>
           <body class="bg-dark">
               <div class="content-wrapper">
          <div id="mainContent">
            <div class="container-fluid">
        <div class="container"> 
           
          <div class="card card-login mx-auto mt-5">
            <div class="card-header">Login</div>
            <div class="card-body">
                <form method="POST" action="forgot.jsp">
                <div class="form-group">
                  <label for="exampleInputEmail1">e-mail</label>
                  <input class="form-control" id="email" name="email" type="text" aria-describedby="emailHelp" placeholder="Enter email">
                </div>
                    </div>
               
                 <input type="submit" value="Send Reset Link" class="btn btn-primary btn-block"/>
              </form>
            </div>
        </div>
            </div>
          </div>
               </div>
  <%
      try{
     String USER_NAME = "ways2plot";  // GMail user name (just the part before "@gmail.com")
     String PASSWORD = "Sanket@2018"; // GMail password
       String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
      String mail = request.getParameter("email");
       String RECIPIENT = mail;
      int count = 13;
      StringBuilder builder = new StringBuilder();
while (count-- != 0) {
int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
builder.append(ALPHA_NUMERIC_STRING.charAt(character));
}
String random = builder.toString();
         Class.forName("com.mysql.jdbc.Driver"); 
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plotters","root","root");
   String sql = "select UID from users where email =\"" + mail + "\";";
   Statement stm = con.createStatement();
   ResultSet res = stm.executeQuery(sql);
   res.next();
   int j = res.getInt("UID");
   //out.print("<script>alert(\"" + j + "\")</script>");
        String from = USER_NAME;
        String pass = PASSWORD;
        String[] to = { RECIPIENT }; // list of recipient email addresses
        String subject = "Reset password";
        String body = "Click on link to reset password http://localhost:8084/Plotit/ForgotPage.jsp?uid=" + j + "&rand=" + random;
        Properties props = System.getProperties();
         String query = "INSERT INTO forgot SET UID=\"" + j + "\" ,confirm_string= \"" + random  + "\";";
         stm.executeUpdate(query);
        String host = "smtp.gmail.com";
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        props.put("mail.smtp.password", pass);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");

        Session session1 = Session.getDefaultInstance(props);
        MimeMessage message = new MimeMessage(session1);
      
            message.setFrom(new InternetAddress(from));
            InternetAddress[] toAddress = new InternetAddress[to.length];

            // To get the array of addresses
            for( int i = 0; i < to.length; i++ ) {
                toAddress[i] = new InternetAddress(to[i]);
            }

            for( int i = 0; i < toAddress.length; i++) {
                message.addRecipient(Message.RecipientType.TO, toAddress[i]);
            }

            message.setSubject(subject);
            message.setText(body);
            Transport transport = session1.getTransport("smtp");
            transport.connect(host, from, pass);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
            response.sendRedirect("Login.jsp");
        }
        catch (AddressException ae) {
            out.print(ae);
        }
        catch (MessagingException me) {
            out.print(me);
        }
      catch(Exception e){
          out.print(e);
      }
           
  %>
   <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/sb-admin.min.js"></script>
</html>
