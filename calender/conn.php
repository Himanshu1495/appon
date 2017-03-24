
 <?php
   $loggedinid = $_POST['loggedinid'];
       $conn = mysql_connect('localhost', 'root', '');
   
   if(! $conn ) {
      die('Could not connect: ' . mysql_error());
   }
   
   $sql = 'SELECT * FROM request WHERE id="$loggedinid"';
   mysql_select_db('minister');
   $retval = mysql_query( $sql, $conn );
   
   if(! $retval ) {
      die('Could not get data: ' . mysql_error());
   }
   
   while($row = mysql_fetch_array($retval, MYSQL_ASSOC)) {
     /* echo  "--------------------------------<br>"
      ."name :{$row['name']}  <br> ".
         "reason : {$row['reason']} <br> ".
         "date {$row['date']} <br> ".
		 "time {$row['time']} <br> ".
		 "color : {$row['color']} <br> ".
         "--------------------------------<br>"; */
      $out[] = [ 'app_id' => $row['app_id'], 
                  'id' => $row['id'],
                   'name' => $row['name'],
                  'agenda' => $row['agenda'],
                  'date' => $row['date'],
                  'time' => $row['time'],
               ];
}

   
   echo json_encode($out);
   
   mysql_close($conn);
?>