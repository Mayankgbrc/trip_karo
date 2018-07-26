<%
if(session.getAttribute("email")== null || session.getAttribute("name") == null){
	session.setAttribute("message", "Please Login");
	response.sendRedirect(response.encodeRedirectURL("log.jsp"));
}

String email = (String) session.getAttribute("email");
String name = (String) session.getAttribute("name");

%>
<html>

	<head>
		<title>Booked History</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
		<script src="sliderengine/jquery.js"></script>
		<script src="sliderengine/amazingslider.js"></script>
		<link rel="stylesheet" type="text/css" href="sliderengine/amazingslider-3.css">
		<script src="sliderengine/initslider-3.js"></script>
	</head>
	<body>
	<jsp:include page="header-o.jsp" />
		<br>
		<div class="w3-container">
<%@page import="java.sql.*"%>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
        <%  
            int lid = (Integer)session.getAttribute("lid");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tripkaro","root","");
            Statement stmt = con.createStatement();
            
            String sql = "SELECT * FROM trip where lid='"+lid+"' ORDER BY tripid DESC";
            
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
            
			int tripid = rs.getInt("tripid");
            String tripname = rs.getString("tripname");
            String tripsdate = rs.getString("tripsdate");
            String noperson = rs.getString("noperson");
            String phno2 = rs.getString("phno2");
            String email2 = rs.getString("email2");
            String price = rs.getString("price");
			
			%>
	
			<div class="w3-large" style="border:3px solid black;"><br>
				<div class="w3-container">
			Your booking id is <%out.print(tripid);%><br>
			Your booked trip is <%out.print(tripname);%><br>
			Your Trip date is <%out.print(tripsdate);%><br>
			Number of person is <%out.print(noperson);%><br>
			Updates will be sent to phone number <%out.print(phno2);%>
			and e-mail id <%out.print(email2);%><br>
			Total price is <%out.print(price);%><br>
			<br></div><br><br>
			<%
            }
            %>
			</div>
