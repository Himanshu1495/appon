<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";
$email = $_POST['uemail'];
$password = $_POST['pass'];
$invalid_flag = false;
$verify_flag = false;
$result = mysqli_query($connect,"SELECT * FROM ministers WHERE email='$email' AND verified='1'");
if (mysqli_affected_rows($connect)==1) {
	while ($row=mysqli_fetch_assoc($result)) {
		$to_validate = $row['password'];
	}
	if (password_verify($password,$to_validate)) {
			$min_check = mysqli_query($connect,"SELECT * FROM ministers WHERE email='$email' AND password='$to_validate' AND verified='1'");
			if (mysqli_num_rows($min_check)==1) {
				$invalid_flag = true;
				$verify_flag = true;	
				echo "done";							
			}			
		}		
	}

if ($verify_flag==false) {
	$res = mysqli_query($connect,"SELECT password FROM ministers WHERE email='$email'");
	if (mysqli_affected_rows($connect)==1) {
		while ($row=mysqli_fetch_assoc($res)) {
			$pass = $row['password'];
		}
		if (password_verify($password,$pass)) {
			$invalid_flag = true;
			echo "verify";
		}
	}
}
if ($invalid_flag==false && $verify_flag==false) {
	echo "invalid";
}
