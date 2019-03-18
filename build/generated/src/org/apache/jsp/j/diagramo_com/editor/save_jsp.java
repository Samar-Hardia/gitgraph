package org.apache.jsp.j.diagramo_com.editor;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.InputStream;
import java.io.FileInputStream;
import java.sql.*;
import java.util.Random;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItem;
import java.util.Iterator;
import java.util.List;
import java.io.File;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;

public final class save_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       ");

          try{
          File imgfile = new File("D:\\mypainting.jpeg");
 Class.forName("com.mysql.jdbc.Driver"); 
 Random r = new Random();
 int g = r.nextInt(20000)+30000;
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plotters","root","root");
 FileInputStream fin = new FileInputStream(imgfile);
 PreparedStatement pre = con.prepareStatement("insert into graph (graph_id,graph_type,UID,graph_img,title) values(?,?,?,?,?)");
     pre.setInt(1, g);
     session.setAttribute("gid", g);
 pre.setString(2, "UML");
 if(session.getAttribute("UID")!=null){
 String a = session.getAttribute("UID").toString();
 pre.setInt(3, Integer.parseInt(a) );
 }else{
  pre.setInt(3, 1 );
 }
 pre.setBinaryStream(4,(InputStream)fin,(int)imgfile.length());
  pre.setString(5, "MyUml");
		   pre.executeUpdate();
                    pre.close();
		   con.close(); 
                   response.sendRedirect("http://localhost:8084/Plotit/j/diagramo.com/editor/editor.jsp");
                   
          }catch(Exception e){
          
          }
       
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
