<%

if(session.getAttribute("email")== null || session.getAttribute("name") == null){
	session.setAttribute("message", "Please Login");
	response.sendRedirect(response.encodeRedirectURL("log.jsp"));
}

String email = (String) session.getAttribute("email");
String name = (String) session.getAttribute("name");

%>
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

<script>
function multiplyBy()
{
        num1 = document.getElementById("multiply").value;
        num2 = 20000;
        document.getElementById("result").innerHTML = num1 * num2;
        document.getElementById("result2").value = num1 * num2;
}

</script>
<HTML>
<BODY>
Hello, <%= session.getAttribute( "name" ) %>
Hello, <%= session.getAttribute( "email" ) %>
Hello, <%= session.getAttribute( "gender" ) %>
Hello, <%= session.getAttribute( "dob" ) %>
Hello, <%= session.getAttribute( "address" ) %>
<% String tname = request.getParameter("tname"); %>
<br>
book a trip?<br>
<a href="order.jsp">Click to go to order</a>

<form action="confirm.jsp" method="post">
	no of persons <input type="number" id="multiply" name="noperson" autofocus required><br>
<button  onClick="multiplyBy()" Value="Calculate"> Calculate </button><br>
<span id = "result"></span>
<p> Your service booked is <% out.print(tname); %> </p>
	<input type="hidden" id="result2" name="price"/>
	<input type="hidden" name="tname" value="<%=request.getParameter("tname")%>"/>
	choose the date : <input id="datefield" type="date" name="tripdate" min="2018-03-21" max="2018-04-24" required/> <br>
	<button type="submit" >Confirm Booking</button>

</form>


<br>
	Line1 is ${lid}<br>

    <a href="logout.jsp" ><button type="submit"> LogOut </button></a>


</BODY>
</HTML>



