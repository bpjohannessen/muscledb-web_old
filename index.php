<!DOCTYPE HTML>
<html>
<head>
	<!-- Meta -->
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<?php
	#
	# For adding meta tag for rendering in old browsers
	# instead of printing meta tag to all browsers
	# <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	#
	# Source of fix: http://www.validatethis.co.uk/news/fix-bad-value-x-ua-compatible-once-and-for-all/
	#
	if (isset($_SERVER['HTTP_USER_AGENT']) && 
    (strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE') !== false))
        header('X-UA-Compatible: IE=edge,chrome=1');
    ?>	
	<title>Muscle Search</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width">
	<link rel="icon" href="favicon.ico" type="image/x-icon">
	<!-- Load CSS -->
	<link href="resources/style/style.css" rel="stylesheet" type="text/css" />
	<!-- Load Fonts from Google API -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=PT+Sans:regular,bold" type="text/css" />
	<!-- Load jQuery library from Google API -->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<!-- Load custom js -->
	<script type="text/javascript" src="resources/scripts/custom.js"></script>
</head>
<body>
	<div id="main">

		<!-- Main Title With Icon -->
		<div class="icon"></div>
		<h1 class="title">Muscle search</h1>
		<h5 class="title">(searches through muscles and shows details)</h5>
		<h5 class="title"><a href="muscle.php">Show all muscles</a></h5>
		<h5 class="title"><a href="nerve.php">Show all nerves</a></h5>
		<h5 class="title"><a href="about.php">About</a></h5>

		<!-- Main Input -->
		<input type="text" id="search" autocomplete="off">

		<!-- Show Results -->
		<h4 id="results-text">Showing results for: <b id="search-string">Array</b></h4>
		<ul id="results"></ul>


	</div>
</body>
</html>