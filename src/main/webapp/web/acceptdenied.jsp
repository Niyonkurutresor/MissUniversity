
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 

<% 
    if(request.getParameter("submit")!=null)
    {
        String fname = request.getParameter("fname");
        String mname = request.getParameter("mname");
        String lname = request.getParameter("lname");
        String nid = request.getParameter("nid");
        String height = request.getParameter("height");
        String email = request.getParameter("email");
        String college = request.getParameter("college");
        String school= request.getParameter("school");
        String department = request.getParameter("department");
        String year = request.getParameter("year");
          
          
          String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/miss","root","");
        pst = con.prepareStatement("delete from denied where nid = ?");
         pst.setString(1, id);
        pst.executeUpdate();  
          
          String sql ="insert into accepted(fname,mname,lname,nid,height,email,college,school,department,year)values('"+fname+"','"+mname+"','"+lname+"','"+nid+"','"+height+"','"+email+"','"+college+"','"+school+"','"+department+"','"+year+"')";

Statement st=con.createStatement();

st.executeUpdate(sql);

          
 String redirectURL = "viewdenied.jsp";
        response.sendRedirect(redirectURL);
        
        %>
     
    <%             
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
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Confirm Acceptance</h2>
                        <form  class="register-form" id="register-form"  method="POST" action="#"  >
                            
                      <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost/miss","root","");
                           
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from denied where nid = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                             
                       <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="fname" id="name" value="<%= rs.getString("fname")%>" />
                            </div>
                             <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="mname" id="name"  value="<%= rs.getString("mname")%>" />
                            </div>
                             <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="lname" id="name" value="<%= rs.getString("lname")%>" />
                            </div>
                             <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="nid" id="name" value="<%= rs.getString("nid")%>"/>
                            </div>
                             <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="height" id="name" value="<%= rs.getString("height")%>"/>
                            </div>
                             <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="email" id="name" value="<%= rs.getString("email")%>"/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="text" name="college" id="email" value="<%= rs.getString("college")%>"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="text" name="school" id="pass"  value="<%= rs.getString("school")%>" />
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="text" name="department" id="re_pass" value="<%= rs.getString("department")%>"/>
                            </div>
                            
                              <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="text" name="year" id="re_pass" value="<%= rs.getString("year")%>"/>
                            </div>
                          
                            <div class="form-group form-button">
                                <input type="submit" name="submit" id="signup" class="form-submit" value="Confirm Acceptance"/>
                            </div>
                        </form>
                    </div>
                   
                </div>
            </div>
        </section>
 <% }  %>
        <!-- Sing in  Form -->
       

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>