<?php

/************************************************
	The Search PHP File
************************************************/


/************************************************
	MySQL Connect
************************************************/

// Credentials
require_once("db_cred.php");

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

	$html  =  '';
	$html .= '<div class="icon"></div>';
	$html .= '<h2 class="title">Muscle details</h2>';
	$html .= '<h1 class="title">muscleLatName</h1>';
	$html .= '<h3 class="title" style="font-style: italic;">muscleEngName</h3>';
	$html .= 'placeHolderCategory';
	$html .= '<h3 class="title"><b>Origo:</b> muscleOrigo</h3>';
	$html .= '<h3 class="title"><b>Insertio:</b> muscleInsertio</h3>';
	$html .= '<h3 class="title"><b>Function:</b> muscleFunctio</h3>';
	$html .= '<h3 class="title"><b>Nerve:</b> muscleNerve</h3>';
	$html .= '<br /><h4 class="title"><a href=index.php>New search</a></h4>';
	
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

			// Create simpler variable names from the query
			$display_latname = $result['lat_name'];
			$display_engname = $result['name'];
			$groupID = $result['muscle_group'];
			$subgroupID = $result['muscle_subgroup'];
			$display_origo = $result['origo'];
			$display_insertio = $result['insertio'];
			$display_functio = $result['functio'];
			$display_nerve = $result['nerve'];
			

			// Insert Name, English Name, Origo, Insertio, Functio and Nerve Innervation
			$output = str_replace('muscleLatName', $display_latname, $html);
			$output = str_replace('muscleEngName', $display_engname, $output);
			$output = str_replace('muscleOrigo', $display_origo, $output);
			$output = str_replace('muscleInsertio', $display_insertio, $output);
			$output = str_replace('muscleFunctio', $display_functio, $output);
			$output = str_replace('muscleNerve', $display_nerve, $output);
			
			// Check which group, subgroup, subsubcgroup the muscle is assigned. Replace number from table and show the real result
			
			// First: Replace group (because all muscles are assigned a group!)
			
			// Build query
			$queryGroup = 'SELECT * FROM tbl_muscle_groups WHERE id = '.$groupID;
			
			// Do query
			$resultGroup = $tutorial_db->query($queryGroup);
			$resultsGroup = $resultGroup->fetch_array();
			
			// Create simpler variable name from the query
			$display_group_latname = $resultsGroup['lat_name'];
			$display_group_name = $resultsGroup['name'];
			
			// Start creating output for the placeHolderCategory
			$group  = '';
			$group .= '<h3 class="title" style="font-style: italic;">'.$display_group_latname.' ('.$display_group_name.')</h3>';
			
			// Check if muscle has subgroup
			
			if($subgroupID >= 1) {
				
				// Build query
				$querySub = 'SELECT * FROM tbl_muscle_subgroups WHERE id = '.$subgroupID;
				
				// Do query
				$resultSubGroup = $tutorial_db->query($querySub);
				$resultsSubGroup = $resultSubGroup->fetch_array();
				
				// Create simpler variable names from the query
				$display_subgroup_latname = $resultsSubGroup['lat_name'];
				$display_subgroup_name = $resultsSubGroup['name'];
				
				$group .= '<h3 class="title" style="font-style: italic;">'.$display_subgroup_latname.' ('.$display_subgroup_name.')</h3>';
								
			} else {
				echo "No subgroup!";
			}
			
			
			
			
			
			// Replace placeHolderCategory with group output
			$output = str_replace('placeHolderCategory', $group, $output);
			

		}
		
	} else {
		header("Location: index.php");
	}
	
	
} else {
	$output  =  '';
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
	<title>Muscle Details</title>
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
		
	</div>

</body>
</html>
