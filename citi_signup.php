<?php
header('Access-Control-Allow-Origin: *');
require_once("connection.php");

$name = $_POST['uname'];
$email = $_POST['uemail'];
$password = $_POST['confpass'];
$zipcode = $_POST['zipcode'];
$contact = $_POST['contact'];



$validName = $validZipcode = $validContact = "";

$result = mysqli_query($connect,"SELECT username FROM citizen_data WHERE username='$name'");
if (mysqli_num_rows($result)!=0) {
	echo "username";	
}
$result = mysqli_query($connect,"SELECT email FROM citizen_data WHERE email='$email'");
if (mysqli_num_rows($result)!=0) {
	echo "email";
}
$result = mysqli_query($connect,"SELECT contact FROM citizen_data WHERE contact='$contact'");
if (mysqli_num_rows($result)!=0) {
	echo "contact";
}
else{

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
