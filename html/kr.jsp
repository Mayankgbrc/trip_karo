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
        num2 = 19990;
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
							<li><img src="../images/kr/kr5.jpg" alt="Cochin"  title="Cochin" />
							</li>
							<li><img src="../images/kr/kr1.jpg" alt="Munnar"  title="Munnar" />
							</li>
							<li><img src="../images/kr/kr3.jpg" alt="Cochin"  title="Cochin" />
							</li>
							<li><img src="../images/kr/kr4.jpg" alt="Allepy"  title="Allepy" />
							</li>
							<li><img src="../images/kr/kr6.jpg" alt="Thekkady"  title="Thekkady" />
							</li>
						</ul>
						<ul class="amazingslider-thumbnails" style="display:none;">
							<li><img src="../images/kr/kr5-tn.jpg" alt="Cochin" title="Cochin" /></li>
							<li><img src="../images/kr/kr1-tn.jpg" alt="Munnar" title="Munnar" /></li>
							<li><img src="../images/kr/kr3-tn.jpg" alt="Cochin" title="Cochin" /></li>
							<li><img src="../images/kr/kr4-tn.jpg" alt="Allepy" title="Allepy" /></li>
							<li><img src="../images/kr/kr6-tn.jpg" alt="Thekkady" title="Thekkady" /></li>
						</ul>
					<div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive jQuery Slider">Responsive jQuery Slider</a></div>
					</div>
				</div>
			</div>
			<div class="w3-col l3">
				<div class="w3-card-8">

				  <div class="w3-card-4 w3-border w3-border-lightgrey" style="width:100%">
					<header class="w3-container w3-light-grey">
					  <h3>Kerala Holiday - (4 Nights)</h3>
					</header>
					<div class="w3-container">
					  <h2 class="w3-text-pink">Rs 19,990<div class="w3-tiny w3-text-black">Price per Adult twin sharing basis.</div></h2>
					  <hr>
					  <p>Book now and get upto 10% cashback in your wallet.</p>
					  Day 1 - Cochin<br> 
					  Day 2 - Munnar<br> 
					  Day 3 - Thekkady <br>
					  Day 4 - Alleppy <br>
					  Day 5 - Cochin<br><br>
					</div>
					
					<button id="show" class="hide w3-button w3-block w3-red"  style="text-shadow:1px 1px 0 #000;">Book Now</button>
					
					<form  id="book" method="post" action="../confirm.jsp" style="display:none;">
						<div class="w3-container">
						<input type="hidden" name="price" id="result2" />
						<input type="hidden" name="tname" value="Kerala Holiday - (4 Nights)" />
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
				<div class="w3-small">Reinvent romance in beautiful surroundings with the Kerala package for couples! On your picturesque drive to the pretty hill station of Munnar, get mesmerized by the Valara Waterfalls. Walk through the tea plantations of Devikulam and be charmed by the Tata Tea Museum. Enjoy the serenity of the Eravikulam National Park earmarked by rare flora and fauna. Visit the stunning Echo Point and enjoy the sunset at Mattupetty Lake and dam. Witness exotic wildlife at Thekkady and be charmed with a cruise down the enchanting Periyar Lake. Also visit the traditional Kalari Show. Cruise through the night on a houseboat in the backwaters in Alleppy while watching the beautiful sunset at the Alappuzha Beach, after seeing the Krishnapuram Palace and the holy Mullakkal Raja Rajeswari Temple.</div>
				<hr>
				<div class=""><h3>Day-wise Itinerary</h3></div>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 1 - COCHIN to MUNNAR BY ROAD (135 Kms/ 5 Hrs)</h4>
					</header>

					<div class="w3-container w3-small">
					  <p>Board your morning flight as per the schedule and arrive in Cochin. On reaching you will be met by and transferred to Munnar, a beautiful hill station. Enroute, halt for refreshments and visit Valara Waterfalls. Arrive and check-in at the hotel. Visit the tea plantations in the evening at Devikulam. 
Later you may go to visit the local market and buy aromatic tea from the shops here. Spend a comfortable overnight stay at the hotel.</p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 2 - MUNNAR </h4>
					</header>

					<div class="w3-container w3-small">
					  <p>After breakfast, take a sightseeing tour of Munnar visiting the Tata Tea Museum and enjoy the beautiful serenity of Munnar (famous for its tea plantations) (closed on Monday) and Eravikulam National Park to get a view of variety of flora and fauna. Enjoy local food / cuisine at a good restaurant (personal expense). Later in the afternoon visit Mattupetty Lake and Dam as well as Echo Point which is famous for its ‘echo phenomenon’. In the evening return to the hotel and enjoy the rest of the evening at leisure and a comfortable overnight at the hotel. </p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 3 - MUNNAR to THEKKADY BY ROAD (110 Kms / 4.5 Hrs)</h4>
					</header>

					<div class="w3-container w3-small">
					  <p>After an early breakfast, check out of the hotel and drive to Thekkady. Thekkady is synonymous with wildlife and nature treks. Enroute, visit Chillies Spice Garden. Arrive in Thekkady and check-in to your hotel and have lunch (personal expense). In the afternoon, proceed for a boat cruise at Periyar Lake in Thekkady, a soul stirring tour (on direct payment basis)

Afterwards, you can do a spice plantation tour (personal expense) 

Later in the evening, you may go to the theatre (non-air-conditioned/ on direct payment) to experience the traditional Kalari Show [on direct payment] or get involved in some shopping or opt for an Elephant Ride (on direct payment basis) in the evening. Return to the hotel in the evening and enjoy time at leisure. Overnight stay at the hotel</p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 4 - THEKKADY to ALLEPEY BY ROAD (151 Kms / 5 Hrs))</h4>
					</header>

					<div class="w3-container w3-small">
					  <p>After an early breakfast, check out of the hotel in Thekkady Afterwards proceed to Aleppy known as the ‘Venice of the East’. Alleppey is well known for backwaters and houseboat 

On reaching check in to the Houseboat and enjoy the rest of the day in Houseboat. Enjoy Lunch & dinner and a comfortable overnight stay at the Houseboat.



In case of stay at a hotel / resort you may visit the Mullakkal Raja Rajeswari Temple, Krishnapuram Palace, and opt for a short boat cruise through the back waters (on direct payment) .In the evening visit the Alappuzha beach and enjoy the sunset. Overnight stay at the hotel.</p>
					</div>
				</div><br>
				<div class="w3-card-4">
					<header class="w3-container w3-green">
					  <h4>DAY 5 - ALLEPPY- COCHIN BY ROAD (86 Kms / 2.5 Hrs)</h4>
					</header>

					<div class="w3-container w3-small">
					  <p>After breakfast, check out of the Houseboat / resort / hotel from Allepey and drive to Cochin. </p>
					</div>
				</div>
				
			</div>
		  
			</div>
			
		</div>
	</body>
</html>