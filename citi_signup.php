<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$email = $_POST['uemail'];
$password = $_POST['confpass'];
$zipcode = $_POST['zipcode'];
$contact = $_POST['contact'];
$email_flag = false;
$contact_flag = false;


$validZipcode = $validContact = "";

if ($email_flag == false && $contact_flag == false) {
	$result = mysqli_query($connect,"SELECT email FROM citizen_data WHERE email='$email'");
	if (mysqli_num_rows($result)!=0) {
		echo "email";
		$email_flag = true;
	}
}
if ($email_flag == false && $contact_flag == false) {
	$result = mysqli_query($connect,"SELECT contact FROM citizen_data WHERE contact='$contact'");
	if (mysqli_num_rows($result)!=0) {
		echo "contact";
		$contact_flag = true;
	}
}
if ($email_flag == false && $contact_flag == false){

$zipcode = validate($zipcode);
$validZipcode = true;
$contact = validate($contact);
$validContact = true;
$password = password_hash($password,PASSWORD_DEFAULT);



if ($validZipcode == true && $validContact == true) {
	$result = mysqli_query($connect,"INSERT INTO citizen_data(email,password,zipcode,contact) VALUES('$email','$password','$zipcode','$contact')");
	if ($result){
		echo "done";
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
