package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"> \n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            .modal-header,h4{\n");
      out.write("               background-color: darkcyan;\n");
      out.write("               color: white;\n");
      out.write("               font-size:30px;\n");
      out.write("               text-align: center;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            
        
      out.write("\n");
      out.write("        <!--main form to add content in the form -->\n");
      out.write("        <div class=\"frm\" style=\" align-content: center; height: 730px; width: 1515px; background-color: #46b8da;\">\n");
      out.write("            <div class=\" modal-dialog\">\n");
      out.write("                <div class=\" modal-content\" style=\"background-color: #9d9d9d;align-content: center; width: 700px; font-family: cursive;\">\n");
      out.write("                <h2> Report Creator </h2> \n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-body\" style=\"padding:25px 25px;\">\n");
      out.write("                    <form action=\"report.jsp\" style=\"height: 100px; width: 900px;\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            CLIENT:-<input type=\"text\"   name=\"client\" placeholder=\"ex. URL or IP Address\" >\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\" >\n");
      out.write("                            Testing Type: &nbsp;<select name=\"test\">\n");
      out.write("                                <option value=\"VAPT\">VAPT</option>\n");
      out.write("                                <option value=\"Web Application Testing\">Web Application Testing</option>\n");
      out.write("                                <option value=\"Mobile Application Testing\">Mobile Application Testing</option>\n");
      out.write("                            </select>\n");
      out.write("                        </div>    \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            SCOPE:-<input type=\"text\"   name=\"scope\" placeholder=\"ex. URL or IP Address\" >\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">    \n");
      out.write("                            TOTAL VULNERABILITIES:-<input type=\"text\"   name=\"totalvuln\" placeholder=\"USERNAME\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                                HIGH:-<input type=\"text\"   name=\"highvuln\" placeholder=\"ADDRESS\">&nbsp;&nbsp;MEDIUM:-<input type=\"text\"   name=\"meduimvuln\"  placeholder=\"EX 2 or 3\">&nbsp;&nbsp;LOW:-<input type=\"text\"   name=\"lowvuln\" placeholder=\"EX 2 or 3\">&nbsp;&nbsp;INFO:-<input type=\"text\"   name=\"informationalvuln\" placeholder=\"EX 2 or 3\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            NO. OF REPRESENTATIVES:-<input type=\"number\"   name=\"nrep\" placeholder=\"EX. Aashay Shah\">\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <button type=\"submit\" class=\"btn btn-success btn-block\">Login</button>\n");
      out.write("                        <button type=\"reset\" class=\"btn btn-danger btn-block\">Reset</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--bottom division to see how the form is getting made -->\n");
      out.write("        <div class=\"tbl\" style=\" float: bottom; align-content: center; height: 730px; width: 1515px; background-color: #761c19;\">\n");
      out.write("            <div class=\" modal-content\">\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
