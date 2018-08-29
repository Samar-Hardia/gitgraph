<%-- 
    Document   : index
    Created on : 18 Mar, 2018, 6:37:57 PM
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
    <body>
         <div class="content-wrapper">
          <div id="mainContent">
    <div class="container-fluid">
        <div class="row">
      <%@include file="Language.jsp"%> 
      
        </div>
<div class="row">
            <div class="col-lg-4" id="line_chart_trigger">
            <a href="Line.jsp" data-target="line_chart">
              		<div class="container">
  <img src="img/line.png" class="img-block">
  <div class="overlay">
    <div class="text">Create line chart</div>
  </div>
  </a>
</div>
            </div>
            <div class="col-lg-4" id="pie_chart_trigger">
            <a href="PieChart.jsp">
            <div class="container">
              <img class="img-block" src="img/pie.png">
              <div class="overlay">
    <div class="text">Create Pie chart</div>
              </a>
  </div>
  

            </div>
            
           </div>
           <div class="col-lg-4" id="bar_chart_trigger">
              <a href="Bar.jsp" data-target="bar_chart">
              <div class="container">
                <img class="img-block" src="img/bar.png">
                <div class="overlay">
      <div class="text">Create Bar chart</div>
                </a>
    </div>
    </div>
  </div>
          </div>
  <div class="row">
    <div class="col-lg-4" id="dualaxis_chart_trigger">
    <a href="TimeSeries.jsp" data-target="dualaxis_chart">
          <div class="container">
<img src="img/time_series.png" class="img-block">
<div class="overlay">
<div class="text">Create Time Series chart</div>
</div>
</a>
</div>
    </div>
    <div class="col-lg-4 blocks" id="xy_chart_trigger">
    <a href="XY-Chart.jsp" data-target="xy_chart">
    <div class="container">
      <img class="img-block" src="img/xy.png">
      <div class="overlay">
<div class="text">Create XY chart</div>
      </a>
</div>


    </div>
    
   </div>
   <div class="col-lg-4" id="bubble_chart_trigger">
      <a href="Bubble.jsp" data-target="bubble_chart">
      <div class="container">
        <img class="img-block" src="img/bubble.png">
        <div class="overlay">
<div class="text">Create Bubble chart</div>
        </a>
</div>
</div>
</div>
  </div>
<div class="row">
  <div class="col-lg-4" id="timeseries_chart_trigger">
  <a href="j/diagramo.com/editor/editor.jsp" data-target="timeseries_chart">
        <div class="container">
<img src="img/uml.png" class="img-block">
<div class="overlay">
<div class="text">Create UML</div>
</div>
</a>
</div>
  </div>
  <div class="col-lg-4" id="area_chart_trigger">
  <a href="#" data-target="area_chart">
  <div class="container">
    <img class="img-block" src="img/area.png">
    <div class="overlay">
<div class="text">Create Area chart</div>
    </a>
</div>


  </div>
  
 </div>
 <div class="col-lg-4" id="gantt_chart_trigger">
    <a href="#" data-target="gantt_chart">
    <div class="container">
      <img class="img-block" src="img/gantt.png">
      <div class="overlay">
<div class="text">Create Gantt chart</div>
      </a>
</div>
        
</div>
</div>
</div>
  </div>
          </div>
         </div>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/sb-admin.min.js"></script>
</body>
</html>
