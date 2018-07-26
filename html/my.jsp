<%

if(session.getAttribute("email")== null || session.getAttribute("name") == null){
	session.setAttribute("message", "Please Login");
	response.sendRedirect(response.encodeRedirectURL("../log.jsp"));
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
		<script src="../sliderengine/jquery.js"></script>
		<script src="../sliderengine/amazingslider.js"></script>
		<link rel="stylesheet" type="text/css" href="../sliderengine/amazingslider-1.css">
		<script src="../sliderengine/initslider-1.js"></script>
		<script src="js/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $(".hide").click(function(){
      $("#show").hide(100);
    });
    $("#show").click(function(){
        $("#book").show(100);
    });
});

function multiplyBy()
{
        num1 = document.getElementById("multiply").value;
        num2 = 21990;
        document.getElementById("result").innerHTML = num1 * num2;
        document.getElementById("result2").value = num1 * num2;
}
</script>
	</head>
	<body>
		<div class="">
			<jsp:include page="header.jsp" />
			<br>
			<div class="w3-row-padding">
			<div class="w3-col l9">
				<!-- Insert to your webpage where you want to display the slider -->
				<div id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:900px;margin:0px auto 56px;">
					<div id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
						<ul class="amazingslider-slides" style="display:none;">
							<li><img src="../images/my/my1.jpg" alt="Bangalore"  title="Bangalore" />
							</li>
							<li><img src="../images/my/my2.jpg" alt="Mysore"  title="Mysore" />
							</li>
							<li><img src="../images/my/my3.jpg" alt="Kodaikanal"  title="Kodaikanal" />
							</li>
							<li><img src="../images/my/my4.jpg" alt="Ooty"  title="Ooty" />
							</li>
							<li><img src="../images/my/my5.jpg" alt="Ooty"  title="Ooty" />
							</li>
						</ul>
						<ul class="amazingslider-thumbnails" style="display:none;">
							<li><img src="../images/my/my1-tn.jpg" alt="Bangalore"  title="Bangalore" /></li>
							<li><img src="../images/my/my2-tn.jpg" alt="Mysore"  title="Mysore" /></li>
							<li><img src="../images/my/my3-tn.jpg" alt="Kodaikanal"  title="Kodaikanal"  /></li>
							<li><img src="../images/my/my4-tn.jpg" alt="Ooty"  title="Ooty" /></li>
							<li><img src="../images/my/my5-tn.jpg" alt="Ooty"  title="Ooty" /></li>
						</ul>
					<div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive jQuery Slider">Responsive jQuery Slider</a></div>
					</div>
				</div>
			</div>
			<div class="w3-col l3">
				<div class="w3-card-8">

				  <div class="w3-card-4 w3-border w3-border-lightgrey" style="width:100%">
					<header class="w3-container w3-light-grey">
					  <h3>Magical South with Mysore, Ooty and Kodaikanal - 5 Nights</h3>
					</header>
					<div class="w3-container">
					  <h2 class="w3-text-pink">Rs 21,990<div class="w3-tiny w3-text-black">Price per Adult twin sharing basis.</div></h2>
					  <hr>
					  <p>Book now and get upto 10% cashback in your wallet.</p>
					  Day 1 - Banglore<br> 
					  Day 2 - Mysore<br> 
					  Day 3 - Ooty <br>
					  Day 4 - Ooty <br>
					  Day 5 - Kodaikanal<br>
					  Day 6 - Banglore<br><br>
					</div>
					<button id="show" class="hide w3-button w3-block w3-red"  style="text-shadow:1px 1px 0 #000;">Book Now</button>
					
					<form  id="book" method="post" action="../confirm.jsp" style="display:none;">
						<div class="w3-container">
						<input type="hidden" name="price" id="result2" />
						<input type="hidden" name="tname" value="Magical South with Mysore, Ooty and Kodaikanal - 5 Nights" />
						Enter the number of persons: <input type="number" id="multiply" autofocus required name="noperson"/><br>
						<br>Enter the date : <input id="datefield" type="date" name="tripdate" min="2018-03-21" max="2018-04-24" required/> <br>
						
						<span id="result"> </span><br>
						</div>
						<button type="submit" name ="tname"  onClick="multiplyBy()" Value="Calculate" class="w3-button w3-block w3-red"  style="text-shadow:1px 1px 0 #000;">Book Now<br></button>
					</form>
					
				  </div>
				</div>
			</div>
		  </div>
			<div class="w3-row-padding">
			<div class="w3-col l1 s12">&nbsp;</div>
			<div class="w3-col l10 s12">
				<hr style="height:5px;background-color:grey" >
				<div class=""><h3>About Itinerary</h3></div>
				<div class="w3-small">
				Feel the magic of the South India Vacation packages. Experience the best of Bangalore as you travel to its iconic attractions - from the Bull Temple to Vidhana Soudha to Lal Bagh. Stroll by the beautiful Brindavan Gardens in Mysore, admire the historic Hoysala Temples of Somnathpur and get a taste of history at the iconic Mysore Palace. Hike through the Nilgiris to arrive at the Doddabetta Peak in Ooty. Watch the setting sun as you boat around the Ooty Lake and stroll along the Botanical Gardens. The natural beauty of the Palani Hills in Kodaikanal will enthrall you as you visit the Pillar Rocks and Coakers Walk, and feel the thrilling Bear Shola Falls splashing away. 	
				</div>
				<hr style="height:5px;background-color:grey" >
				<div class=""><h3>Day-wise Itinerary</h3></div>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 1 - Arrival in Bangalore</h4>
					</header>

					<div class="w3-container w3-small">
					<p>
					On arrival at the Bangalore Airport, Check-in to your hotel and proceed for a half-day city sightseeing tour in the afternoon. Visit the Bull Temple, Mysore Arts & Crafts Centre, Commercial Street, Vidhana Soudha and Lal Bagh. Stay overnight at the hotel in Bangalore.
					</p>  
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 2 - Bangalore - Mysore (143 kms | 3 hours) </h4>
					</header>

					<div class="w3-container w3-small">
					  <p>
					  This morning, drive to Mysore. On the way, visit Srirangapatana, the capital city of Hyder Ali and his son Tipu Sultan. On arrival, check-in to your hotel. Visit the Brindavan Gardens in the evening and later, stay overnight at your hotel in Mysore
					  </p>
					  </div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 3 - Mysore - Ooty (170 kms | 4 hours)</h4>
					</header>

					<div class="w3-container w3-small">
					<p>
					In the morning, proceed for an excursion to Somnathpur and visit one of the best-preserved Hoysala Temples. In the afternoon, visit the famous Mysore Palace and then continue your journey to the blue Nilgiri hills, driving past the tea plantations of Ooty. On arrival, check-in to your hotel and enjoy the rest of the day at leisure. Stay overnight at the hotel in Ooty.
					</p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 4 - Ooty </h4>
					</header>

					<div class="w3-container w3-small">
					  <p>
					  Enjoy a tour of the 'Queen of the Blue Mountains', that includes a visit to Dodabetta Peak. Later, drive to Coonoor and visit Sims Park and 'Dolphin' Nose Point. In the afternoon, visit the Botanical Garden and the popular Ooty Lake. Return to your hotel in Ooty for a comfortable overnight stay
					  </p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 5 - Ooty - Kodaikanal (260 kms | 6.5 hours)</h4>
					</header>

					<div class="w3-container w3-small">
					<p>
					The picturesque journey continues through the Palani Hills to another scenic hill-station, Kodaikanal. On arrival, check-in to your hotel. Enjoy the evening at leisure and stay overnight at the hotel in Kodaikanal.
					</p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 6 - Kodaikanal to Bangalore (215kms | 6 hours) </h4>
					</header>

					<div class="w3-container w3-small">
					<p>After buffet breakfast you will be transferred to Bangalore.
					</p>
					</div>
				</div>
				
			</div>
		  
			
			</div>
		</div>
			<footer>
				<h4 class="w3-center w3-grey ">Coming soon</h4>
			</footer>
		
	</body>
</html>