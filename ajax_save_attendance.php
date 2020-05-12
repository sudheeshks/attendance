<?php

include "db.php";

$strState = $_POST['strState'];
$strID = $_POST['strID'];

$str_data = explode('_',$strID);

$staff_id = $str_data[0];
$date = $str_data[1];





$query = 'select * from staff_attendance where staff_id=:staff_id and date=:date'; 


$sth = $con->prepare($query);
$sth->execute(array(':staff_id' => $staff_id, ':date' => $date));

$count = $sth->rowCount();

if($count==0){

	 $data = [
    	'date' => $date,
    	'staff_id' => $staff_id,
    	'marked' => 1,
	];

	$insert_query = 'insert into staff_attendance (date,staff_id,marked) values (:date,:staff_id,:marked)';

	$stmt= $con->prepare($insert_query);
	$stmt->execute($data);

}

if($count>0 && $strState==0){

	$query = 'delete from staff_attendance where staff_id=:staff_id and date=:date'; 

	$sth = $con->prepare($query);
	
	$sth->execute(array(':staff_id' => $staff_id, ':date' => $date));

}


echo 'success';

exit;




