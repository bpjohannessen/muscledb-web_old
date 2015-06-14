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
	<title>About</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width">
	<link rel="icon" href="favicon.ico" type="image/x-icon">
	<!-- Load CSS -->
	<link href="./resources/style/style.css" rel="stylesheet" type="text/css" />
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
		<h1 class="title">About</h1>
        <h5 class="title"><a href="index.php">Back to search</a></h2>
        <h5 class="title"><a href="muscle.php">Show all muscles</a></h5>
        <h5 class="title"><a href="nerve.php">Show all nerves</a></h5>
		<p class="title" style="padding-top: 10px;">This site contains a real-time search for (mainly) skeletal muscles. It is created as a collaboration by one medical student and one computer engineer.</p>
		<p class="title" style="padding-top: 10px; padding-bottom: 10px; font-weight: bold;">The contributors to the project are:</p>

        <ul id="credits" class="title" style="padding-left: 30px;">
            <li><span class="bold">Bjørn-Petter JOHANNESSEN, medical student</span>, idea, lead designer, lead programmer;</li>
            <li><span class="bold">Andreas MOSTI, BSc</span>, programming advisor, infrastructure, Vagrant, dbDump, the one who have a good answer to all problems.</li>
        </ul>

        <p class="title" style="padding-top: 10px;"><span class="bold">Disclaimer:</span> This site should not, under any circumstances, be used as a source for medical knowledge. It is created as an information purpose only. If you need medical advise, please contact a medical doctor.</p>


	</div>
</body>
</html>
