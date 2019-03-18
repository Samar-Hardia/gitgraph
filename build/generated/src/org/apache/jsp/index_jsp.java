package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/navbar_wli.jsp");
    _jspx_dependants.add("/navbar_wlo.html");
    _jspx_dependants.add("/Language.jsp");
  }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    ");
 if(session.getAttribute("UID")!=null){
       
    
      out.write("\n");
      out.write("   ");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("   \n");
      out.write("    <script src=\"js/sb-admin.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\" integrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\" crossorigin=\"anonymous\"></script>\n");
      out.write("  <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <title>Plotters- an easy way to graphs and charts</title>\n");
      out.write("  <link href=\"css/main.css\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("<body class=\"fixed-nav sticky-footer bg-dark\" id=\"page-top\">\n");
      out.write("  <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark fixed-top\" id=\"mainNav\">\n");
      out.write("    <a class=\"navbar-brand notranslate\" href=\"index.jsp\" style=\"font-family:cursive;font-size:30px;\">Plotters</a>\n");
      out.write("    <button class=\"navbar-toggler navbar-toggler-right\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("      <ul class=\"navbar-nav navbar-sidenav\" id=\"exampleAccordion\">\n");
      out.write("       <li class=\"nav-item\" data-toggle=\"tooltip\" data-placement=\"right\" title=\"Charts\">\n");
      out.write("          <a class=\"nav-link\" href=\"charts.jsp\" id=\"charts\">\n");
      out.write("            <i class=\"fa fa-fw fa-area-chart\"></i>\n");
      out.write("            <span class=\"nav-link-text\">Charts</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("       \n");
      out.write("        <li class=\"nav-item\" data-toggle=\"tooltip\" data-placement=\"right\" title=\"About\">\n");
      out.write("            <a class=\"nav-link\" href=\"about.jsp\" id=\"about\">\n");
      out.write("              <i class=\"fa fa-fw fa-table\"></i>\n");
      out.write("              <span class=\"nav-link-text\">About</span>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("                  </li>\n");
      out.write("       \n");
      out.write("         \n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"navbar-nav sidenav-toggler\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link text-center\" id=\"sidenavToggler\">\n");
      out.write("            <i class=\"fa fa-fw fa-angle-left\"></i>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"navbar-nav ml-auto\">\n");
      out.write("      <li class=\"dropdown\">\n");
      out.write("            <a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                <i class=\"fa fa-fw fa-circle-o-notch\" data-toggle=\"dropdown\"></i>Profile</a>\n");
      out.write("                <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("            <li><a href=\"ChangePassword.jsp\" class=\"nav-link1\">Change Password</a></li>\n");
      out.write("            <li><a href=\"#\" class=\"nav-link1\">Subscriptions</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>   \n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a href=\"LogOut.jsp\" class=\"nav-link\">\n");
      out.write("                <i class=\"fa fa-fw fa-sign-out\"></i>Sign Out</a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </nav>\n");
      out.write("</body>\n");
      out.write("<style>\n");
      out.write("    .nav-link1{\n");
      out.write("        color: #868e96;\n");
      out.write("         padding: 1em;\n");
      out.write("    }\n");
      out.write("    </style>\n");
      out.write("</html>");
      out.write("\n");
      out.write("               ");

               }
               else{
              
               
      out.write("\n");
      out.write("              ");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <script src=\"js/sb-admin.min.js\"></script>\n");
      out.write("  <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <title>Plotters- an easy way to graphs and charts</title>\n");
      out.write("  <link href=\"css/main.css\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("<body class=\"fixed-nav sticky-footer bg-dark\" id=\"page-top\">\n");
      out.write("  <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark fixed-top\" id=\"mainNav\">\n");
      out.write("    <a class=\"navbar-brand notranslate\" href=\"index.jsp\" style=\"font-family:cursive;font-size:30px;\">Plotters</a>\n");
      out.write("    <button class=\"navbar-toggler navbar-toggler-right\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("      <ul class=\"navbar-nav navbar-sidenav\" id=\"exampleAccordion\">\n");
      out.write("       \n");
      out.write("       <!-- <li class=\"nav-item\" data-toggle=\"tooltip\" data-placement=\"right\" title=\"Charts\">\n");
      out.write("          <a class=\"nav-link\" href=\"#\" id=\"charts\">\n");
      out.write("            <i class=\"fa fa-fw fa-area-chart\"></i>\n");
      out.write("            <span class=\"nav-link-text\">Charts</span>\n");
      out.write("          </a>\n");
      out.write("        </li>-->\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <li class=\"nav-item\" data-toggle=\"tooltip\" data-placement=\"right\" title=\"About\">\n");
      out.write("            <a class=\"nav-link\" href=\"about.jsp\" id=\"about\">\n");
      out.write("              <i class=\"fa fa-fw fa-table\"></i>\n");
      out.write("              <span class=\"nav-link-text\">About</span>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("        </li>\n");
      out.write("       \n");
      out.write("         \n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"navbar-nav sidenav-toggler\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link text-center\" id=\"sidenavToggler\">\n");
      out.write("            <i class=\"fa fa-fw fa-angle-left\"></i>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"navbar-nav ml-auto\">\n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("          \n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a href=\"SignInForm.jsp\" class=\"nav-link\">\n");
      out.write("                <i class=\"fa fa-fw fa-sign-in\"></i>Sign in</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a href=\"Login.jsp\" class=\"nav-link\">\n");
      out.write("            <i class=\"fa fa-fw fa-sign-language\"></i>Log in</a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </nav>\n");
      out.write("       \n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
      out.write("   \n");
      out.write("                ");
}
      out.write("\n");
      out.write("    <body>\n");
      out.write("         <div class=\"content-wrapper\">\n");
      out.write("          <div id=\"mainContent\">\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("      ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("   <div>\n");
      out.write("            <div id=\"google_translate_element\"></div><script type=\"text/javascript\">\n");
      out.write("function googleTranslateElementInit() {\n");
      out.write("  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');\n");
      out.write("}\n");
      out.write("</script><script type=\"text/javascript\" src=\"//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit\"></script>\n");
      out.write("          <style type=\"text/css\">iframe.goog-te-banner-frame{ display: none !important;}</style>\n");
      out.write("<style type=\"text/css\">body {position: static !important; top:0px !important;}</style>\n");
      out.write("</html>\n");
      out.write(" \n");
      out.write("      \n");
      out.write("        </div>\n");
      out.write("<div class=\"row\">\n");
      out.write("            <div class=\"col-lg-4\" id=\"line_chart_trigger\">\n");
      out.write("            <a href=\"Line.jsp\" data-target=\"line_chart\">\n");
      out.write("              \t\t<div class=\"container\">\n");
      out.write("  <img src=\"img/line.png\" class=\"img-block\">\n");
      out.write("  <div class=\"overlay\">\n");
      out.write("    <div class=\"text\">Create line chart</div>\n");
      out.write("  </div>\n");
      out.write("  </a>\n");
      out.write("</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-lg-4\" id=\"pie_chart_trigger\">\n");
      out.write("            <a href=\"PieChart.jsp\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("              <img class=\"img-block\" src=\"img/pie.png\">\n");
      out.write("              <div class=\"overlay\">\n");
      out.write("    <div class=\"text\">Create Pie chart</div>\n");
      out.write("              </a>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("           </div>\n");
      out.write("           <div class=\"col-lg-4\" id=\"bar_chart_trigger\">\n");
      out.write("              <a href=\"Bar.jsp\" data-target=\"bar_chart\">\n");
      out.write("              <div class=\"container\">\n");
      out.write("                <img class=\"img-block\" src=\"img/bar.png\">\n");
      out.write("                <div class=\"overlay\">\n");
      out.write("      <div class=\"text\">Create Bar chart</div>\n");
      out.write("                </a>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("          </div>\n");
      out.write("  <div class=\"row\">\n");
      out.write("    <div class=\"col-lg-4\" id=\"dualaxis_chart_trigger\">\n");
      out.write("    <a href=\"TimeSeries.jsp\" data-target=\"dualaxis_chart\">\n");
      out.write("          <div class=\"container\">\n");
      out.write("<img src=\"img/time_series.png\" class=\"img-block\">\n");
      out.write("<div class=\"overlay\">\n");
      out.write("<div class=\"text\">Create Time Series chart</div>\n");
      out.write("</div>\n");
      out.write("</a>\n");
      out.write("</div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-lg-4 blocks\" id=\"xy_chart_trigger\">\n");
      out.write("    <a href=\"XY-Chart.jsp\" data-target=\"xy_chart\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <img class=\"img-block\" src=\"img/xy.png\">\n");
      out.write("      <div class=\"overlay\">\n");
      out.write("<div class=\"text\">Create XY chart</div>\n");
      out.write("      </a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("   </div>\n");
      out.write("   <div class=\"col-lg-4\" id=\"bubble_chart_trigger\">\n");
      out.write("      <a href=\"Bubble.jsp\" data-target=\"bubble_chart\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <img class=\"img-block\" src=\"img/bubble.png\">\n");
      out.write("        <div class=\"overlay\">\n");
      out.write("<div class=\"text\">Create Bubble chart</div>\n");
      out.write("        </a>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("  </div>\n");
      out.write("<div class=\"row\">\n");
      out.write("  <div class=\"col-lg-4\" id=\"timeseries_chart_trigger\">\n");
      out.write("  <a href=\"j/diagramo.com/editor/editor.jsp\" data-target=\"timeseries_chart\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("<img src=\"img/uml.png\" class=\"img-block\">\n");
      out.write("<div class=\"overlay\">\n");
      out.write("<div class=\"text\">Create UML</div>\n");
      out.write("</div>\n");
      out.write("</a>\n");
      out.write("</div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"col-lg-4\" id=\"area_chart_trigger\">\n");
      out.write("  <a href=\"#\" data-target=\"area_chart\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <img class=\"img-block\" src=\"img/area.png\">\n");
      out.write("    <div class=\"overlay\">\n");
      out.write("<div class=\"text\">Create Area chart</div>\n");
      out.write("    </a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write(" </div>\n");
      out.write(" <div class=\"col-lg-4\" id=\"gantt_chart_trigger\">\n");
      out.write("    <a href=\"#\" data-target=\"gantt_chart\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <img class=\"img-block\" src=\"img/gantt.png\">\n");
      out.write("      <div class=\"overlay\">\n");
      out.write("<div class=\"text\">Create Gantt chart</div>\n");
      out.write("      </a>\n");
      out.write("</div>\n");
      out.write("        \n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("  </div>\n");
      out.write("          </div>\n");
      out.write("         </div>\n");
      out.write("    <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <script src=\"js/sb-admin.min.js\"></script>\n");
      out.write("</body>\n");
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
