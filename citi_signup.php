<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";
$name = $_POST['uname'];
$email = $_POST['uemail'];
$password = $_POST['confpass'];
$zipcode = $_POST['zipcode'];
$contact = $_POST['contact'];
$email_flag = false;
$contact_flag = false;
$otp_flag = false;

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

$from = 'no-reply@appon.host22.com';
$to = $email;
$subject = 'One time password for login : AppON';
while ($otp_flag==false) {

$otp = null;
for($i=3;$i>=0;$i--){
    $otp = $otp.(rand(0,9));  
}
$otp_check = mysqli_query($connect,"SELECT otp from citizen_otp WHERE otp='$otp'");
if (mysqli_num_rows($otp_check)==0) {
	$otp_flag=true;
}
}
$body = 'Your one time password is : '.$otp."\n".
	'From,'."\n".
	'Your mates at AppON';
$headers = 'From: '.$from. "\r\n" .
   'Reply-To: '.$from. "\r\n";




$zipcode = validate($zipcode);
$validZipcode = true;
$contact = validate($contact);
$validContact = true;
$password = password_hash($password,PASSWORD_DEFAULT);
	


if ($validZipcode == true && $validContact == true) {
	$result = mysqli_query($connect,"INSERT INTO citizen_data(username,email,password,zipcode,contact,verified) VALUES('$name','$email','$password','$zipcode','$contact',0)");
	if ($result){
		mysqli_query($connect,"INSERT INTO citizen_otp(email,otp) VALUES('$email','$otp')");
		mail($to, $subject, $body, $headers);		
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
