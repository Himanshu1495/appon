<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$email = $_GET['email'];
$verify = $_POST['otp'];

$result = mysqli_query($connect,"SELECT * FROM minister_otp WHERE email='$email'");
if (mysqli_affected_rows($connect)==1) {
	while ($row=mysqli_fetch_assoc($result)) {
		$otp = $row['otp'];
	}
}
if ($verify==$otp) {
	echo "done";
}
else {
	echo "invalid";
}


?>