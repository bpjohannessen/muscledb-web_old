<?php
/**
 * DEBUGGING BPJ
 *
 */

// counter
session_start();
$counter_name = "counter.txt";
// Check if a text file exists. If not create one and initialize it to zero.
if (!file_exists($counter_name)) {
    $f = fopen($counter_name, "w");
    fwrite($f,"0");
    fclose($f);
}
// Read the current value of our counter file
$f = fopen($counter_name,"r");
$counterVal = fread($f, filesize($counter_name));
fclose($f);
// Has visitor been counted in this session?
// If not, increase counter value by one
if(!isset($_SESSION['hasVisited'])){
    $_SESSION['hasVisited']="yes";
    $counterVal++;
    $f = fopen($counter_name, "w");
    fwrite($f, $counterVal);
    fclose($f);
} else {
    echo "allerede";
}

//echo "You are visitor number $counterVal to this site";



/**
 * GIT DEPLOYMENT SCRIPT
 *
 * Used for automatically deploying websites via github or bitbucket, more deets here:
 *
 *		https://gist.github.com/1809044
 */

// The commands
$commands = array(
    'echo $PWD',
    'whoami',
    'git pull',
    'git status',
    'git submodule sync',
    'git submodule update',
    'git submodule status',
    'echo `date` >> ../counter.txt',
    '/home/bp/www/fettenajs.com/build.sh'
);

// Run the commands for output
$output = '';
foreach($commands AS $command){
    // Run it
    $tmp = shell_exec($command);
    // Output
    $output .= "<span style=\"color: #6BE234;\">\$</span> <span style=\"color: #729FCF;\">{$command}\n</span>";
    $output .= htmlentities(trim($tmp)) . "\n";
}

// Make it pretty for manual user access (and why not?)
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <title>GIT DEPLOYMENT SCRIPT</title>
</head>
<body style="background-color: #000000; color: #FFFFFF; font-weight: bold; padding: 0 10px;">
<pre>
 .  ____  .    ____________________________
 |/      \|   |                            |
[| <span style="color: #FF0000;">&hearts;    &hearts;</span> |]  | Git Deployment Script v0.1 |
 |___==___|  /              &copy; oodavid 2012 |
              |____________________________|

    <?php echo $output; ?>
</pre>
</body>
</html>
