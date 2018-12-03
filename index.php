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
<body>
	<div class="row-top">
		<div class="main">
			<div class="wrapper">
				<h1><a href="">Jeecy catering <br><span style="font-family: arial; font-size: 15px;">online ordering system</span></a></h1>
				<nav>
				  <ul class="menu">
					<li><a class="active" href="index.php">Home</a></li>
					<li><a href="menu.php">Menu</a></li>
					<li><a href="functionhall.php">Jeecy Facilities </a></li>
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
						<div id="slidercon">
							<div id="title">
								Delicious Experience
							</div>
							<?php
								include('connect.php');
								$result = $db->prepare("SELECT * FROM menu ORDER BY rand() LIMIT 4");
								$result->execute();
								for($i=0; $row = $result->fetch(); $i++){
							?>
							<div id="imgcon"><a rel="facebox" href="details.php?id=<?php echo $row['id']; ?>"><img src="menu/<?php echo $row['image']; ?>" width="150" height="150"></a></div>
							<?php
								}
							?>
							<div id="title">
								Order Status Inquiry
							</div>
							<form action="inquiry.php" method="post">
							<input type="text" name="res" placeholder="Enter Odering ID" style="padding-left: 7px; float: left; margin-left: 10px; margin-right: 10px; width: 196px;"><input type="submit" value="Find" style="float: left; width: 100px; height: 28px;" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
  <link rel="stylesheet" href="css/style1.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
  <section class="container">
    <a href="https://twitter.com/intent/tweet?url=http%3A%2F%2Fwww.cssflow.com%2Fsnippets%2Fshare-buttons&amp;via=CSSFlow&amp;text=CSS3%20snippet%3A%20share%20buttons" class="share-btn" target="_blank">
      <span class="share-btn-action share-btn-tweet">Tweet</span>
      <span class="share-btn-count">481</span>
    </a>
    <a href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.cssflow.com%2Fsnippets%2Fshare-buttons" class="share-btn" target="_blank">
      <span class="share-btn-action share-btn-like">Like</span>
      <span class="share-btn-count">516</span>
    </a>
    <a href="https://plus.google.com/share?url=http%3A%2F%2Fwww.cssflow.com%2Fsnippets%2Fshare-buttons" class="share-btn" target="_blank">
      <span class="share-btn-action share-btn-plus">+1</span>
      <span class="share-btn-count">234</span>
    </a><br><br>
  &copy; Jeecy catering online ordering system</section>
</body>
</php>