<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";


$email = $_GET['email'];
$result = mysqli_query($connect,"SELECT * FROM request WHERE email='$email' AND accepted='1'");
if (mysqli_affected_rows($connect)==1) {
	while ($row=mysqli_fetch_assoc($result)) {
		$mini_id = $row['mini_id'];
		$location = $row['location'];
		$reason = $row['reason'];
		$agenda = $row['agenda'];
		$no_of_vis = $row['no_of_vis'];

	}
}

$appointment_check = mysqli_query($connect,"SELECT app_date,slot_value FROM minister_appointment WHERE mini_id='$mini_id' ORDER BY app_date DESC,slot_value DESC LIMIT 1");
while ($row=mysqli_fetch_assoc($appointment_check)) {
	$time = $row['slot_value'];
	$app_date = $row['app_date'];
}


getnextslot($time,$app_date,$reason,$location,$no_of_vis,$agenda,$mini_id,$email,$connect);


function getnextslot($time,$app_date,$reason,$location,$no_of_vis,$agenda,$mini_id,$email,$connect){
	$curr_date = $app_date;
	$curr_slot = $time;
	if ($curr_slot<16) {
		$next_slot = $curr_slot+1;
		$next_date = $curr_date;
	}
	else{
		if (date('l',strtotime($curr_date))=="Friday") {
			$next_date = date($curr_date,strtotime("+3 day"));
			$next_slot = 1;
		}
		else{
			$next_date = date($curr_date,strtotime("+1 day"));
			$next_slot = 1;
		}

	}
	switch ($next_slot) {
		case '1':
			$next_time = "9:00";
			break;
		case '2':
			$next_time = "9:30";
			break;
		case '3':
			$next_time = "10:00";
			break;
		case '4':
			$next_time = "10:30";
			break;
		case '5':
			$next_time = "11:00";
			break;
		case '6':
			$next_time = "11:30";
			break;
		case '7':
			$next_time = "12:00";
			break;
		case '8':
			$next_time = "12:30";
			break;
		case '9':
			$next_time = "13:00";
			break;
		case '10':
			$next_time = "13:30";
			break;
		case '11':
			$next_time = "14:00";
			break;
		case '12':
			$next_time = "14:30";
			break;
		case '13':
			$next_time = "15:00";
			break;
		case '14':
			$next_time = "15:30";
			break;
		case '15':
			$next_time = "16:00";
			break;
		case '16':
			$next_time = "16:30";
			break;
		default:
			$a = 1;
			break;
	}

$mini_result = mysqli_query($connect,"INSERT INTO minister_appointment(mini_id,citizen_email,reason,app_date,time_slot,slot_value) VALUES('$mini_id','$email','$reason','$next_date','$next_time','$next_slot')");
$citizen_result = mysqli_query($connect,"INSERT INTO citizen_appointment(email,reason,agenda,location,no_of_vis,app_date,time_slot) VALUES('$email','$reason','$agenda','$location','$no_of_vis','$next_date','$next_time')");
echo "done";
}

?>