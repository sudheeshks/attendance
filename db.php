<?php


$servername = "localhost";
$username = "root";
$password = "capsten123";
$dbname = "attendance";

try {
    $con = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

    //echo "Connected successfully"; 
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }
