<html>
<head>
<title>Jeecy catering online ordering system</title>
<link rel="icon" type="image/png" href="images/favicon.png" />
<link href="css/style.css" media="screen" rel="stylesheet" type="text/css" />
<!--sa poip up-->
<link href="admin/src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="admin/lib/jquery.js" type="text/javascript"></script>
<script src="admin/src/facebox.js" type="text/javascript"></script>
<script type="text/javascript">
  jQuery(document).ready(function($) {
    $('a[rel*=facebox]').facebox({
      loadingImage : 'admin/src/loading.gif',
      closeImage   : 'admin/src/closelabel.png'
    })
  })
</script>
</head>
<body bgcolor="#00CC66">
	<div class="row-top">
		<div class="main">
			<div class="wrapper">
				<h1><a href="">Jeecy catering<br><span style="font-family:Georgia; font-size: 15px;">online ordering system</span></a></h1>
				<nav>
				  <ul class="menu">
					<li><a href="index.php">Home</a></li>
					<li><a href="menu.php">Menu</a></li>
					<li><a class="active" href="functionhall.php">Jeecy Facilities </a></li>
					<li><a href="reservation.php">Place Order</a></li>
					<li><a href="contact.php">Contact Us</a></li>
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
						<div id="slidercon" style="height: 359px; margin-top: 52px;">
							<div id="title">
								Jeecy Facilities 
							</div>
							<?php
								include('connect.php');
								$result = $db->prepare("SELECT * FROM functionhall ORDER BY rand() LIMIT 4");
								$result->execute();
								for($i=0; $row = $result->fetch(); $i++){
							?>
							<div id="imgcon"><a rel="facebox" href="functionhalldetails.php?id=<?php echo $row['id']; ?>"><img src="images/FUNC/<?php echo $row['picture']; ?>" width="150" height="150"></a></div>
							<?php
								}
							?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">&copy; Jeecy catering online ordering system</div>
</body>
</php>