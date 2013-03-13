<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>My Music</title>
</head>

<body>
<?php
$query = new mysqli("localhost", "rcarter_admin", "GPbuRqhp", "rcarter");
if ($query->connect_errno) {
    echo "I cant talk to MySQL: (" . $query->connect_errno . ") " . $query->connect_error;
}
echo 'Talking to ' . $lrbdb->host_info . "<br /><hr>" ;
?>
<?php
$sql = <<<SQL
SELECT artist, track, genre
FROM  genres, artists, albums, tracks
WHERE ((genres.idgenres = artists.genres_idgenres) and 
(artists.idartists = albums.artists_idartists) and 
(albums.idalbums = tracks.albums_idalbums)) and 
genres.idgenres in (1,2,3,4)  
SQL;
if(!$result = $query->query($sql)){
    die('All the things are dead... [' . $query->error . ']');
}
	echo '<strong>These are the records for ID "1 2 3 4":</strong><hr>';
while($row = $result->fetch_assoc()){
	echo $row['genre'] . ' === ' . $row['artist'] . ' ==== ' . $row['track'] . '<br />';
}
echo '<strong>Total results: ' . $result->num_rows . '<br />' . '<br /> </strong>' ;
$result->free();
?>
<hr>
<?php
$sql = <<<SQL
SELECT name, email, country
FROM fan_club
SQL;
if(!$result = $query->query($sql)){
    die('All the things are dead... [' . $query->error . ']');
}
	echo '<strong>Music Fan Club:</strong><hr>';
while($row = $result->fetch_assoc()){
	echo $row['name'] . ' | ' . $row['email'] . ' | ' . $row['country'] . '<br />';
}
echo '<strong>Total results: ' . $result->num_rows . '<br />' . '<br /> </strong>' ;
$result->free();
mysqli_close($query);
?>
</body>
</html>