<?php
$dbServername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "college_website";

$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}else{
    echo "<script>console.log('Connection established');</script>";
}
