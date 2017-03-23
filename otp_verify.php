<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";
$done_flag = false;
$otp = $_POST['otp'];
$otp_check = mysqli_query($connect,"SELECT * FROM citizen_otp WHERE otp='$otp'");
if (mysqli_affected_rows($connect)==1) {
	while ($row=mysqli_fetch_assoc($otp_check)) {
		$verify_email = $row['email'];
	}

	$result = mysqli_query($connect,"SELECT * FROM citizen_data WHERE email='$verify_email' AND verified='0'");
	if (mysqli_num_rows($result)==1) {
		mysqli_query($connect,"UPDATE citizen_data SET verified='1' WHERE email='$verify_email'");
		mysqli_query($connect,"DELETE FROM citizen_otp WHERE email='$verify_email' AND otp='$otp'");
		$done_flag = true;
		echo "done";
	}
}
if ($done_flag==false) {
	echo "invalid";
}
?>