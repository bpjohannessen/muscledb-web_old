<?php

/************************************************
	The Search PHP File
************************************************/


/************************************************
	MySQL Connect
************************************************/

// Credentials
$dbhost = "localhost";
$dbname = "db_muscles";
$dbuser = "";
$dbpass = "";

//	Connection
global $tutorial_db;

$tutorial_db = new mysqli();
$tutorial_db->connect($dbhost, $dbuser, $dbpass, $dbname);
$tutorial_db->set_charset("utf8");

//	Check Connection
if ($tutorial_db->connect_errno) {
    printf("Connect failed: %s\n", $tutorial_db->connect_error);
    exit();
}

// Get Search
$search_string = preg_replace("/[^A-Za-z0-9]/", " ", $_GET['m']);
$search_string = $tutorial_db->real_escape_string($search_string);

// Check Length More Than One Character
if (strlen($search_string) >= 1 && $search_string !== ' ') {

	$html =  '';
	$html .= '<div class="icon"></div>';
	$html .= '<h2 class="title">Muscle details</h2>';
	$html .= '<h1 class="title">muscleLatName</h1>';
	#$html .= '<h5 class="title">muscleEngName</h5>';
	$html .= '<h3 class="title"><b>Origo:</b> muscleOrigo</h2>';
	$html .= '<h3 class="title"><b>Insertio:</b> muscleInsertio</h2>';
	$html .= '<h3 class="title"><b>Function:</b> muscleFunctio</h2>';
	$html .= '<br /><h4 class="title"><a href=index.html>New search</a></h4>';
	
	// Build Query
	$query = 'SELECT * FROM tbl_muscles WHERE id = '.$search_string;
	
	// Do Search
	$result = $tutorial_db->query($query);
	while($results = $result->fetch_array()) {
		$result_array[] = $results;
	}

	// Check If We Have Results
	if (isset($result_array)) {
		foreach ($result_array as $result) {

			// Format Output Strings And Hightlight Matches
			$display_latname = $result['lat_name'];
			$display_engname = $result['name'];
			$display_origo = $result['origo'];
			$display_insertio = $result['insertio'];
			$display_functio = $result['functio'];
			
			#$display_function = preg_replace("/".$search_string."/i", "<b class='highlight'>".$search_string."</b>", $result['functio']);
			#$display_name = preg_replace("/".$search_string."/i", "<b class='highlight'>".$search_string."</b>", $result['lat_name']);
			#$display_url = 'http://fettenajs.com/med/Code/muscle.php?m='.urlencode($result['id']);

			// Insert Name
			$output = str_replace('muscleLatName', $display_latname, $html);
			#$output = str_replace('muscleEngName', $display_engname, $output);
			$output = str_replace('muscleOrigo', $display_origo, $output);
			$output = str_replace('muscleInsertio', $display_insertio, $output);
			$output = str_replace('muscleFunctio', $display_functio, $output);

			// Insert Function
			#$output = str_replace('functionString', $display_function, $output);

			// Insert URL
			#$output = str_replace('urlString', $display_url, $output);

			// Output
			
			#echo($output);
		}
	}else{
		echo"Nada";
	}
	
	
} else {
	$output =  '';
	$output .= '<div class="icon"></div>';
	$output .= '<h1 class="title">Muscle details</h1>';
	$output .= '<h5 class="err">No muscle specified!</h5>';
}

/************************************************
	Search Functionality
************************************************/


?>

<!DOCTYPE HTML>
<html>
<head>
	<!-- Meta -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Live Search Tutorial</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width">
	<link rel="icon" href="favicon.ico" type="image/x-icon">
	<!-- Load CSS -->
	<link href="resources/style/style.css" rel="stylesheet" type="text/css" />
	<!-- Load Fonts -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=PT+Sans:regular,bold" type="text/css" />
	<!-- Load jQuery library -->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<!-- Load custom js -->
	<script type="text/javascript" src="resources/scripts/custom.js"></script>
</head>
<body>


	<div id="main">

		<?php echo $output; ?>
		



<?php
/*
<!-- Main Title -->
<div class="icon"></div>
		<h1 class="title">Muscle details</h1>
		<h5 class="title">(M. masseter)</h5>




		<!-- Main Input -->
		<input type="text" id="search" autocomplete="off">

		<!-- Show Results -->
		<h4 id="results-text">Showing results for: <b id="search-string">Array</b></h4>
		<ul id="results"></ul>
*/
?>

	</div>

</body>
</html>