<%

if(session.getAttribute("email")== null || session.getAttribute("name") == null){
	session.setAttribute("message", "Please Login");
	response.sendRedirect(response.encodeRedirectURL("log.jsp"));
}

String email = (String) session.getAttribute("email");
String name = (String) session.getAttribute("name");

%>
<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tripkaro","root","");
Statement stmt = con.createStatement();
	String tripname=request.getParameter("tname");
	String tripdate=request.getParameter("tripdate");
	String noperson = request.getParameter("noperson");
	String email2=request.getParameter("email2");
	String phno2=request.getParameter("phno2");
	String price=request.getParameter("price");
	int lid = (Integer)session.getAttribute("lid");
	
	String sql="INSERT INTO trip(tripname, tripsdate, lid, noperson, phno2, email2, price) VALUES ('"+tripname+"', '"+tripdate+"','"+lid+"','"+noperson+"', '"+phno2+"', '"+email2+"', '"+price+"')";
	stmt.executeUpdate(sql);
%>
<html>
	<head>
		<title>Confirmation</title>
		<meta http-equiv="Refresh" content="5;url=index.html">
		
	</head>
	<body>
<h1> Done </h1>

Congratulation your order is confirmed<br>

You will be redirected within 5 seconds.
