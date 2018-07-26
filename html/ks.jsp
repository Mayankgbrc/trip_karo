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
        num2 = 17990;
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
							<li><img src="../images/ks/ks1.jpg" alt="Pahalgam"  title="Pahalgam" />
							</li>
							<li><img src="../images/ks/ks2.jpg" alt="Srinagar"  title="Srinagar" />
							</li>
							<li><img src="../images/ks/ks3.jpg" alt="Gulmarg"  title="Gulmarg" />
							</li>
							<li><img src="../images/ks/ks4.jpg" alt="Srinagar"  title="Srinagar" />
							</li>
							<li><img src="../images/ks/ks5.jpg" alt="Srinagar"  title="Srinagar" />
							</li>
						</ul>
						<ul class="amazingslider-thumbnails" style="display:none;">
							<li><img src="../images/ks/ks1-tn.jpg" alt="Port Blair"  title="Port Blair"  /></li>
							<li><img src="../images/ks/ks2-tn.jpg" alt="Srinagar"  title="Srinagar" /></li>
							<li><img src="../images/ks/ks3-tn.jpg" alt="Gulmarg"  title="Gulmarg"  /></li>
							<li><img src="../images/ks/ks4-tn.jpg" alt="Srinagar"  title="Srinagar" /></li>
							<li><img src="../images/ks/ks5-tn.jpg" alt="Srinagar"  title="Srinagar" /></li>
						</ul>
					<div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive jQuery Slider">Responsive jQuery Slider</a></div>
					</div>
				</div>
			</div>
			<div class="w3-col l3">
				<div class="w3-card-8">

				  <div class="w3-card-4 w3-border w3-border-lightgrey" style="width:100%">
					<header class="w3-container w3-light-grey">
					  <h3>Charismatic Kashmir - (5 Nights)</h3>
					</header>
					<div class="w3-container">
					  <h2 class="w3-text-pink">Rs 17,990<div class="w3-tiny w3-text-black">Price per Adult twin sharing basis.</div></h2>
					  <hr>
					  <p>Book now and get upto 10% cashback in your wallet.</p>
					  Day 1 - Srinagar<br> 
					  Day 2 - Gulmarg<br> 
					  Day 3 - Pahalgram <br>
					  Day 4 - Pahalgram <br>
					  Day 5 - Srinagar<br>
					  Day 6 - Srinagar<br><br>
					</div>
					<button id="show" class="hide w3-button w3-block w3-red"  style="text-shadow:1px 1px 0 #000;">Book Now</button>
					
					<form  id="book" method="post" action="../confirm.jsp" style="display:none;">
						<div class="w3-container">
						<input type="hidden" name="price" id="result2" />
						<input type="hidden" name="tname" value="Charismatic Kashmir - (5 Nights)" />
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
					Kashmir, often referred to as Paradise on Earth, is a magical land of snow-clad mountains, enchanting lakes, sprawling meadows and undisturbed stillness. Immerse in the unmatched beauty of this place with this amazing Kashmir package by MakeMyTrip. The adventure commences in Srinagar with a shikara ride on Dal Lake. Dwelling in a houseboat will perhaps be the most exciting overnight stay of your life. The tour then brings you to the ski resort of Gulmarg and the beautiful hill station of Pahalgam. A sightseeing trip planned in the latter will take you to Chandanwadi, Betaab Valley and Aru Valley. The excursion to Sonamarg will give you a chance to see Thajiwas Glacier. Furthermore, the prominent attractions in Srinagar, such as Shankaracharya Hill Temple and Mughal Gardens, will also be covered on this Kashmir tour.
				</div>
				<hr style="height:5px;background-color:grey" >
				<div class=""><h3>Day-wise Itinerary</h3></div>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 1 - Arrival in Srinaga</h4>
					</header>

					<div class="w3-container w3-small">
					<p>Board your flight to Srinagar. Guests can purchase in-flight meals on direct payment. On arrival, you will be welcomed by a MakeMyTrip representative (outside the airport) who will transfer you to Jetty at Dal lake. Upon arrival at the Jetty, transfer to your houseboat and check in. Enjoy lunch/Evening snacks (depending on your arrival time) on the houseboat. Enjoy 1 hour  shikara ride in the evening. After that enjoy Dinner and overnight at the houseboat.
					</p>  
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 2 - Srinagar - Gulmarg (52 kms | 2-3 hours) </h4>
					</header>

					<div class="w3-container w3-small">
					  <p>After breakfast, check out of the houseboat at Srinagar and proceed to Gulmarg.  Gulmarg is located at an average elevation of 2,690 m (8,825 ft). Spend the day witnessing the picturesque locales like the Golf Course (Golf kit and caddy charges optional & extra). Also take the exhilarating cable car ride to Khilanmarg Snow Point (Gondola ride up to Khilanmarg is not included in the itinerary and Gondola ride strongly depends on weather conditions) Lunch will be served at the Gulmarg Hotel. Enjoy dinner and a comfortable overnight stay.</p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 3 - Gulmarg - Pahalgam | Sightseeing at Pahalgam</h4>
					</header>

					<div class="w3-container w3-small">
					<p>After breakfast, check out of the hotel at Gulmarg and proceed to Pahalgam. Pahalgam is in Anantnag District. It is a popular tourist destination, and every year, many tourists visit it. Pahalgam has an average elevation of 8989 feet. The town of Pahalgam (Village of Shepherds) offers breath-taking views. One can just relax in the hotels or enjoy water rafting etc. Pahalgam is also the entry point for the famous Amarnath Cave, a holy site for Hindus. Lunch and Dinner at hotel. </p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 4 - Pahalgam | Local Sightseeing </h4>
					</header>

					<div class="w3-container w3-small">
					  <p> After breakfast, embark on an excursion to Chandanwadi (3288 meters), Betaab Valley and Aru Valley. Lunch will be served at the Pahalgam Hotel.  Surrounded by snow-covered mountain peaks and dense pine and deodar forests, this valley is the mouth of River Sheshnag. Later, enjoy the evening at leisure. Have dinner and enjoy a comfortable overnight stay at your hotel.
Enjoy an early morning horse ride to Baisaran (Mini Switzerland) from your hotel in Pahalgam. Return for breakfast at the hotel.</p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 5 - Pahalgam - Srinagar (96 kms | 3 hours)</h4>
					</header>

					<div class="w3-container w3-small">
					<p>After breakfast, check out of the hotel in Pahalgam and proceed to Srinagar. On arrival, begin your excursion to Shankaracharya Hill Temple and Grand Mughal Gardens (Chashme Shahi, Nishat Bagh & Shalimar Bagh).
<br>Enjoy a photoshoot at the Mughal Gardens in a Kashmiri Dress.
<br>Lunch will be served at your hotel in Srinagar. Dinner and overnight at hotel.
					</p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 6 - Departure from Srinagar</h4>
					</header>

					<div class="w3-container w3-small">
					<p>After buffet breakfast you will be transferred to Srinagar airport to board your flight for respective hub. Due to the extremely strict security measures at the airport during peak season, guests are requested to leave for the airport at least 4 hours prior to departure. We are forced to enforce this rule as there are 4 security barriers to pass before reaching the airport. Also, there are regular traffic jams for a couple of kilometers outside the airport.
					</p>
					</div>
				</div>
				
			</div>
		  
			
			</div>
		</div>
	</body>
</html>