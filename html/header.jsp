
		<div class="w3-row w3-top w3-white" style="border-bottom:1px solid  rgb(18, 70, 128);" >
				<div class="w3-col l2 "><a href="../index.html"><img src="../img/logo5.jpg" /></a></div>
				<div class="w3-col l1 w3-text-white w3-center w3-medium" style="background-color: rgb(18, 70, 128);line-height:60px;height: 66px"><i class="fab fa-fort-awesome w3-large">&nbsp;</i>HOLIDAYS</div>
				<div class="w3-col l2 w3-right"><br>Hello 
	
				
				<div class="w3-dropdown-hover">
					<button class="w3-button w3-black"><% 
				String name = (String)session.getAttribute("name"); 
				out.print(name);
				%></button>
					<div class="w3-dropdown-content w3-bar-block w3-border">
					  <a href="#" class="w3-bar-item w3-button">Your Profile</a>
					  <a href="../order.jsp" class="w3-bar-item w3-button">Your booking</a>
					  <a href="../logout.jsp" class="w3-bar-item w3-button">Sign Out</a>
					</div>
				  </div>
				</div>
				
		</div><br><br><br>