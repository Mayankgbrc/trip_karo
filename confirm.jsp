<%

if(session.getAttribute("email")== null || session.getAttribute("name") == null){
	session.setAttribute("message", "Please Login");
	response.sendRedirect(response.encodeRedirectURL("log.jsp"));
}

String email = (String) session.getAttribute("email");
String name = (String) session.getAttribute("name");

%>
<!DOCTYPE html>
<html>
	<head>
		<title>Trip Karo</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
		<script src="sliderengine/jquery.js"></script>
		<script src="sliderengine/amazingslider.js"></script>
		<link rel="stylesheet" type="text/css" href="sliderengine/amazingslider-3.css">
		<script src="sliderengine/initslider-3.js"></script>
<script>
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!

var yyyy = today.getFullYear();
if(dd<10){
    dd='0'+dd;
} 
if(mm<10){
    mm='0'+mm;
} 
var today = dd+'/'+mm+'/'+yyyy;
document.getElementById("DATE").value = today;
</script>
<style> 
input[type=text] {
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 3px solid #ccc;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
	border-radius:5px;
}

input[type=text]:focus {
    border: 3px solid green;
}
</style>
	</head>
	<body>
		<jsp:include page="header-o.jsp" />
		<div class="w3-container">
			
			<br>
			<div class="w3-xlarge w3-text-green">Your trip name is :
				<%
				String tname = request.getParameter("tname");
				out.print(tname);
				%>
			</div>
			<br>Your final price is :
			<%
			  int price = Integer.parseInt(request.getParameter("price"));
				 out.print(price);
			 %>
			 <br>Date of trip is :
			<%
			  String tripdate = request.getParameter("tripdate");
				 out.print(tripdate);
			 %>
			 
			 <br>
			 <form method="post" action="confirm.do.jsp">
				 <input type="hidden" name="tname" value="<%=request.getParameter("tname")%>" />
				 <input type="hidden" name="price" value="<%=request.getParameter("price")%>" />
				 <input type="hidden" name="noperson" value="<%=request.getParameter("noperson")%>" />
				 <input type="hidden" name="tripdate" value="<%=request.getParameter("tripdate")%>" />
				 Updates will be sent to:<br>
				 Phone No. : <input  type="text" name="phno2" value="<%=session.getAttribute("phno")%>" />&nbsp;
				 E-mail : <input type="text" name="email2" value="<%=session.getAttribute("email")%>" /><br>
				 <button type="submit"class="w3-btn w3-round-large w3-black">Final Booking</button>
			 </form>
		 </div>
 </body>
 </html>