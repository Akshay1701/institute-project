package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class institute_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=ISO-8859-1");
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>GO CAREER</title>\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"default.css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div id=\"outer\">\n");
      out.write("\t<div id=\"outer2\">\n");
      out.write("\t\n");
      out.write("\t\t<div id=\"header\">\n");
      out.write("\t\t\t             <img src=\"logo final.png\" style=\"margin-left:183px; width:1000px\">\n");
      out.write("                        <div class=\"slideshow-container\">\n");
      out.write("\n");
      out.write("<div class=\"mySlides fade\">\n");
      out.write("  <div class=\"numbertext\"></div>\n");
      out.write("  <img src=\"home2.jpg\" style=\"width:100%; height:300px;\">\n");
      out.write("  <div class=\"text\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"mySlides fade\">\n");
      out.write("  <div class=\"numbertext\"></div>\n");
      out.write("  <img src=\"home page first.jpg\" style=\"width:100%; height:300px;\">\n");
      out.write("  <div class=\"text\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"mySlides fade\">\n");
      out.write("  <div class=\"numbertext\"></div>\n");
      out.write("  <img src=\"home page last.jpg\" style=\"width:100% ; height:300px;\">\n");
      out.write("  <div class=\"text\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<a class=\"prev\" onclick=\"plusSlides(-1)\">&#10094;</a>\n");
      out.write("<a class=\"next\" onclick=\"plusSlides(1)\">&#10095;</a>\n");
      out.write("\n");
      out.write("<div style=\"text-align:center\">\n");
      out.write("  <span class=\"dot\" onclick=\"currentSlide(1)\"></span> \n");
      out.write("  <span class=\"dot\" onclick=\"currentSlide(2)\"></span> \n");
      out.write("  <span class=\"dot\" onclick=\"currentSlide(3)\"></span> \n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("var slideIndex = 1;\n");
      out.write("showSlides(slideIndex);\n");
      out.write("\n");
      out.write("function plusSlides(n) {\n");
      out.write("  showSlides(slideIndex += n);\n");
      out.write("}\n");
      out.write("\n");
      out.write("function currentSlide(n) {\n");
      out.write("  showSlides(slideIndex = n);\n");
      out.write("}\n");
      out.write("\n");
      out.write("function showSlides(n) {\n");
      out.write("  var i;\n");
      out.write("  var slides = document.getElementsByClassName(\"mySlides\");\n");
      out.write("  var dots = document.getElementsByClassName(\"dot\");\n");
      out.write("  if (n > slides.length) {slideIndex = 1}    \n");
      out.write("  if (n < 1) {slideIndex = slides.length}\n");
      out.write("  for (i = 0; i < slides.length; i++) {\n");
      out.write("      slides[i].style.display = \"none\";  \n");
      out.write("  }\n");
      out.write("  for (i = 0; i < dots.length; i++) {\n");
      out.write("      dots[i].className = dots[i].className.replace(\" active\", \"\");\n");
      out.write("  }\n");
      out.write("  slides[slideIndex-1].style.display = \"block\";  \n");
      out.write("  dots[slideIndex-1].className += \" active\";\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\t\t</div>\n");
      out.write("\t\n");
      out.write("\t\t<div id=\"menu\">\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li><a href=\"home.html\">Logout</a></li>\n");
      out.write("                                <li><a href=\"addfee.html\">Add Fee</a></li>\n");
      out.write("                               \n");
      out.write("\t\t\t\t<li><a href=\"addcourse.html\">Add Institute Details</a></li>\n");
      out.write("                                <li><a href=\"viewusers12.jsp\">View Users</a></li>\n");
      out.write("                                <li><a href=\"sendmsg.jsp\">Send Messages</a></li>\n");
      out.write("                               \n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\t<div id=\"content\">\n");
      out.write("                    <center><h2><b>Welcome ");
      out.print((String)session.getAttribute("iname"));
      out.write("</center>\n");
      out.write("\t\t\t<div id=\"column1\">\n");
      out.write("\t\t\t \n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
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