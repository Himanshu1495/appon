<?php
require_once("connection.php");
$name = $_GET["uname"];
$email = $_GET["email"];
$password = $_GET["confpass"];
$zipcode = $_GET["zipcode"];
$contact = $_GET["contact"];

$validName = $validZipcode = $validContact = "";

$name = validate($name);
$validName = true;
$zipcode = validate($zipcode);
$validZipcode = true;
$contact = validate($contact);
$validContact = true;
$password = password_hash($password,PASSWORD_DEFAULT);

if ($validName == true && $validZipcode == true && $validContact == true) {
	mysqli_query($connect,"INSERT INTO citizen_signup(username,email,password,zipcode,contact) VALUES('$name','$email','$password','$zipcode','$contact')");	
	header('Location: http://localhost/appon/citizen_login.php');
}



function validate($data){
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	$data = strip_tags($data);
	$data = strtolower($data);
	return $data;
}

?>