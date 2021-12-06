
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.* "%>
<%@page import="java.util.ArrayList"%>  
<%@page import="java.util.List"%>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Application Insertion</title>
    </head>
    <body>
        <% 
         Class.forName("com.mysql.jdbc.Driver"); 
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/miss","root","");
        PreparedStatement ps=null;
        %>
        <%
            String fname=request.getParameter("fname");
            String mname=request.getParameter("mname");
            String lname=request.getParameter("lname");
            String nid=request.getParameter("nid");
            String height=request.getParameter("height");
            String email=request.getParameter("email");
            String college=request.getParameter("college");
            String school=request.getParameter("school");
            String department=request.getParameter("department");
            String year=request.getParameter("year");
            
            ps=con.prepareStatement("insert into applic(fname,mname,lname,nid,height,email,college,school,department,year) values(?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, fname);
            ps.setString(2, mname);
            ps.setString(3, lname);
            ps.setString(4, nid);
            ps.setString(5, height);
            ps.setString(6, email);
            ps.setString(7, college);
            ps.setString(8, school);
            ps.setString(9, department);
            ps.setString(10, year);
            ps.executeUpdate(); 
            response.sendRedirect("index.html");
            
         
        %>
    </body>
</html>
