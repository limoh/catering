<html>
<head>
<title>Jeecy catering online ordering system</title>
<link rel="icon" type="image/png" href="images/favicon.png" />
<link href="css/style.css" media="screen" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="row-top">
		<div class="main">
			<div class="wrapper">
				<h1><a href="">Jeecy catering<br><span style="font-family: arial; font-size: 15px;">online ordering system</span></a></h1>
				<nav>
				  <ul class="menu">
					<li><a href="index.php">Home</a></li>
					<li><a href="menu.php">Menu</a></li>
					<li><a href="functionhall.php">Jeecy Facilities </a></li>
					<li><a href="reservation.php">Place Order</a></li>
					<li><a class="active" href="contact.php">Contact Us</a></li>
					<li><a href="loginform.php">login</a></li>
				  </ul>
				</nav>
			</div>
		</div>
	</div>
	<div class="row-bot">
		<div class="row-bot-bg">
			<div class="maincon">
				<div class="slider-wrapper">
					<div class="slider">
						<div id="slidercon">
							<div id="title">
								Our Contacts
							</div>
							<div id="map">
								<iframe width="308" height="135" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Verbena+St.,+Bacolod+City,+Negros+Occidental,+Western+Visayas,+Philippines&amp;aq=0&amp;oq=verben+Bacolod+City+Negros+Occidental&amp;sll=10.662548,122.95362&amp;sspn=0.012842,0.021136&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear=Verbena+St,+Bacolod,+Negros+Occidental,+Kanlurang+Kabisayaan,+Philippines&amp;ll=10.661873,122.950401&amp;spn=0.011387,0.02635&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
							</div>
							<div style="color: rgb(255, 255, 255); margin-left: 10px; width: 309px;">
							Address : Jeecy catering online ordering system<br>
							Tel. No. : 072-300-1853<br>
							Email :  cyshee12@gmail.com<br>
							Facebook :  facebook.com/cyshee008<br>
							<form action="savecomment.php" method="post" style="margin-top: 10px; margin-bottom: 0px;">
								<span id="clabel">Subject</span>
								<select name="subject" style="width: 205px; padding:3px 0;">
								<option>Food</option>
								<option>Services</option>
								</select><br><div style="height:3px;"></div>
								<span id="clabel">Name</span><input type="text" method="post" name="name" style="width: 210px; padding:3px 0;"><br><div style="height:3px;"></div>
								<span id="clabel">Comment</span><textarea name="comment" style="width: 210px; padding:3px 0; height: 42px;"></textarea><br><div style="height:3px;"></div>
								<span id="clabel">&nbsp;</span><input type="submit" value="Submit" style="width: 210px;" />
							</form> 
							
							<?php
							session_start();
							?>
							<?php
							if( isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) >0 ) {
								foreach($_SESSION['ERRMSG_ARR'] as $msg) {
									echo '<span style="color:#ffffff; font-weight: bold;">',$msg,'</span>'; 
								}
								unset($_SESSION['ERRMSG_ARR']);
							}
							?>
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">&copy; Jeecy catering online ordering system</div>
</body>
</php>