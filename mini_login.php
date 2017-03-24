<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";
$email = $_POST['email'];
$pass = $_POST['pass'];
$verify_flag = false;
$invalid_flag = false;

$result = mysqli_query($connect_mini,"SELECT * FROM minister_db WHERE email='$email' AND verified='1'");
if (mysqli_affected_rows($connect_mini)==1) {
	while ($row=mysqli_fetch_assoc($result)) {
		$to_validate = $row['password'];
	}
	if (password_verify($password,$to_validate)) {
			$min_check = mysqli_query($connect,"SELECT * FROM minister_db WHERE email='$email' AND password='$to_validate' AND verified='1'");
			if (mysqli_num_rows($min_check)==1) {
				$verify_flag = true;
				$invalid_flag = true;
				echo "done";							
			}			
		}		
	}

if ($verify_flag==false) {
	$check = mysqli_query($connect_mini,"SELECT * FROM minister_pass WHERE email='$email' AND password='$pass'");
	if (mysqli_num_rows($check)==1) {
		mysqli_query($connect_mini,"DELETE * FROM minister_pass WHERE email='$email'");
		mysqli_query($connect_mini,"UPDATE minister_db SET verified='1' WHERE email='$email");
		$invalid_flag = true;
		echo "verify";
	}
}

if ($verify_flag==false && $invalid_flag==false) {
	echo "invalid";
}
