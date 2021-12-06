package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.servlet.http.HttpSession;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class Dashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <title>Administrator Dashboard</title>\n");
      out.write("     <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"fonts/material-icon/css/material-design-iconic-font.min.css\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    <style>\n");
      out.write("        table {\n");
      out.write("  font-family: arial, sans-serif;\n");
      out.write("  border-collapse: collapse;\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("td, th {\n");
      out.write("  border: 1px solid #dddddd;\n");
      out.write("  text-align: left;\n");
      out.write("  padding: 8px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("tr:nth-child(even) {\n");
      out.write("  background-color: #dddddd;\n");
      out.write("}\n");
      out.write("table, th, td {\n");
      out.write("  border: 1px solid black;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  \n");
      out.write("    <nav class=\"navMenu\">\n");
      out.write("      <a href=\"Addnew.html\">Add Admin</a>\n");
      out.write("        <a href=\"viewAccepted.jsp\">Accepted</a>\n");
      out.write("      <a href=\"viewdenied.jsp\">Denied</a>\n");
      out.write("      <a href=\"Logout.jsp\">Log out</a>\n");
      out.write("      <div class=\"dot\"></div>\n");
      out.write("    </nav>\n");
      out.write("    <div class=\"main\">\n");
      out.write("\n");
      out.write("        <!-- Sign up form -->\n");
      out.write("        <section class=\"signup\">\n");
      out.write("        \n");
      out.write("                \n");
      out.write("                \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");


String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "miss";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

      out.write("\n");
      out.write("<h2 align=\"center\"><font><strong>Admin Dashboard</strong></font></h2>\n");
      out.write("\n");
      out.write("<table align=\"center\" cellpadding=\"5\" cellspacing=\"5\" border=\"1\">\n");
      out.write("<tr>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("<tr bgcolor=\"#A52A2A\">\n");
      out.write("<td><b>First Name</b></td>\n");
      out.write("<td><b>Middle Name</b></td>\n");
      out.write("<td><b>Last Name</b></td>\n");
      out.write("<td><b>ID number</b></td>\n");
      out.write("<td><b>Height</b></td>\n");
      out.write("<td><b>Email</b></td>\n");
      out.write("<td><b>College</b></td>\n");
      out.write("<td><b>School</b></td>\n");
      out.write("<td><b>Department</b></td>\n");
      out.write("<td><b>Year</b></td>\n");
      out.write("<td colspan=\"3\" ><b>Actions</b></td>\n");
      out.write("\n");
      out.write("</tr>\n");

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM applic";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){

      out.write("\n");
      out.write("<tr bgcolor=\"#DEB887\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<td>");
      out.print(resultSet.getString("fname") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("mname") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("lname") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("nid") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("height") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("email") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("college") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("school") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("department") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("year") );
      out.write("</td>\n");
      out.write("\n");
      out.write("<td><a href=\"accept.jsp?id=");
      out.print(resultSet.getString("nid") );
      out.write("\"><button type=\"button\" class=\"delete\">Accept</button></a> </a> </td>\n");
      out.write("<td><a href=\"deny.jsp?id=");
      out.print(resultSet.getString("nid") );
      out.write("\"><button type=\"button\" class=\"delete\">Deny</button></a> </a> </td> \n");
      out.write("<td><a href=\"update.jsp?id=");
      out.print(resultSet.getString("nid") );
      out.write("\"><button type=\"button\" class=\"delete\">Update</button></a></td>\n");
      out.write("</tr>\n");
      out.write("\n");
 
}

} catch (Exception e) {
e.printStackTrace();
}

      out.write("\n");
      out.write("</table>\n");
      out.write("               \n");
      out.write("             <form method=\"POST\" class=\"register-form1\" id=\"login-form\" action=\"logout.jsp\">\n");
      out.write("                                <div class=\"form-group form-button1\">\n");
      out.write("                                      <a href=\"viewdenied.jsp\"><button id=\"signin\" class=\"form-submit\" type=\"button\" class=\"delete\">View Denied</button></a>\n");
      out.write("                                     <a href=\"viewAccepted.jsp\"><button id=\"signin\" class=\"form-submit\" type=\"button\" class=\"delete\">View Accepted</button></a>\n");
      out.write("                                      \n");
      out.write("                               \n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                       \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("  </body>\n");
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
