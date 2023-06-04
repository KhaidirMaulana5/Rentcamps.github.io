<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rentcamp";

// Create connection
$con = new mysqli($servername, $username, $password, $dbname);
$conn = mysqli_connect("localhost", "root", "", "rentcamp");
// Check connection
if ($con->connect_error) {
  die("Connection failed: " . $con->connect_error);
}
// echo "Connected successfully";