<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$email = $_GET['email'];
$val = $_GET['appoint'];

if ($val==1) {
	$result = mysqli_query($connect,"SELECT * FROM citizen_appointment WHERE email='$email'");
	if (mysqli_num_rows($result)==0) {
		echo "appoint";
	}
	else{
		echo "already";
	}
}
if ($val==2) {
	$result = mysqli_query($connect,"SELECT * FROM citizen_appointment WHERE email='$email' AND resolved='0'");
	if (mysqli_num_rows($result)==1) {
		echo "reappoint";
	}
	else{
		echo "resolved";
	}
}
?>