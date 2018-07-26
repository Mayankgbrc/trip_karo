
<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tripkaro","root","");
Statement stmt = con.createStatement();
	String name=request.getParameter("name");
	String gender=request.getParameter("gender");
	String dob=request.getParameter("dob");
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
	String address=request.getParameter("address");
	String phno=request.getParameter("phno");
	
	String sql="INSERT INTO testing(name,gender, dob,email,pass, address, phno) VALUES ('"+name+"', '"+gender+"','"+dob+"', '"+email+"', '"+pass+"', '"+address+"', '"+phno+"')";
	stmt.executeUpdate(sql);
	String site = "log.jsp" ;
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); 
%>
<html>
<body>
<a href="log.jsp"> Click to go to Login Page </a>