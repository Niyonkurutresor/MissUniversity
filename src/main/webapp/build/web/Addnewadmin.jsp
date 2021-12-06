
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.* "%>
<%@page import="java.util.ArrayList"%>  
<%@page import="java.util.List"%>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Admin</title>
    </head>
    <body>
        <% 
         Class.forName("com.mysql.jdbc.Driver"); 
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/miss","root","");
        PreparedStatement ps=null;
        %>
        <%
            String username=request.getParameter("username");
            String pass=request.getParameter("pass");
            String re_pass=request.getParameter("re_pass");
           if(pass.equals(re_pass)){
            ps=con.prepareStatement("insert into admin(username,password) values(?,?)");
            ps.setString(1, username);
            ps.setString(2, pass);
            ps.executeUpdate(); 
            response.sendRedirect("Dashboard.jsp");
           }
            else{
                    out.print("Passwords doesn't match");
                    }
        %>
    </body>
</html>
