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
        num2 = 27990;
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
							<li><img src="../images/ai/ai5.jpg" alt="Port Blair"  title="Port Blair" />
							</li>
							<li><img src="../images/ai/ai1.jpg" alt="Havelock"  title="Havelock" />
							</li>
							<li><img src="../images/ai/ai3.jpg" alt="Havelock"  title="Havelock" />
							</li>
							<li><img src="../images/ai/ai4.jpg" alt="Neil Island"  title="Neil Island" />
							</li>
							<li><img src="../images/ai/ai6.jpg" alt="Port Blair"  title="Port Blair" />
							</li>
						</ul>
						<ul class="amazingslider-thumbnails" style="display:none;">
							<li><img src="../images/ai/ai5-tn.jpg" alt="Port Blair"  title="Port Blair"  /></li>
							<li><img src="../images/ai/ai1-tn.jpg" alt="Havelock"  title="Havelock" /></li>
							<li><img src="../images/ai/ai3-tn.jpg" alt="Havelock"  title="Havelock" /></li>
							<li><img src="../images/ai/ai4-tn.jpg" alt="Neil Island"  title="Neil Island" /></li>
							<li><img src="../images/ai/ai6-tn.jpg" alt="Port Blair"  title="Port Blair" /></li>
						</ul>
					<div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive jQuery Slider">Responsive jQuery Slider</a></div>
					</div>
				</div>
			</div>
			<div class="w3-col l3">
				<div class="w3-card-8">

				  <div class="w3-card-4 w3-border w3-border-lightgrey" style="width:100%">
					<header class="w3-container w3-light-grey">
					  <h3>Exotic Andaman with Neil Island Stay - (5 Nights)</h3>
					</header>
					<div class="w3-container">
					  <h2 class="w3-text-pink">Rs 27,990<div class="w3-tiny w3-text-black">Price per Adult twin sharing basis.</div></h2>
					  <hr>
					  <p>Book now and get upto 10% cashback in your wallet.</p>
					  Day 1 - Port Blair<br> 
					  Day 2 - Havelock<br> 
					  Day 3 - Havelock <br>
					  Day 4 - Niel Island <br>
					  Day 5 - Port Blair<br>
					  Day 6 - Port Blair<br><br>
					</div>
					<button id="show" class="hide w3-button w3-block w3-red"  style="text-shadow:1px 1px 0 #000;">Book Now</button>
					
					<form  id="book" method="post" action="../confirm.jsp" style="display:none;">
						<div class="w3-container">
						<input type="hidden" name="price" id="result2" />
						<input type="hidden" name="tname" value="Exotic Andaman with Neil Island Stay - (5 Nights)" />
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
				<div class="w3-small">Once a mysterious place and later a British penal settlement, the Andaman Islands are now a popular holiday destination. Pick this Andaman travel package, covering Port Blair, Havelock Island and Neil Island, and see for yourself what draws tourists here in such a high number. The stuffy cells of Cellular Jail will tell you about the plight of the political activists, imprisoned here by the British. Also on the holiday, make sand castles, swim in the sea, relax under palms or take a walk at Corbyns Cove, Bharatpur, Radhanagar, Kalapathar and Laxmanpur beaches. Witnessing a sublime sunset at Chidiya Tapu will be one of the fondest memories you make on your holiday.</div>
				<hr style="height:5px;background-color:grey" >
				<div class=""><h3>Day-wise Itinerary</h3></div>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 1 - Arrival at Port Blair</h4>
					</header><div class="w3-container w3-small">
					  <p>Board your flight from your respective hub and arrive in Port Blair. We will meet you and transfer you to your hotel.Relax for some time at your hotel property and have lunch (at direct payment basis). Late afternoon, start your Andaman sojourn with a visit to the iconic Cellular Jail- a place that is full of stories of countless martyrs of the Indian independence struggle. A tour of the jail will give you a brief idea about happenings in the jail prior to India’s independence.</p>
					</div></div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 2 - Port Blair - Havelock by ferry (1.5 Hours) </h4>
					</header>

					<div class="w3-container w3-small">
					  <p>After breakfast, check-out from the hotel and proceed to visit Ross Island. This small island, located just across the Water Sports complex at Port Blair, is a peaceful destination famous for its friendly flocks of deer and lush green walking trails. It now stands as a ruin of the bygone days with the old structures almost in debris. Later, board the ferry for onward journey to Havelock Island.Upon arrival, you will be taken to Something Different, a beach side café for complimentary high tea with snacks. Later, proceed for check-in at your hotel. Rest of the day at leisure. Dinner and a comfortable overnight stay at your hotel property </p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 3 - Havelock</h4>
					</header>

					<div class="w3-container w3-small">
					<p>After breakfast at the hotel, proceed to Havelock jetty for excursion to Elephant Beach. 

<br>At Elephant beach enjoy complimentary Snorkeling. Also, you may opt for other water sports available at the beach (on direct payment basis). Return to the hotel for relaxation and lunch (At direct payment basis)

<br>Later, you will proceed to visit one of the best beaches in Asia –Radhanagar Beach. After savoring the sights of the splendid beach, return to your hotel, enjoy your dinner and have a comfortable overnight stay.

<br>Important Note: If Elephant beach is non-operational, Nemo Reef/ Kala Patthar will be arranged as an alternative </p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 4 - Havelock - Neil Island (Ferry 1.5 hours)</h4>
					</header>

					<div class="w3-container w3-small">
					  <p>Enjoy your breakfast at the hotel. Get transferred to the jetty for the ferry to Port Blair. Upon arrival in Port Blair check-in to your hotel where you can have lunch (at direct payment basis).
<br>Post your meal you will head out to Chidiya Tapu, a pristine beach 40 km away from city center, famous for some incredible sunset views. The beauty of the sunset against the backdrop of the kaleidoscopic sky will for long remain etched in your Andaman trip memories.
<br>Later, visit the Kala Pani Museum, which is a newly opened and unique private history museum in the country. Set up in a three storied building, the incredible history of our country is brought alive through miniature life size models, dioramas, and rare archival photographs and paintings. The museum also includes many rare original documents of Colonial and Japanese periods, including many documentaries and films related to the Island and the Indian Freedom Struggle.
<br>A visit to this museum will give a great context and culmination to your holiday. Return to your hotel for dinner and comfortable overnight stay.</p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 5 - Neil Island to Port Blair (Ferry 1.5 hours)</h4>
					</header>

					<div class="w3-container w3-small">
					<p>Enjoy your breakfast at the hotel. Get transferred to the jetty for the ferry to Port Blair. Upon arrival in Port Blair check-in to your hotel where you can have lunch (at direct payment basis).
<br>Post your meal you will head out to Chidiya Tapu, a pristine beach 40 km away from city center, famous for some incredible sunset views. The beauty of the sunset against the backdrop of the kaleidoscopic sky will for long remain etched in your Andaman trip memories.
					</p>
					</div>
				</div>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 6 - Departure from Port Blair</h4>
					</header>

					<div class="w3-container w3-small">
					<p>Post breakfast, check-out from the hotel & get transferred to the airport. Board the flight for your return journey.
<br>We hope you have a wonderful trip! 
					</p>
					</div>
					
				</div>
				
			</div>
		  
			</div>
			
		</div>
	</body>
</html>