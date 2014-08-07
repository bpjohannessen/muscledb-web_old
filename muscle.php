<?php

/************************************************
	This file shows the muscle's details.
	I.e. Latin name, English name, origo, insertio,
	functio, image, etc.
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

//
// Functions
//

function fetchmuscles($id, $subid=0, $subsubid=0,$subsubsubid=0) {
    global $db;
    global $output;

    $sql = 'SELECT * FROM tbl_muscles WHERE muscle_group = '.$id;

    if($subid!=0) $sql .= ' AND muscle_subgroup = '.$subid;
    if($subsubid!=0) $sql.= ' AND muscle_subsubgroup = '.$subsubid;
    if($subsubsubid!=0) $sql.=' AND muscle_subsubsubgroup = '.$subsubsubid;

    $query = $db->query($sql);

    while($muscleresult = $query->fetch_array()) {

        $name = $muscleresult['lat_name'];
        $id = $muscleresult['id'];

        $output .= '<h3 class="title">-- <a href="muscle.php?m='.$id.'">'.$name.'</a></h3>';

    }

}

function h1($title) {
    global $output;
    $output .= '<h1 class="title">'.$title.'</h1>';
}

function h2($title) {
    global $output;
    $output .= '<h2 class="title">'.$title.'</h2>';
}

function h3($title) {
    global $output;
    $output .= '<h3 class="title">'.$title.'</h3>';
}

function h4($title) {
    global $output;
    $output .= '<h4 class="title">'.$title.'</h4>';
}

function h5($title) {
    global $output;
    $output .= '<h5 class="title">'.$title.'</h5>';
}


// The search string is $_GET['m'] and is escaped
$search_string = preg_replace("/[^A-Za-z0-9]/", " ", $_GET['m']);
$search_string = $db->real_escape_string($search_string);

// Check if the search string actually exists
if (strlen($search_string) >= 1 && $search_string !== ' ') {

	// This is what's being printed. Values and placeholders will be replaced later on when required. It will eventually be printed as $output
	$html  =  '';
	$html .= '<div class="icon"></div>';
	$html .= '<h2 class="title">Muscle details</h2>';
	$html .= '<h1 class="title">muscleLatName</h1>';
	$html .= '<h4 class="title"><a href="index.php">New search</a></h4>';
	$html .= '<h3 class="title" style="font-style: italic; margin-top: 10px;">muscleEngName</h3>';
	$html .= 'placeholder_Category';
	$html .= '<h3 class="title" style="margin-top: 10px;"><b>Origo:</b> muscleOrigo</h3>';
	$html .= '<h3 class="title"><b>Insertio:</b> muscleInsertio</h3>';
	$html .= '<h3 class="title"><b>Function:</b> muscleFunctio</h3>';
	$html .= '<h3 class="title"><b>Nerve:</b> muscleNerve</h3>';
	$html .= 'placeholder_Image';

	
	// SQL query towards tbl_muscles table
	$musclesql = 'SELECT * FROM tbl_muscles WHERE id = '.$search_string;
	
	// Do Search
	$musclequery = $db->query($musclesql);
	while($muscleresult = $musclequery->fetch_array()) {
		$musclearray[] = $muscleresult;
	}

	// Check If We Have Results
	if (isset($musclearray)) {
		foreach ($musclearray as $muscleresult) {

			// Create simpler variable names from the query			
			$muscle_latname = $muscleresult['lat_name'];
			$muscle_engname = $muscleresult['name'];
			$muscle_origo = $muscleresult['origo'];
			$muscle_insertio = $muscleresult['insertio'];
			$muscle_functio = $muscleresult['functio'];
			$muscle_image = $muscleresult['image'];
			$muscle_group = $muscleresult['muscle_group'];
			$muscle_subgroup = $muscleresult['muscle_subgroup'];
			$muscle_subsubgroup = $muscleresult['muscle_subsubgroup'];

			
			// Get information about the nerve from tbl_nerves. All muscles have nerves, so there's no check if a nerve is in the table
			
			// SQL query towards tbl_nerves table
			$nervesql = 'SELECT * FROM tbl_nerves WHERE id = '.$muscleresult['nerve'];
			
			// Do search
			$nervequery = $db->query($nervesql);
			$nerveresult = $nervequery->fetch_array();
			
			// Make easier variables
			$nerve_id = $nerveresult['id'];
			$nerve_latname = $nerveresult['lat_name'];
			$nerve_name = $nerveresult['name'];
			
			// This is what us being printed with link to the nerve
			$nervehtml = '<a href="nerve.php?n='.$nerve_id.'">'.$nerve_latname.' ('.$nerve_name.')</a>';
			

			// Insert Name, English Name, Origo, Insertio, Functio and Nerve Innervation
			$output = str_replace('muscleLatName', $muscle_latname, $html);
			$output = str_replace('muscleEngName', $muscle_engname, $output);
			$output = str_replace('muscleOrigo', $muscle_origo, $output);
			$output = str_replace('muscleInsertio', $muscle_insertio, $output);
			$output = str_replace('muscleFunctio', $muscle_functio, $output);
			$output = str_replace('muscleNerve', $nervehtml, $output);
			
			// Check which group, subgroup, subsubcgroup the muscle is assigned. Replace number from table and show the real result
			
			// First: Replace group (because _all_ muscles are assigned a group!)
			
			// Build query
			$musclegroupsql = 'SELECT * FROM tbl_muscle_groups WHERE id = '.$muscle_group;
			
			// Do query
			$musclegroupquery = $db->query($musclegroupsql);
			$musclegroupresult = $musclegroupquery->fetch_array();
			
			// Create simpler variable name from the query
			$musclegroup_latname = $musclegroupresult['lat_name'];
			$musclegroup_name = $musclegroupresult['name'];
			
			// Start creating output for the placeHolderCategory
			$group  = '';
			$group .= '<h3 class="title" style="font-style: italic;">'.$musclegroup_latname.' ('.$musclegroup_name.')</h3>';
			
			// Check if muscle has subgroup
			
			if($muscle_subgroup >= 1) {
				
				// Build query
				$musclesubgroupsql = 'SELECT * FROM tbl_muscle_subgroups WHERE id = '.$muscle_subgroup;
				
				// Do query
				$musclesubgroupquery = $db->query($musclesubgroupsql);
				$musclesubgroupresult = $musclesubgroupquery->fetch_array();
				
				// Create simpler variable names from the query
				$muscle_subgroup_latname = $musclesubgroupresult['lat_name'];
				$muscle_subgroup_name = $musclesubgroupresult['name'];
				
				$group .= '<h3 class="title" style="font-style: italic;">'.$muscle_subgroup_latname.' ('.$muscle_subgroup_name.')</h3>';
				
				// Check if muscle has subsubgroup and replace ID with group name
				
				if($muscle_subsubgroup >= 1) {
					
					// Build query
					$musclesubsubgroupsql = 'SELECT * FROM tbl_muscle_subsubgroups WHERE id = '.$muscle_subsubgroup;
					
					// Do query
					$musclesubsubgroupquery = $db->query($musclesubsubgroupsql);
					$musclesubsubgroupresult = $musclesubsubgroupquery->fetch_array();
					
					// Create simpler variable names from the query where it applies
					$muscle_subsubgroup_latname = $musclesubsubgroupresult['lat_name'];
					$muscle_subsubgroup_name = $musclesubsubgroupresult['name'];
					
					if($muscle_subsubgroup_latname != 0 && $muscle_subsubgroup_name != 0) {
						$group .= '<h3 class="title" style="font-style: italic;">'.$muscle_subsubgroup_latname.' ('.$muscle_subsubgroup_name.')</h3>';
					} elseif($muscle_subsubgroup_latname != 0 && $muscle_subsubgroup_name == 0) {
						$group .= '<h3 class="title" style="font-style: italic;">'.$muscle_subsubgroup_latname.'</h3>';
					} elseif($muscle_subsubgroup_latname == 0) {
						$group .= '<h3 class="title" style="font-style: italic;">'.$muscle_subsubgroup_name.'</h3>';
					}
										
				}
				
				// Replace placeHolderCategory with group output
				$output = str_replace('placeholder_Category', $group, $output);
				
				// Check if the muscle has a image in the table, and check if the file exists and insert it
				$imagepath = './resources/images/muscles/'.$muscle_image;
				if(strlen($muscle_image) >= 1 && $muscle_image !='0' && file_exists($imagepath)) {
					
					// Print picture
					$imagedata = getimagesize($imagepath);
					$imagewidth = $imagedata[0];
					
					// If image width is > 300 px, resize! 
					if($imagewidth>300) $imagewidth = 300;
					$image = '<p align="left" style="margin-top: 20px; margin-left: 35px;"><a href="'.$imagepath.'"><img src='.$imagepath.' width="'.$imagewidth.'"></a></p>';
					$output = str_replace('placeholder_Image', $image, $output);

				} else {
					$output = str_replace('placeholder_Image', '', $output);
				}
												
			}
		
		}
		
	} else {
		header("Location: index.php");
	}
	
} else {

	$output  =  '';
	$output .= '<div class="icon"></div>';
	$output .= '<h1 class="title">Muscle details</h1>';
	$output .= '<h5 class="err">No muscle specified! <a href="index.php">Go back!</a></h5>';


    #
    # Generate output of categories. This is hardcoded by ID!
    #
/* FUCK THIS
    $categories = array(
        1 => "Mm. capitis",
        2 => "Mm. colli",
        3 => "Mm. thoracis",
        4 => "Upper limb",
        5 => "Lower limb",
        6 => "Mm. abdominis"
    );

    $subcategories = array(
        1 => array(
            "Mm. masticatorii",
            "Mm. faciei"
        ),
        2 => array(
            "Derivates of the 1st visceral arch",
            "Derivates of the 2nd visceral arch",
            "Craniothoracal muscles",
            "Straight muscles of the neck",
            "Lateral muscles of the neck",
            "Deep muscles of the neck",
            "Diaphragma"
        )
    );

    foreach($categories as $catid => $category) {
        $output .= '<h1 class="title">'.$category.'</h1>';
        foreach($subcategories[$catid] as $subcatid => $subcat) {
            $output .= '<h2 class="title">-'.$subcat.'</h2>';
            fetchmuscles($catid, $subcatid);
        }
    }
*/
    #
    # Mm. capitis is ID 1. All muscles will be selected by this ID
    #

    h1('Mm. capitis');

    #
    # Mm. masticatorii is subgroup ID 1
    #

    $output .= '<h2 class="title">-Mm. masticatorii</h2>';
    fetchmuscles(1,1,0);

    $output .= '<h2 class="title">-Mm. faciei</h2>';
    $output .= '<h2 class="title">-Facial muscles of the scalp and muscles around the eye opening</h2>';
    fetchmuscles(1,2,1);

    $output .= '<h2 class="title">-Muscles of the nose opening</h2>';
    fetchmuscles(1,2,2);

    $output .= '<h2 class="title">-Muscles of the mouth opening</h2>';
    fetchmuscles(1,2,3);

    $output .= '<h2 class="title">-Muscles of the ear opening</h2>';
    fetchmuscles(1,2,4);

    h1('Mm. colli');

    h2('-Derivates of the 1st visceral arch');
    fetchmuscles(2,3,0);

    h2('-Derivates of the 2nd visceral arch');
    fetchmuscles(2,4,0);

    h2('-Craniothoracal muscles');
    fetchmuscles(2,5,0);

    h2('-Straight muscles of the neck');
    fetchmuscles(2,6,0);

    h2('-Lateral muscles of the neck');
    fetchmuscles(2,7,0);

    h2('-Deep muscles of the neck');
    fetchmuscles(2,8,0);

    h1('Mm. thoracis');

    h2('-Superficial muscles of the thorax');
    fetchmuscles(3,9,0); # fix

    h2('-Superficial muscles of the back');
    fetchmuscles(3,16,0); # fix

    h1('Muscles of the upper limb');
    h2('-Muscles of the shoulder girdle');
    fetchmuscles(4,12,0);
    
    h2('-Muscles of the arm');
    h2('--Muscles of the anterior compartment');
    fetchmuscles(4,13,8);
    
    h2('--Muscles of the posterior compartment');
    fetchmuscles(4,13,9);
    
    h2('-Muscles of the forearm');
    h2('--1st layer');
    fetchmuscles(4,14,10,1);

}
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
