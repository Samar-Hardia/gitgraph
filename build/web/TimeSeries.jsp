<%-- 
    Document   : PieChart
    Created on : 20 Mar, 2018, 1:49:47 AM
    Author     : sanket
--%>
<%@page import="org.jfree.data.time.TimeSeriesCollection"%>
<%@page import="org.jfree.data.time.Second"%>
<%@page import="org.jfree.data.time.TimeSeries"%>
<%@page import="jxl.Sheet"%>
<%@page import="jxl.Workbook"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.util.Random"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="javafx.scene.paint.Color"%>
<%@page import="java.awt.Paint"%>
<%@page import="java.lang.String"%>
<%@page import="org.jfree.chart.*"%>
<%@page import="org.jfree.data.general.*"%>
<%@page import="org.jfree.ui.*"%>
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
           
              %>
     
    <head>
            <link rel="stylesheet" href="css/inStyle.css">
    </head>
    <body>
        <div class="content-wrapper">
          <div id="mainContent">
            <div class="container-fluid">
        <div class="container">
             <%@include file="Language.jsp"%> 
        <ul class="list-inline">
        <li class="list-inline-item"><a href="#" class="top_bar" id="designChart">Design Chart</a></li>
        <li class="list-inline-item"><a href="previewchart.jsp" class="top_bar" id="preview">Preview Chart</a></li>
        <li class="list-inline-item"><a href="#" class="top_bar" id="saveshare">Save and Share</a></li>
        </ul>
        <hr>
        
                <div id="box">
                                <center><h3>Time Series</h3></center>
                                
                                <br>
                                <br>
                                  <form method="POST" action="TimeSeries.jsp">
                                      <div class="form-group">
                                    <input type="hidden" name="flag1" value="0" id="flag">
                                     </div>
                          <div class="form-group">
                                <label for="usr">Graph Title:</label>
                                <input type="text" class="form-control" id="usr" name="title">
                              </div>
                             <div class="form-group">
                                <label for="usr">Starting time:</label>
                                <input type="text" class="form-control" id="usr" name="starting_time">
                              </div>
                              <div class="form-group">
                                <label for="usr">Randomness:</label>
                                <input type="text" class="form-control" id="usr" name="randomness">
                              </div>       
                                      
                                      <div class="form-group" style="padding-top: 100px;">
                             <input type="submit" class="btn btn-primary btn-block"  value="Create Graph">
                                       </div>
                                </form>
                                                </div>
                        </div>
                        </div>         
        </div> 
          
        <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/sb-admin.min.js"></script>
        </body>
    
         <%
             try{
                 session.setAttribute("page", "TimeSeries.jsp");
      String title = request.getParameter("title");          
      if((title!=null)){         
      String Starting_value = request.getParameter("starting_time");
      String randomness = request.getParameter("randomness");
    Double starting = Double.parseDouble(Starting_value);
    Double random = Double.parseDouble(randomness);                  
    %>
        <style type="text/css">
        .article { width: 100%; background-color: #F9F9F9; font-family: Arial, "Bitstream Vera Sans" ,Helvetica,Verdana,sans-serif; color: #333; margin-top: 3px; }
        .article td, table.article th { border-top-color: white; border-bottom: 1px solid #DFDFDF; color: #555; }
        .article th { text-shadow: rgba(255, 255, 255, 0.796875) 0px 1px 0px; font-family: Arial, "Bitstream Vera Sans" ,Helvetica,Verdana,sans-serif; font-weight: bold; padding: 7px 7px 8px; text-align: left; line-height: 1.3em; font-size: 12px; background: #E3F2D4; border-right: 1px solid #DFDFDF; }
        .article td { font-size: 12px; padding: 7px 7px 8px; vertical-align: top; border-right: 1px solid #DFDFDF; }
    </style>
    <%
        
         int width = 640;  
      int height = 480;
       TimeSeries series = new TimeSeries(title);
        Second current = new Second( );        
        for (double i = 0; i < 4000; i=i+random) {
         
         try {
            starting = starting + Math.random( ) - 0.5;                 
            series.add(current, new Double( starting ) );                 
            current = ( Second ) current.next( ); 
         } catch ( SeriesException e ) {
            System.err.println("Error adding to series");
         }
      }
        TimeSeriesCollection col = new TimeSeriesCollection(series);
        
      JFreeChart chart;
     chart = ChartFactory.createTimeSeriesChart(             
         title, 
         "Seconds",              
         "Value",              
         col,             
         false,              
         false,              
         false);
      File pieChart = new File( "D:\\PieChart.jpeg" ); 
 ChartUtilities.saveChartAsJPEG( pieChart , chart , width , height );
 File imgfile = new File("D:\\PieChart.jpeg");
 Class.forName("com.mysql.jdbc.Driver"); 
 Random r = new Random();
 int g = r.nextInt(20000)+30000;
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plotters","root","root");
 FileInputStream fin = new FileInputStream(imgfile);
 PreparedStatement pre = con.prepareStatement("insert into graph (graph_id,graph_type,UID,graph_img,title) values(?,?,?,?,?)");
     pre.setInt(1, g);
     session.setAttribute("gid", g);
 pre.setString(2, "Time Series");
 if(session.getAttribute("UID")!=null){
 String a = session.getAttribute("UID").toString();
 pre.setInt(3, Integer.parseInt(a) );
 }else{
  pre.setInt(3, 1 );
 }
 pre.setBinaryStream(4,(InputStream)fin,(int)imgfile.length());
  pre.setString(5, request.getParameter("title"));
		   pre.executeUpdate();
                    pre.close();
		   con.close(); 
                   response.sendRedirect("previewchart.jsp");
                   }
}catch(Exception e){
 out.print(e);
}
        %>
      
</html>
