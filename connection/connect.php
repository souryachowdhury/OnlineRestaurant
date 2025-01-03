<?php

$servername = "localhost";
$username = "root";
$password = "@sourya#2004";
$dbname = "restaurent_data";


$db = mysqli_connect($servername, $username, $password, $dbname);

if (!$db) {
    die("Connection failed: " . mysqli_connect_error());
}

?>