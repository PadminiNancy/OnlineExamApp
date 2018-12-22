package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class next_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(3);
    _jspx_dependants.add("/template/header.html");
    _jspx_dependants.add("/template/menu.html");
    _jspx_dependants.add("/template/footer.html");
  }

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html:html lang=\"true\">\n");
      out.write("    <head>\n");
      out.write("         <title>Register Page</title>\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("    #trans{ background: transparent url(images/main.png);\n");
      out.write("            color: #666666;\n");
      out.write("            border-radius:20px;\n");
      out.write("\n");
      out.write("          }\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("<body background=\"images/back.jpg\">\n");
      out.write("     <table  id=\"trans\" width=\"1000px\" align=\"center\">\n");
      out.write("\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" >");
      out.write("<!--\n");
      out.write("To change this template, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            .head{color:#990033;\n");
      out.write("                  font-size: 50px;\n");
      out.write("                  font-style: oblique;\n");
      out.write("                  \n");
      out.write("                 }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <div id=\"header\">\n");
      out.write("        <table width=\"1000px\" class=\"head\"  style=\"opacity:1.0;filter:alpha(opacity=100);\">\n");
      out.write("        <tr>\n");
      out.write("            <td width=\"200px\"> <img src=\"images/logoo.jpg\"/></td>\n");
      out.write("            <td width=\"800px\" class=\"head\" align=\"center\"> Online Examination System</td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</html>");
      out.write("</td>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" style=\"border-radius:10px; border-shadow:100px;\">");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("    <title></title>\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("  ul {list-style: none;padding: 0px;margin: 0px;}\n");
      out.write("  ul li {display: block;position: relative;float: left;border:1px solid #000;width: 250px}\n");
      out.write("  li ul {display: none;}\n");
      out.write("  ul li a {display: block;background: #000;opacity:0.4;padding: 5px 10px 5px 10px;text-decoration: none;\n");
      out.write("           white-space: nowrap;color: #fff;}\n");
      out.write("  ul li a:hover {background: #f00;}\n");
      out.write("  li:hover ul {display: block; position: absolute;}\n");
      out.write("  li:hover li {float: none;}\n");
      out.write("  li:hover a {background: #f00;}\n");
      out.write("  li:hover li a:hover {background: #000;}\n");
      out.write("  #drop-nav li ul li {border-top: 0px;}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<ul id=\"drop-nav\">\n");
      out.write("  <li><a href=\"home.jsp\">Home</a></li>\n");
      out.write("  \n");
      out.write("  <li><a href=\"#\">Create Account</a>\n");
      out.write("    <ul>\n");
      out.write("      <li><a href=\"register.jsp\">User</a></li>\n");
      out.write("      <li><a href=\"adminReg1.jsp\">Admin</a></li>\n");
      out.write("     \n");
      out.write("    </ul>\n");
      out.write("  </li>\n");
      out.write("  <li><a href=\"#\">Contact</a>\n");
      out.write("    <ul>\n");
      out.write("      <li><a href=\"#\">General Inquiries</a></li>\n");
      out.write("      <li><a href=\"#\">Ask me a Question</a></li>\n");
      out.write("    </ul>\n");
      out.write("  </li>\n");
      out.write("  <li><a href=\"#\">Login</a>\n");
      out.write("    <ul>\n");
      out.write("      <li><a href=\"login.jsp\">User</a></li>\n");
      out.write("      <li><a href=\"adminlogin.jsp\">Admin</a></li>\n");
      out.write("    </ul>\n");
      out.write("  </li>\n");
      out.write("</ul>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("</td>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                <tr> <td>\n");
      out.write("            <table align=\"center\" style=\"color:#339966; height: 300px\">\n");
      out.write("     <h1> <center>data saved!!!!!</center></h1>\n");
      out.write("     <br>\n");
      out.write("    <center> <a href=\"adminhome.jsp\"> Back </a></center>\n");
      out.write("           </td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("       \n");
      out.write("        <tr><td> ");
      out.write("<!--\n");
      out.write("To change this template, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("      <style>\n");
      out.write("          .foot{\n");
      out.write("                color:#993366;\n");
      out.write("                font-size:x-large;\n");
      out.write("               }\n");
      out.write("      </style>\n");
      out.write("  </head>\n");
      out.write("  <div id=\"footer\">\n");
      out.write("      <table width=\"1000px\">\n");
      out.write("          <tr>\n");
      out.write("              <td class=\"foot\" align=\"center\"> Developed By EDS</td>\n");
      out.write("          </tr>\n");
      out.write("      </table>\n");
      out.write("  </div>\n");
      out.write("</html>\n");
      out.write("</td></tr>\n");
      out.write("            </tbody>\n");
      out.write("          </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
