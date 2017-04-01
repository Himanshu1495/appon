<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$email = $_GET['email'];
$val = $_GET['appoint'];

if ($val==1) {
	$result = mysqli_query($connect,"SELECT COUNT(*) FROM citizen_appointment WHERE email='$email'");
	$c = mysqli_fetch_array($result);
	$count = $c[0];
	if ($count<5) {
		echo "appoint";
	}
	else{
		echo "already";
	}
}
if ($val==2) {
	$result = mysqli_query($connect,"SELECT * FROM citizen_appointment WHERE email='$email' AND resolved='0'");
	if (mysqli_num_rows($result)>0) {
		$json_data = mysqli_fetch_array($result);
		echo json_encode($json_data);
	}
	else{
		echo "resolved";
	}
}
?>