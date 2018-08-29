<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <%@include file="navbar_wli.jsp"%>
      <div class="content-wrapper">
          <div id="mainContent">
            <div class="container-fluid">
        <div class="container">
             <%@include file="Language.jsp"%> 
             <form method="POST" action="search.jsp" align="right">
              <div class="form-group">
                                <label for="usr">Search :</label>
                                <input type="text" id="usr" name="search">
                               <button type="submit">
                     <i class="fa fa-search"></i>
                        </button>
                              </div>
             </form>
     <%
         try{
         Class.forName("com.mysql.jdbc.Driver"); 
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plotters","root","root");
    Statement stmt = con.createStatement();
    String search = request.getParameter("search");
    //out.print("<script>alert(\"" +search +"\")</script>");
   String sql =  "SELECT * from graph where UID = " + session.getAttribute("UID") +  " and title like \"%" + search +"%\"";
   ResultSet rs = stmt.executeQuery(sql);
   out.print("<table class=\"table table-bordered\">");
    out.print("<tr><th>Title</th><th>Download Link</th><th>Remove</th></tr>");
   while(rs.next()){
       out.print("<tr>");
   int gid = rs.getInt("graph_id");
   session.setAttribute("gid", gid);
   out.print("<td>" + rs.getString("title") + "</td>");
   out.print("<td><a href=\"getimage1.jsp?your_id=" + gid  + "\" target=\"_blank\" id=\"preveiw\" value=\"" + gid + "\">" + "download" + "</a></td>");
   out.print("<td><a href=\"deleteImage.jsp?your_id=" + gid  + "\"  id=\"preveiw\" value=\"" + gid + "\">" + "delete" + "</a></td>");
       out.print("</tr>");
   }
con.close();
}catch(Exception e){
out.print(e);
}
   %>
        </div>
            </div>
          </div>
      </div>
           <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/sb-admin.min.js"></script>
</html>
