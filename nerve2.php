<?php

/************************************************
	This file shows the nerve's details.
	I.e. Latin name, English name and which
	muscles that are innervated
************************************************/


// MySQL connection

// Credentials
require_once("db_cred.php");

//	Connection
global $db;

$db = new mysqli();
$db->connect($dbhost, $dbuser, $dbpass, $dbname);
$db->set_charset("utf8");

//	Check Connection
if ($db->connect_errno) {
    printf("Connect failed: %s\n", $db->connect_error);
    exit();
}

// The search string is $_GET['n'] and is escaped
$search_string = preg_replace("/[^A-Za-z0-9]/", " ", $_GET['n']);
$search_string = $db->real_escape_string($search_string);

// Check Length More Than One Character
if (strlen($search_string) >= 1 && $search_string !== ' ') {

	$html  =  '';
	$html .= '<div class="icon"></div>';
	$html .= '<h2 class="title">Nerve details</h2>';
	$html .= '<h1 class="title">nerveLatName</h1>';
	$html .= '<h3 class="title" style="font-style: italic;">nerveName</h3>';
	$html .= '<h3 class="title" style="margin-top: 10px; margin-bottom: 10px;">The following muscles are innervated by this nerve:</h3>';
	$html .= '<ul class="results">';
	// The placeholder will be replaced by a list off all muscles innervated by the nerve
	$html .= 'musclesPlaceholder';
	$html .= '</ul>';

	$html .= '<br /><h4 class="title"><a href=index.php>New search</a></h4>';
	
	// Build Query
	$nervesql = 'SELECT * FROM tbl_nerves WHERE id = '.$search_string;
	
	// Do Search
	$nervequery = $db->query($nervesql);
	while($nerveresult = $nervequery->fetch_array()) {
		$nervearray[] = $nerveresult;
	}

	// Check If We Have Results
	if (isset($nervearray)) {
		foreach ($nervearray as $nerveresult) {

			// Create simpler variable names from the query
			
			$nerve_id = $nerveresult['id'];
			$nerve_latname = $nerveresult['lat_name'];
			$nerve_name = $nerveresult['name'];
			
			// Insert Name, English Name, Origo, Insertio, Functio and Nerve Innervation
			$output = str_replace('nerveLatName', $nerve_latname, $html);
			$output = str_replace('nerveName', $nerve_name, $output);
			
			// Query for all muscles innervated by this nerve
			$musclesql = 'SELECT * FROM tbl_muscles WHERE nerve = '.$nerve_id;
			
			// Do Search
			$musclequery = $db->query($musclesql);
			while($muscleresult = $musclequery->fetch_array()) {
			
				$muscle_latname = $muscleresult['lat_name'];
				$muscle_id = $muscleresult['id'];
				$musclesoutput .= '';
				$musclesoutput .= '<li class="result">';
				$musclesoutput .= '<h3 class="title"><a href="muscle.php?m='.$muscle_id.'">';
				$musclesoutput .= $muscle_latname;
				$musclesoutput .= '</a></h3>';
				$musclesoutput .= '</li>';
				
			}
		}
		$output = str_replace('musclesPlaceholder', $musclesoutput, $output);
		
	} else {
		header("Location: index.php");
	}
	
} else {
	
	// No nerve (nerve.php?n=x) is specified. Tell the user about it, give a link for "go back" and print all nerves
	$output  =  '';
	$output .= '<div class="icon"></div>';
	$output .= '<h1 class="title">Nerve details</h1>';
	$output .= '<h5 class="err" style="margin-bottom: 10px;">No nerve specified! <a href="index.php">Go back!</a></h5>';
	
	// Build query – notice double s!
	$allnervessql = 'SELECT * FROM tbl_nerves ORDER by lat_name ASC';
	
	// Do search	
	$allnervesquery = $db->query($allnervessql);
	while($allnervesresult = $allnervesquery->fetch_array()) {
		$nerve_latname = $allnervesresult['lat_name'];
		$nerve_id = $allnervesresult['id'];
		$output .= '<h3 class="title"><a href="nerve.php?n='.$nerve_id.'">'.$nerve_latname.'</a></h5>';

        // Build query to list muscles for the nerve

        $musclesql = 'SELECT * FROM tbl_muscles WHERE nerve = '.$nerve_id.' ORDER by lat_name ASC';
        // Do search
        $musclequery = $db->query($musclesql);
        while($muscleresult = $musclequery->fetch_array()) {
            $muscle_latname = $muscleresult['lat_name'];
            $muscle_id = $muscleresult['id'];
            $output .='<h4 class="title""><a href="muscle.php?m='.$muscle_id.'"><span style="padding-left: 20px;">'.$muscle_latname.'</span></a></h4>';
        }

	}
}

?>
<!DOCTYPE HTML>
<html>
<head>
	<!-- Meta -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Nerve Details</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width">
	<link rel="icon" href="favicon.ico" type="image/x-icon">
	<!-- Load CSS -->
	<link href="../memcard/lib/css/style.css" rel="stylesheet" type="text/css" />
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
		
	</div>

</body>
</html>