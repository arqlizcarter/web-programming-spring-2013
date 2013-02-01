<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>PHP lesson2</title>
<link href="php.css" rel="stylesheet" type="text/css">
</head>
<body>
<section>
<h2> Please fill the from below </h2>
<?php 

//check to see if the page is loading from a POST request
if ($_SERVER['REQUEST_METHOD'] === 'POST' ) {
// if there was a POST, create a confirmation page 
//  the age function calculates age in years based on a date passed as an argument
function age($birthdate) {
	return (strtotime('now') - strtotime($birthdate))/(60*60*24*365);
}	
// assign the result of calling the age( ) function passing the input date as the argument to a variable
$age =  age($_POST['birthdate']);
// determine if the value of the variable is greater than 21
if ($age > 21) {
	// if so, display a positive result , including the age and a smiley face image
	?>
    <h2 style="color:green">You are <?php echo intval($age) ?>, Have fun, but drink responsibly.</h2>
    <img src="images/drinking.jpg" width="100" height="100" alt="drinking">
    <?php

} else {
	//otherwise display a negative result, with a frowny face
	?>
<h2 style="color:red">Sorry, you are  <?php echo intval($age) ?> , too young.  How about some root beer?</h2>
    <img src="images/no_alcohol.jpg" width="100" height="100" alt="not to drink">
<?php
}
} else {
	// if there wasn't a POST, display an input form  using an input type of date - which is supported in Chrome
	?>
	<form action="" method="post">
	<input name="birthdate" type="date">
    <input name="" type="submit">
	</form>
	<?php
}
?>
</section>
</body>
</html>