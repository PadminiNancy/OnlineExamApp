package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(3);
    _jspx_dependants.add("/template/header.html");
    _jspx_dependants.add("/template/menu.html");
    _jspx_dependants.add("/template/footer.html");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_html_html_lang;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_html_form_method_action;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_html_text_property_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_html_errors_property_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_html_submit_value_style_nobody;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_html_html_lang = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_html_form_method_action = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_html_text_property_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_html_errors_property_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_html_submit_value_style_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_html_html_lang.release();
    _jspx_tagPool_html_form_method_action.release();
    _jspx_tagPool_html_text_property_nobody.release();
    _jspx_tagPool_html_errors_property_nobody.release();
    _jspx_tagPool_html_submit_value_style_nobody.release();
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      //  html:html
      org.apache.struts.taglib.html.HtmlTag _jspx_th_html_html_0 = (org.apache.struts.taglib.html.HtmlTag) _jspx_tagPool_html_html_lang.get(org.apache.struts.taglib.html.HtmlTag.class);
      _jspx_th_html_html_0.setPageContext(_jspx_page_context);
      _jspx_th_html_html_0.setParent(null);
      _jspx_th_html_html_0.setLang(true);
      int _jspx_eval_html_html_0 = _jspx_th_html_html_0.doStartTag();
      if (_jspx_eval_html_html_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("    <head>\n");
          out.write("          <title>Login</title>\n");
          out.write("         <style type=\"text/css\">\n");
          out.write("    #trans{ background: transparent url(images/main.png);\n");
          out.write("            color: #666666;\n");
          out.write("            border-radius:20px;\n");
          out.write("\n");
          out.write("\n");
          out.write("    }\n");
          out.write("    a {color: #993333;}\n");
          out.write("    a hover {color:#999966;}\n");
          out.write("    a visited {color:#CC3399;}\n");
          out.write("</style>\n");
          out.write("      ");

                         String msg = request.getParameter("msg");
                          String cmsg = request.getParameter("cmsg");

      
          out.write("\n");
          out.write("    </head>\n");
          out.write("    <body background=\"images/back.jpg\">\n");
          out.write("\n");
          out.write("        ");
          //  html:form
          org.apache.struts.taglib.html.FormTag _jspx_th_html_form_0 = (org.apache.struts.taglib.html.FormTag) _jspx_tagPool_html_form_method_action.get(org.apache.struts.taglib.html.FormTag.class);
          _jspx_th_html_form_0.setPageContext(_jspx_page_context);
          _jspx_th_html_form_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_html_0);
          _jspx_th_html_form_0.setAction("/LoginServ");
          _jspx_th_html_form_0.setMethod("post");
          int _jspx_eval_html_form_0 = _jspx_th_html_form_0.doStartTag();
          if (_jspx_eval_html_form_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
            do {
              out.write("\n");
              out.write("\n");
              out.write("\n");
              out.write("            <table  id=\"trans\" width: 250px; align=\"center\">\n");
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
              out.write("  ul li {display: block;position: relative;float: left;border:1px solid #000;width: 333px}\n");
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
              out.write("  \n");
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
              out.write("                </tr> \n");
              out.write("               \n");
              out.write("                <tr> <td> <br><br><br>\n");
              out.write("                       \n");
              out.write("            <table align=\"center\" style=\"color:#339966; height: 300px\">\n");
              out.write("\n");
              out.write("                <tbody>\n");
              out.write("                     ");

                 if(msg!=null)
                 {
                
              out.write("\n");
              out.write("                <tr>\n");
              out.write("                    <td style=\" color: red;\" align=\"center\">\n");
              out.write("                        Invalid User Name Or Password ! ! !\n");
              out.write("                    </td>\n");
              out.write("                </tr>\n");
              out.write("                ");
}
              out.write("\n");
              out.write("                 ");

                 if(cmsg!=null)
                 {
                
              out.write("\n");
              out.write("                <tr>\n");
              out.write("                    <td style=\" color: red;\" align=\"center\">\n");
              out.write("                        Password Changed Successfully ! ! !\n");
              out.write("                    </td>\n");
              out.write("                </tr>\n");
              out.write("                ");
}
              out.write("\n");
              out.write("                    <tr>\n");
              out.write("                        <td>User Name:</td>\n");
              out.write("                        <td>");
              if (_jspx_meth_html_text_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_html_form_0, _jspx_page_context))
                return;
              out.write("</td>\n");
              out.write("                        <td>");
              if (_jspx_meth_html_errors_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_html_form_0, _jspx_page_context))
                return;
              out.write("</td>\n");
              out.write("                    </tr>\n");
              out.write("                    <tr>\n");
              out.write("                        <td>Password:</td>\n");
              out.write("                        <td><input type=\"password\" name=\"pass\"/></td>\n");
              out.write("                        <td>");
              if (_jspx_meth_html_errors_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_html_form_0, _jspx_page_context))
                return;
              out.write("</td>\n");
              out.write("                    </tr>\n");
              out.write("                    <tr>\n");
              out.write("                        <td>");
              if (_jspx_meth_html_submit_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_html_form_0, _jspx_page_context))
                return;
              out.write("</td>\n");
              out.write("                    </tr>\n");
              out.write("\n");
              out.write("\n");
              out.write("            <tr>\n");
              out.write("                <td>\n");
              out.write("                    <a href=\"register.jsp\" style=\"font-size: large\">New User Register Here </a>\n");
              out.write("               </td>\n");
              out.write("               <td input type=\"hidden\" style=\" width:20px;height:0px;\"></td>\n");
              out.write("               <td>\n");
              out.write("                    <a href=\"forgotPass.jsp\" style=\"font-size: large\">Forgot PassWord </a>\n");
              out.write("               </td>\n");
              out.write("           </tr>\n");
              out.write("            </tbody>\n");
              out.write("            </table>\n");
              out.write("              </td>\n");
              out.write("        </tr>\n");
              out.write("\n");
              out.write("       \n");
              out.write("        <tr><td><br><br><br> ");
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
              out.write("        ");
              int evalDoAfterBody = _jspx_th_html_form_0.doAfterBody();
              if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                break;
            } while (true);
          }
          if (_jspx_th_html_form_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            _jspx_tagPool_html_form_method_action.reuse(_jspx_th_html_form_0);
            return;
          }
          _jspx_tagPool_html_form_method_action.reuse(_jspx_th_html_form_0);
          out.write("\n");
          out.write("\n");
          out.write("    </body>\n");
          int evalDoAfterBody = _jspx_th_html_html_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_html_html_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _jspx_tagPool_html_html_lang.reuse(_jspx_th_html_html_0);
        return;
      }
      _jspx_tagPool_html_html_lang.reuse(_jspx_th_html_html_0);
      out.write('\n');
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

  private boolean _jspx_meth_html_text_0(javax.servlet.jsp.tagext.JspTag _jspx_th_html_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  html:text
    org.apache.struts.taglib.html.TextTag _jspx_th_html_text_0 = (org.apache.struts.taglib.html.TextTag) _jspx_tagPool_html_text_property_nobody.get(org.apache.struts.taglib.html.TextTag.class);
    _jspx_th_html_text_0.setPageContext(_jspx_page_context);
    _jspx_th_html_text_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_form_0);
    _jspx_th_html_text_0.setProperty("uname");
    int _jspx_eval_html_text_0 = _jspx_th_html_text_0.doStartTag();
    if (_jspx_th_html_text_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_html_text_property_nobody.reuse(_jspx_th_html_text_0);
      return true;
    }
    _jspx_tagPool_html_text_property_nobody.reuse(_jspx_th_html_text_0);
    return false;
  }

  private boolean _jspx_meth_html_errors_0(javax.servlet.jsp.tagext.JspTag _jspx_th_html_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  html:errors
    org.apache.struts.taglib.html.ErrorsTag _jspx_th_html_errors_0 = (org.apache.struts.taglib.html.ErrorsTag) _jspx_tagPool_html_errors_property_nobody.get(org.apache.struts.taglib.html.ErrorsTag.class);
    _jspx_th_html_errors_0.setPageContext(_jspx_page_context);
    _jspx_th_html_errors_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_form_0);
    _jspx_th_html_errors_0.setProperty("uname");
    int _jspx_eval_html_errors_0 = _jspx_th_html_errors_0.doStartTag();
    if (_jspx_th_html_errors_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_html_errors_property_nobody.reuse(_jspx_th_html_errors_0);
      return true;
    }
    _jspx_tagPool_html_errors_property_nobody.reuse(_jspx_th_html_errors_0);
    return false;
  }

  private boolean _jspx_meth_html_errors_1(javax.servlet.jsp.tagext.JspTag _jspx_th_html_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  html:errors
    org.apache.struts.taglib.html.ErrorsTag _jspx_th_html_errors_1 = (org.apache.struts.taglib.html.ErrorsTag) _jspx_tagPool_html_errors_property_nobody.get(org.apache.struts.taglib.html.ErrorsTag.class);
    _jspx_th_html_errors_1.setPageContext(_jspx_page_context);
    _jspx_th_html_errors_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_form_0);
    _jspx_th_html_errors_1.setProperty("pass");
    int _jspx_eval_html_errors_1 = _jspx_th_html_errors_1.doStartTag();
    if (_jspx_th_html_errors_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_html_errors_property_nobody.reuse(_jspx_th_html_errors_1);
      return true;
    }
    _jspx_tagPool_html_errors_property_nobody.reuse(_jspx_th_html_errors_1);
    return false;
  }

  private boolean _jspx_meth_html_submit_0(javax.servlet.jsp.tagext.JspTag _jspx_th_html_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  html:submit
    org.apache.struts.taglib.html.SubmitTag _jspx_th_html_submit_0 = (org.apache.struts.taglib.html.SubmitTag) _jspx_tagPool_html_submit_value_style_nobody.get(org.apache.struts.taglib.html.SubmitTag.class);
    _jspx_th_html_submit_0.setPageContext(_jspx_page_context);
    _jspx_th_html_submit_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_form_0);
    _jspx_th_html_submit_0.setValue("Login");
    _jspx_th_html_submit_0.setStyle(" color:#CC0066; background: #99CC99;font-size:large;width:80px;border-radius:5px;");
    int _jspx_eval_html_submit_0 = _jspx_th_html_submit_0.doStartTag();
    if (_jspx_th_html_submit_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_html_submit_value_style_nobody.reuse(_jspx_th_html_submit_0);
      return true;
    }
    _jspx_tagPool_html_submit_value_style_nobody.reuse(_jspx_th_html_submit_0);
    return false;
  }
}
