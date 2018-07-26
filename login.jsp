<%-- 
    Document   : login
    Created on : 16 Mar, 2018, 12:10:29 PM
    Author     : mayan
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%@page import="java.sql.*"%>
        <%  
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tripkaro","root","");
            Statement stmt = con.createStatement();
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            String sql = "SELECT * FROM testing where email='"+email+"' and pass='"+pass+"'";
            
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
            
            int lid = rs.getInt("lid");
            String name = rs.getString("name");
            String gender = rs.getString("gender");
			String dob = rs.getString("dob");
            String address = rs.getString("address");
            String phno = rs.getString("phno");
			
			session.setAttribute( "lid", lid );
			session.setAttribute( "name", name );
			session.setAttribute( "email", email );
			session.setAttribute( "gender", gender );
			session.setAttribute( "dob", dob );
			session.setAttribute( "address", address );
			session.setAttribute( "phno", phno );
			
			out.print(name+gender+dob+address+phno+email);
			
            }
            
            %>
			Click to continue <a href="index.jsp"> Test</a>
			<% 
			String site = "index.html" ;
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site);
			%>
    </body>
</html>

