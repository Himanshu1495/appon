<?php
header('Access-Control-Allow-Origin: *');
require_once("connection.php");
$name = $_POST["name"];
$email = $_POST["email"];
$password = $_POST["confpass"];
$zipcode = $_POST["zipcode"];
$contact = $_POST["contact"];

$validName = $validZipcode = $validContact = "";

$name = validate($name);
$validName = true;
$zipcode = validate($zipcode);
$validZipcode = true;
$contact = validate($contact);
$validContact = true;
$password = password_hash($password,PASSWORD_DEFAULT);

if ($validName == true && $validZipcode == true && $validContact == true) {
	$result = mysqli_query($connect,"INSERT INTO citizen_data(username,email,password,zipcode,contact) VALUES('$name','$email','$password','$zipcode','$contact')");
	if ($result){
		echo "Updated";
	}
	else {
		echo "Error: ". mysqli_error($connect);
	}
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
