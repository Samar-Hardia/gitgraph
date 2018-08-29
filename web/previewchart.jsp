<%-- 
    Document   : previewchart
    Created on : 20 Mar, 2018, 10:51:12 PM
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
                <%}
                int flag = 1;
              %>
              <link rel="stylesheet" href="css/inStyle.css">
              <body>
        <div class="content-wrapper">
          <div id="mainContent">
            <div class="container-fluid">
        <div class="container">
             <%@include file="Language.jsp"%> 
        <ul class="list-inline">
            <li class="list-inline-item"><a href="<%=session.getAttribute("page") %>" class="top_bar" id="designChart">Design Chart</a></li>
        <li class="list-inline-item"><a href="#" class="top_bar" id="preview">Preview Chart</a></li>
        <li class="list-inline-item"><a href="#" class="top_bar" id="saveshare">Save and Share</a></li>
        </ul>
        <hr>
        
                <div id="box">
                    <img src="getimage.jsp?your_id=12" width="600" height="400" />
                </div>
        </div>
            </div>
          </div>
        </div>
            <% session.removeAttribute("page");%>
              </body>
</html>
