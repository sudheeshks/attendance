<?php

include "db.php";

$query = 'select concat_ws(" ",first_name,last_name) as staff_name,staff_number from staffs'; 


$stmt = $con->query($query);

$data = array();

while($row = $stmt->fetch(PDO::FETCH_ASSOC))
{

 $data[] = $row;
	
}  

$users = array('data'=>$data);



echo $response = json_encode($users);

exit;




