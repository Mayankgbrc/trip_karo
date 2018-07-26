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
        num2 = 11990;
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
							<li><img src="../images/go/go1.jpg" alt="Port Blair"  title="Port Blair" />
							</li>
							<li><img src="../images/go/go2.jpg" alt="Havelock"  title="Havelock" />
							</li>
							<li><img src="../images/go/go4.jpg" alt="Havelock"  title="Havelock" />
							</li>
							<li><img src="../images/go/go5.jpg" alt="Neil Island"  title="Neil Island" />
							</li>
							<li><img src="../images/go/go2.jpg" alt="Port Blair"  title="Port Blair" />
							</li>
						</ul>
						<ul class="amazingslider-thumbnails" style="display:none;">
							<li><img src="../images/go/go5-tn.jpg" alt="Port Blair"  title="Port Blair"  /></li>
							<li><img src="../images/go/go1-tn.jpg" alt="Havelock"  title="Havelock" /></li>
							<li><img src="../images/go/go3-tn.jpg" alt="Havelock"  title="Havelock" /></li>
							<li><img src="../images/go/go4-tn.jpg" alt="Neil Island"  title="Neil Island" /></li>
							<li><img src="../images/go/go6-tn.jpg" alt="Port Blair"  title="Port Blair" /></li>
						</ul>
					<div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive jQuery Slider">Responsive jQuery Slider</a></div>
					</div>
				</div>
			</div>
			<div class="w3-col l3">
				<div class="w3-card-8">

				  <div class="w3-card-4 w3-border w3-border-lightgrey" style="width:100%">
					<header class="w3-container w3-light-grey">
					  <h3>Sizzling Goa - (3 Nights)</h3>
					</header>
					<div class="w3-container">
					  <h2 class="w3-text-pink">Rs 11,990<div class="w3-tiny w3-text-black">Price per Adult twin sharing basis.</div></h2>
					  <hr>
					  <p>Book now and get upto 10% cashback in your wallet.</p>
					  Day 1 - Goa<br> 
					  Day 2 - Goa<br> 
					  Day 3 - Goa<br>
					  Day 4 - Goa<br><br>
					</div>
					
					<button id="show" class="hide w3-button w3-block w3-red"  style="text-shadow:1px 1px 0 #000;">Book Now</button>
					
					<form  id="book" method="post" action="../confirm.jsp" style="display:none;">
						<div class="w3-container">
						<input type="hidden" name="price" id="result2" />
						<input type="hidden" name="tname" value="Sizzling Goa - (3 Nights)" />
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
				Let this ‘Pearl of the Orient’ mesmerize you with its long string of sandy golden beaches. Goa travel packages give you the opportunity to head out to Candolim Beach and be part of the charming chaos! Tantalize your taste buds with a plethora of local street food. Let out your adventurous streak with the water sports activities at the Sinquerim Beach and relax in the funky beach shacks at Calangute. Spend the night at Anjuna beach as you release the Party animal in you. Savour Greek cuisine at the Vagator Beach as you watch the breathtaking sunset. Stroll across the white sands and red laterite rocks of the Arambol Beach and go for drinks at its famous clubs. Or try your luck at one of the Mandovi river casinos!
				<hr>
				<div class=""><h3>Day-wise Itinerary</h3></div>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 1 - Arrival at Goa</h4>
					</header><div class="w3-container w3-small">
					  <p>Known as the 'The Pearl of the Orient', Goa is a perfect travel destination. On this day, you will take a flight from your departure city, arrive in Goa and get a private transfer to your hotel. Once you have checked-in, spend the day at leisure. Later, return to your hotel for a comfortable stay. Suggested: You can head out to the beautiful Candolim Beach, the party hub of the famous beach city. A quick evening snack at one of the beach shacks, would be a good way to try the delicious Goan cuisine. (Please note, that these are only suggested activities and are not included in the package.)
					  </p>
					  </div></div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 2 - Sinquerim Beach and Calangute Beach</h4>
					</header>

					<div class="w3-container w3-small">
					  <p>
					  On this day, indulge in activities (depending on the package selected) or spend the day at leisure. Later, return to your hotel for a comfortable stay. Suggested: If you are an adventure enthusiast, you can enjoy water sports at Sinquerim Beach. However, for a relaxing time, you can choose island hopping tours and catch a glimpse of dolphins swimming in their natural habitat. In the evening, you can visit Calangute Beach to relax at one of the many beach shacks. A late night party at Anjuna Beach will make your day
					  </p>
					  </div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 3 - Vagator Beach and Arambol Beach</h4>
					</header>

					<div class="w3-container w3-small">
					<p>On this day, indulge in activities (depending on the package selected) or spend the day at leisure. Later, return to your hotel for a comfortable stay. Suggested: You can take a short trip to Vagator Beach and savour Greek cuisine at a nearby restaurant. Later in the day, you cab head out to one of the northern-most beaches of Goa, Arambol, to watch the sunset and relax under the clear sky. At night, you can visit a club in Arpora, as it is the perfect place to party. </p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 4 - Departure from Goa</h4>
					</header>

					<div class="w3-container w3-small">
					  <p>On this day, check-out from your hotel as per the hotel policies and plan your day according to the time of your flight. Once it is time for you to leave, you will get a private transfer from your hotel to the airport, for your flight. Suggested: You can spend the day relaxing at a nearby beach or you can try your luck in one of the Mandovi river casinos. You can indulge in mouthwatering seafood dishes at the several restaurants near the river.</p>
					</div>
				</div><br>
				
				
				
			</div>
		  
			
			</div>
		</div>
	</body>
</html>