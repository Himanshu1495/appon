<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$email = $_GET['email'];

$result = mysqli_query($connect,"SELECT * FROM citizen_data WHERE email='$email'");
if (mysqli_num_rows($result)==1) {
	

$otp = null;
for($i=3;$i>=0;$i--){
    $otp = $otp.(rand(0,9));  
}

$from = 'apponucoe@gmail.com';
$to = $email;
$subject = 'Password Recovery : AppON';


$body = 'It seems that you have lost your password?'."\n".
	'Enter this OTP to recover : '.$otp."\n".
	'If you have not requested this , then you can safely ignore this email'."\n".
	'From,'."\n".
	'Your mates at AppON';
$headers = 'From: '.$from. "\r\n" .
   'Reply-To: '.$from. "\r\n";

echo "done";
}
else {
	echo "invalid";
}
?>