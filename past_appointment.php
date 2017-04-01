<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$date = date("Y-m-d");
$result = msqli_query($connect,"SELECT id FROM events WHERE app_date < '$date'");
$past_dates = mysqli_fetch_array($result);

echo json_encode($past_dates);

?>