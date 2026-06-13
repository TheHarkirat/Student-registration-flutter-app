<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'db.php';

$result = $conn->query("SELECT * FROM students");

$data = [];

while($row = $result->fetch_assoc()){
    $data[] = $row;
}

echo json_encode($data);

?>