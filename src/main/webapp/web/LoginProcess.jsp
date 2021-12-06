<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Processes</title>
    </head>
    <body>
       <%
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/miss","root","");
       PreparedStatement ps=null;
       ResultSet rs=null;
       %>
       <%
       String username=request.getParameter("user_name");
       String admin_pass=request.getParameter("your_pass");
       ps=con.prepareStatement("select password from admin where password=?");
       ps.setString(1, admin_pass);
       rs=ps.executeQuery();
       if(rs.next()){
         HttpSession sess=request.getSession();
         sess.setAttribute("username", username);
         sess.setAttribute("password", admin_pass);
         response.sendRedirect("Dashboard.jsp");
       }
       else{
           response.sendRedirect("login.html");
       }
       %>
    </body>
</html>
