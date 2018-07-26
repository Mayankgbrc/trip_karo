<%

if(session.getAttribute("email")== null || session.getAttribute("name") == null){
	session.setAttribute("message", "Please Login");
	response.sendRedirect(response.encodeRedirectURL("log.jsp"));
}

String email = (String) session.getAttribute("email");
String name = (String) session.getAttribute("name");

%>

<HTML>
<BODY>
<form method="post" action="book.jsp">
	<button name ="tname" value="Andaman and Nicobar Island">book a trip?<br>
</form>
</script>
