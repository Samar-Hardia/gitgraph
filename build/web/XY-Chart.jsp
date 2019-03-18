<%-- 
    Document   : PieChart
    Created on : 20 Mar, 2018, 1:49:47 AM
    Author     : sanket
--%>
<%@page import="org.jfree.data.xy.XYSeriesCollection"%>
<%@page import="org.jfree.data.xy.XYSeries"%>
<%@page import="jxl.Sheet"%>
<%@page import="jxl.Workbook"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.jfree.data.category.DefaultCategoryDataset"%>
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
                                <center><h3>XY-Chart</h3></center>
                                 <form method="POST" action="XY-Chart.jsp" enctype="multipart/form-data">
                                    
                                                       <!-- <div class="form-group">
                                                                <label>Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                                <label class="radio-inline"><input type="radio" name="type" value="Normal">Normal</label>
                                                                <label class="radio-inline"><input type="radio" name="type" value="3D">3D</label>
                 
                                                        </div>
                                                        <div class="form-group">
                                                                        <label for="usr">Background color:</label>
                                                                        <input type="text" class="form-control" id="usr" name="bgcolor">
                                                                      </div>
                                                                      <div class="form-group">
                                                                                <label for="sel1">Transparency:</label>
                                                                                <select class="form-control" id="sel1" name="transparency">
                                                                                    <option value="yes">Yes</option>
                                                                                    <option value="no">No</option>
                                                                                </select>
                                                                              </div>-->
                                                                              
                                <div class="input-group mb-3">
                            <div class="input-group-prepend">
                              <span class="input-group-text">Upload</span>
                            </div>
                            <div class="custom-file">
                              <input type="file" class="custom-file-input" id="inputGroupFile01" name="file">
                              <label class="custom-file-label" for="inputGroupFile01">import Excel-file</label>
                            </div>
                          </div>
                           <input type="submit"  value="UploadFile">
                                </form>
                                  <form method="POST" action="XY-Chart.jsp">
                                                        <div class="form-group">
                                    <input type="hidden" name="flag1" value="0" id="flag">
                                     </div>
                          <div class="form-group">
                                <label for="usr">Graph Title:</label>
                                <input type="text" class="form-control" id="usr" name="title">
                              </div>                          
                                      <div class="form-group">
                                   
                                      <h4>Data Set:</h4>
                                       <div class="form-group">
                                <label for="usr">Group Name:</label>
                                <input type="text" class="form-control" id="usr" name="group_name">
                              </div>        
                                      <div class="form-group">
                                         <input type="button" class="btn-success" class="btn-primary" value="Add row" onclick="insertRow()">&nbsp;&nbsp;&nbsp;&nbsp;
                                          <input type="button" class="btn-danger" class="btn-primary" value="Delete row" onclick="deleteRow1()">
                                          </div>
                                      <table id="divTable" class="table-bordered article" width="100%">
                                            <tr>
                                                <th>S No.</th>
                                                <th>X</th>
                                                <th>Y</th> 
                                            </tr>
                                      </table>
                                      <div class="form-group" style="padding-top: 100px;">
                             <input type="submit" class="btn btn-primary btn-block"  value="Create Graph">
                                       </div>
                                </form>
                                                </div>
                        </div>
                        </div>         
        </div> 
           <script>
              
          var flag = 2;
        document.getElementById("flag").value =  flag-1;
        function insertRow(){
            var table = document.getElementById("divTable");
            var row1 = table.insertRow(flag-1);
            var row1col1 = row1.insertCell(0);
           row1col1.innerHTML = flag-1;
            var row1col1 = row1.insertCell(1);
          row1col1.innerHTML = '<input type="text" name="itemName' + (flag-1) + '\" id="itemName' + (flag-1) + '\">';
           var row1col2 = row1.insertCell(2);
            row1col2.innerHTML = '<input type="text" name="itemValue' + (flag-1) + '\" id="itemValue' + (flag-1) + '\">';
           flag = flag + 1;
           document.getElementById("flag").value =  flag-1;
           
        }
        function deleteRow1(){
            document.getElementById("divTable").deleteRow(flag-2);
            flag = flag -1;
           document.getElementById("flag").value =  flag-1;
            
        }
        </script>
        <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/sb-admin.min.js"></script>
        </body>
    
         <%
             try{
                 session.setAttribute("page", "XY-Chart.jsp");
      String title = request.getParameter("title");
      int flag;
      String group = request.getParameter("group_name");
      String flag1 = request.getParameter("flag1");
      if((title!=null)&&(flag1!=null)){
          flag = Integer.parseInt(flag1);
      out.print(flag);
      String bgcolor = request.getParameter("bgcolor");
      String transparency = request.getParameter("transparency");
      String type = request.getParameter("type");
      String x_axis = request.getParameter("x-axis");
      String y_axis = request.getParameter("y-axis");
       String[] itemName= new String[100];
       String[] itemValue= new String[100];
   
       
         for(int i=0;i<flag;i++){
           String temp  = "itemName" + Integer.toString(i+1);
           String temp1  = "itemValue" + Integer.toString(i+1);
           itemName[i] = request.getParameter(temp);
           itemValue[i] = request.getParameter(temp1);
       }

    %>
        <style type="text/css">
        .article { width: 100%; background-color: #F9F9F9; font-family: Arial, "Bitstream Vera Sans" ,Helvetica,Verdana,sans-serif; color: #333; margin-top: 3px; }
        .article td, table.article th { border-top-color: white; border-bottom: 1px solid #DFDFDF; color: #555; }
        .article th { text-shadow: rgba(255, 255, 255, 0.796875) 0px 1px 0px; font-family: Arial, "Bitstream Vera Sans" ,Helvetica,Verdana,sans-serif; font-weight: bold; padding: 7px 7px 8px; text-align: left; line-height: 1.3em; font-size: 12px; background: #E3F2D4; border-right: 1px solid #DFDFDF; }
        .article td { font-size: 12px; padding: 7px 7px 8px; vertical-align: top; border-right: 1px solid #DFDFDF; }
    </style>
    <%
         XYSeries firefox = new XYSeries( group );
        for(int j=0;j<flag-1;j++){
        String tem = itemName[j]+ "";
        String tem1 = itemValue[j]+ "";
         firefox.add(Float.parseFloat(tem1),Float.parseFloat(tem1));
        }
        XYSeriesCollection dataset = new XYSeriesCollection( );
        dataset.addSeries( firefox );
         int width = 640;  
      int height = 480;
      JFreeChart chart = ChartFactory.createXYLineChart(title, x_axis,y_axis,dataset);
      File pieChart = new File( "D:\\LineChart.jpeg" ); 
 ChartUtilities.saveChartAsJPEG( pieChart , chart , width , height );
 File imgfile = new File("D:\\LineChart.jpeg");
 Class.forName("com.mysql.jdbc.Driver"); 
 Random r = new Random();
 int g = r.nextInt(20000)+30000;
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plotters","root","root");
 FileInputStream fin = new FileInputStream(imgfile);
 PreparedStatement pre = con.prepareStatement("insert into graph (graph_id,graph_type,UID,graph_img,title) values(?,?,?,?,?)");
     pre.setInt(1, g);
     session.setAttribute("gid", g);
 pre.setString(2, "XY");
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
         <%
            try{
                 String filePath = "d:/new/";
                 int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
    File file ;
        if(request.getContentType()!=null){
            DiskFileItemFactory factory = new DiskFileItemFactory();
      factory.setSizeThreshold(maxMemSize);
      factory.setRepository(new File("c:\\temp"));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax( maxFileSize );
       List fileItems = upload.parseRequest(request);
         Iterator i = fileItems.iterator();
         out.println("<html>");
         out.println("<body>");
         while ( i.hasNext () ) 
         {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () )  {
                String fieldName = fi.getFieldName();
                String fileName = fi.getName();
                boolean isInMemory = fi.isInMemory();
                long sizeInBytes = fi.getSize();
                file = new File( filePath + "on1.xls") ;
                fi.write( file ) ;
                String FilePath = filePath + "on1.xls";
		FileInputStream fs = new FileInputStream(FilePath);
		Workbook wb = Workbook.getWorkbook(fs);
                    Sheet sh = wb.getSheet("Sheet1");
                    int totalNoOfCols = sh.getColumns();
                    int totalNoOfRows = sh.getRows();
                    if(totalNoOfCols==2){
                        for(int j=0;j<totalNoOfRows;j++){
                        out.print("<script>insertRow();</script>");
                        }
                        for (int row = 1; row <= totalNoOfRows; row++) {		
                        String s = sh.getCell(0,row-1).getContents();
                        String s1 = sh.getCell(1,row-1).getContents();
                       out.print("<script>document.getElementById(\"itemName" + row + "\").value=\"" + s + "\";</script>");
                        out.print("<script>document.getElementById(\"itemValue" + row + "\").value=\"" + s1 + "\";</script>");
                       }
                        file.delete();
                    }else{
                    out.print("<script>alert(\"invalid excel file\");</script>");
                    }
           }
         }
        } 
            }catch(Exception e){
           out.print("<script>alert(\"invalid excel file\");</script>");
            }
        %>
</html>
