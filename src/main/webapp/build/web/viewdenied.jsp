<%
    if(session.getAttribute("password") == null )
    {
        response.sendRedirect("login.html");
    }
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("nid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miss", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM applic WHERE nid="+id);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Administrator Dashboard</title>
     <link rel="stylesheet" href="style.css">
      <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <link rel="stylesheet" href="css/style.css">
    
        <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

table, th, td {
  border: 1px solid black;
  
}
</style>
</head>
<body>
    <nav class="navMenu">
      <a href="Addnew.html">Add Admin</a>
        <a href="viewAccepted.jsp">Accepted</a>
      <a href="viewdenied.jsp">Denied</a>
      <a href="Logout.jsp">Log out</a>
      <div class="dot"></div>
    </nav>
    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
          
                
                <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

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
%>
<h2 align="center"><font><strong>Miss University   -Denied Applicants</strong></font></h2>

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>First Name</b></td>
<td><b>Middle Name</b></td>
<td><b>Last Name</b></td>
<td><b>ID number</b></td>
<td><b>Height</b></td>
<td><b>Email</b></td>
<td><b>College</b></td>
<td><b>School</b></td>
<td><b>Department</b></td>
<td><b>Year</b></td>
<td><b>Action</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM denied";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">


<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("mname") %></td>
<td><%=resultSet.getString("lname") %></td>
<td><%=resultSet.getString("nid") %></td>
<td><%=resultSet.getString("height") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("college") %></td>
<td><%=resultSet.getString("school") %></td>
<td><%=resultSet.getString("department") %></td>
<td><%=resultSet.getString("year") %></td>
<td><a href="acceptdenied.jsp?id=<%=resultSet.getString("nid") %>"><button type="button" class="delete">Accept</button></a> </a> </td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
              
             <form method="POST" class="register-form1" id="login-form" action="logout.jsp">
                                <div class="form-group form-button1">
                                     <a href="Dashboard.jsp"><button id="signin" class="form-submit" type="button" class="delete">Go Back</button></a>
                                
                            </div>
                        </form>
                       
            </div>
            </div>
        </section>

        <!-- Sing in  Form -->
       

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>