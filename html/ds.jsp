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
        num2 = 13990;
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
							<li><img src="../images/ds/ds1.jpg" alt="Pahalgam"  title="Pahalgam" />
							</li>
							<li><img src="../images/ds/ds2.jpg" alt="Srinagar"  title="Srinagar" />
							</li>
							<li><img src="../images/ds/ds3.jpg" alt="Gulmarg"  title="Gulmarg" />
							</li>
							<li><img src="../images/ds/ds4.jpg" alt="Srinagar"  title="Srinagar" />
							</li>
							<li><img src="../images/ds/ds5.jpg" alt="Srinagar"  title="Srinagar" />
							</li>
						</ul>
						<ul class="amazingslider-thumbnails" style="display:none;">
							<li><img src="../images/ds/ds1-tn.jpg" alt="Port Blair"  title="Port Blair"  /></li>
							<li><img src="../images/ds/ds2-tn.jpg" alt="Srinagar"  title="Srinagar" /></li>
							<li><img src="../images/ds/ds3-tn.jpg" alt="Gulmarg"  title="Gulmarg"  /></li>
							<li><img src="../images/ds/ds4-tn.jpg" alt="Srinagar"  title="Srinagar" /></li>
							<li><img src="../images/ds/ds5-tn.jpg" alt="Srinagar"  title="Srinagar" /></li>
						</ul>
					<div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive jQuery Slider">Responsive jQuery Slider</a></div>
					</div>
				</div>
			</div>
			<div class="w3-col l3">
				<div class="w3-card-8">

				  <div class="w3-card-4 w3-border w3-border-lightgrey" style="width:100%">
					<header class="w3-container w3-light-grey">
					  <h3>Specticular Darjeeling & Shillong - 5nights</h3>
					</header>
					<div class="w3-container">
					  <h2 class="w3-text-pink">Rs 13,990<div class="w3-tiny w3-text-black">Price per Adult twin sharing basis.</div></h2>
					  <hr>
					  <p>Book now and get upto 10% cashback in your wallet.</p>
					  Day 1 - Gangtok<br>
					  Day 2 - Gangtok<br>
					  Day 3 - Pelling<br>
					  Day 4 - Darjeeling<br>
					  Day 5 - Darjeeling<br>
					  Day 6 - Gangtok<br><br>
					</div>
					
					<button id="show" class="hide w3-button w3-block w3-red"  style="text-shadow:1px 1px 0 #000;">Book Now</button>
					
					<form  id="book" method="post" action="../confirm.jsp" style="display:none;">
						<div class="w3-container">
						<input type="hidden" name="price" id="result2" />
						<input type="hidden" name="tname" value="Specticular Darjeeling & Shillong - 5nights" />
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
					<p>A storehouse of natural bounties and cultural heritage, North East India is spectacular in every sense of the word. A holiday in the Eastern Himalayas spent capturing magnificent vistas and making friends with locals is sure to be a unique experience. Pick this North East India package by Make My Trip to come here, without having to deal with the hassles of planning a tour.
<br>Covering Gangtok, Pelling and Darjeeling, this itinerary includes sightseeing at prominent points of interest like Flower Show Centre, Darap Village, Himalayan Mountaineering Institute and Darjeeling Zoological Park. A visit to Do-Drul Chorten, Namgyal Institute of Tibetology and Ghoom Monastery will be a glimpse into the rich Buddhist culture. Tashi Viewpoint, Bakthang Falls, Khecheopalri Lake and Kanchenjunga Falls are some natural marvels that you will get to behold while on this trip.
				<br><br></p></div><div style="height:5px;background-color:grey;"> </div>
				<div class=""><h3>Day-wise Itinerary</h3></div>
				
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 1 - Arrival in Bagdogra Airport, Gangtok</h4>
					</header>
					<div class="w3-container w3-small">	
					<p>After reaching the Bagdogra Airport, you would be greeted by our representative and then you would travel to the hotel in Gangtok. The pleasant drive should take around 4 hours.<br>After reaching Gangtok, you would check-in at the hotel and then, spend the rest of the day at leisure. You could choose to explore the city on your own in the evening or spend the time enjoying the view of the valley from the hotel. For those wishing to know if luck favours them, a visit to the Casino (own expense) can be an exciting way to enjoy your evening before ending the day with a comfortable overnight stay at the hotel with a delicious dinner.
					</p></div>
				</div><br>	
				
				<div class="w3-card-4">
					<header class="w3-container w3-green">	
					  <h4>DAY 2 - Gangtok </h4>
					</header>
					<div class="w3-container w3-small">	
						<p>After enjoying the breakfast at the hotel, you would be picked up from the hotel at around 9 am and leave for a visit to the Changu Lake.The lake derives its waters from melting snow of the mountains, a beautiful sight to witness. Earlier, the lamas used to study the colour of water and predict the future, a darker colour would indicate troublesome time in the coming year. Despite the colour that flows in the lake on your visit, the view of the lake and the surrounding mountains would surely leave a lasting impression.
					</p></div>
				</div><br>	
				
				<div class="w3-card-4">
					<header class="w3-container w3-green">	
					  <h4>DAY 3 - Gangtok - Namchi - Pelling (127 kilometres| 6 hours) | Sightseeing at Pahalgam</h4>
					</header>
					<div class="w3-container w3-small">	
						<p>In the morning after the breakfast, embark on a drive to Pelling which is approximately a six-hours from Gangtok. To cut the long journey short, enjoy a short stopover at the Char Dham & Samdruptse Hill in Namchi. At the Char Dham, you can see an 87 feet long statue of Lord Shiva surrounded by a replica of the 12 Jyotirlingas (a devotional object representing the god Shiva) and four Dhams (names of four pilgrimage sites in India). Apart from Chardham temple, here you can see Sai Baba Temple, Kirateshwar statue, etc. 
					</p></div>
				</div><br>
				
				<div class="w3-card-4">
					<header class="w3-container w3-green">	
					  <h4>DAY 4 - Pelling - Darjeeling (110 kilometres | 5 hours) </h4>
					</header>
					<div class="w3-container w3-small">	
						<p>After breakfast, proceed for half day sightseeing to Rimbi Waterfalls & Hydro Project, Khecheopalri Lake (30 Kms / 6000 Ft / 1829 Mts).Afternoon, depart for Darjeeling<br>Rambi Waterfall and Darap Village which is a tiny hamlet of the Limboo community and many other small families like Bhutias, Chettris, Tamangs, Rais, Gurungs and Lepcha. With the background of the beautiful hills, Darpa Village boasts of solitary places, far away from the urban cacophony. 
					</p></div>
				</div><br>
				
				<div class="w3-card-4">
					<header class="w3-container w3-green">	
					  <h4>DAY 5 - Darjeeling</h4>
					</header>
					<div class="w3-container w3-small">	
						<p>Early morning, approx. 4.00 AM, you will visit Tiger Hill before the break of dawn, to see the sun rise over Mount Everest, the highest mountain peak in the world (subject to clear weather).On your way back stop at the Ghoom Monastery, the holiest monastery in Darjeeling and Batasia Loop. Return to hotel for breakfast. You will be driven Japanese Temple, Peace pagoda, Himalayan Mountaineering Institute & Padmaja Naidu Himalayan Zoogical Park (Closed on Thursday).<br>One way Toy Train Joyride, Darjeeling to Ghoom or Ghoom to Darjeeling - Toy Train of Darjeeling Himalayan Railways (DHR) has always remained an unique experience to the tourists.
					</p></div>
				</div><br>	
				
				<div class="w3-card-4">
					<header class="w3-container w3-green">	
					  <h4>DAY 6 - Departure from Bagdogra Airport, Gangtok</h4>
					</header>
					<div class="w3-container w3-small">	
						<p>After a leisure breakfast, Our representative will drive to Bagdogra on time for flight to onward destination
					</p></div>
				</div><br>	
			</div>	
		</div>
		</div>
	</body>
<script>
function includeHTML() {
  var z, i, elmnt, file, xhttp;
  /*loop through a collection of all HTML elements:*/
  z = document.getElementsByTagName("*");
  for (i = 0; i < z.length; i++) {
    elmnt = z[i];
    /*search for elements with a certain atrribute:*/
    file = elmnt.getAttribute("include-html");
    if (file) {
      /*make an HTTP request using the attribute value as the file name:*/
      xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4) {
          if (this.status == 200) {elmnt.innerHTML = this.responseText;}
          if (this.status == 404) {elmnt.innerHTML = "Page not found.";}
          /*remove the attribute, and call this function once more:*/
          elmnt.removeAttribute("include-html");
          includeHTML();
        }
      }      
      xhttp.open("GET", file, true);
      xhttp.send();
      /*exit the function:*/
      return;
    }
  }
};
</script>
<script>
includeHTML();
</script>
</html>