<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>exercise</title>
</head>

<body>
<?php


function age($birthdate) {
	return (strtotime('now') - strtotime($birthdate))/(60*60*24*365);
}
$age = age('1963-12-01');

if($age > 21) {
	?>
    <h2> You are of age!, Have fun, but drink responsible. </h2>
    <?php
	
} else {
	?>
    <h2> Sorry, you are too young. How about some root beer </h2>
    <?php
}

?>
</body>
</html>