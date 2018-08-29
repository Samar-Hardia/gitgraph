<%-- 
    Document   : about
    Created on : 20 Mar, 2018, 2:36:07 PM
    Author     : sanket
--%>

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
         <head>
             <div class="content-wrapper">
          <div id="mainContent">
            <div class="container-fluid">
        <div class="container">
             <%@include file="Language.jsp"%> 
<h1><center>Chart Tool</center></h1>
        <img src="img/bar.png"  class="img-circle"> 
        <img src="img/line.png"  class="img-circle"> 
        <img src="img/pie.png"  class="img-circle"> 
        <img src="img/area.png"  class="img-circle"> 
        <img src="img/bubble.png"  class="img-circle"> 
        <img src="img/dual_axis.png"  class="img-circle">        
        <center>
                <p>
            Charts are a great tool for communicating information visually. On Plotters.com you can design and share your own charts online and for free. We support a number of different chart types like: bar charts, pie charts, line charts, bubble charts and radar plots. 
    </p>
</center>
        </div>
            </div>
          </div>
             </div>
                
<style>
    p{
        padding-left: 200px;
        padding-right: 200px;
        padding-top:40px;
        color: #454e55;
    }
    h1{
        color: #101011;
        font-family: Georgia, 'Times New Roman', Times, serif;
    }
    .img-circle{
 height: 150px;
 width: 150px;
 border-radius: 50%;
 padding: 15px;
}
</style>
<script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/sb-admin.min.js"></script>
</html>
