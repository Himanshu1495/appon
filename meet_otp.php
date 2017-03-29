<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";
$email = $_GET['email'];
$flag = false;
$result = mysqli_query($connect,"SELECT * FROM meeting_otp WHERE email='$email'");
if (mysqli_num_rows($result)==1) {
	$flag=true;
}
if ($flag==true) {
	$result = mysqli_query($connect,"SELECT otp FROM meeting_otp WHERE email='$email'");
	$otp = mysqli_fetch_assoc($result);
	echo $otp;
}
if ($flag==false) {
	$otp = null;
	for($i=5;$i>=0;$i--){
	    $otp = $otp.(rand(0,9));  
	}
	mysqli_query($connect,"INSERT INTO meeting_otp(email,otp) VALUES('$email',$otp)");
	echo $otp;
}

?>