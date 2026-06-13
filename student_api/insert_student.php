<?php

include 'db.php';

$name = $_POST['name'];
$roll = $_POST['roll_no'];
$email = $_POST['email'];
$cgpa = $_POST['cgpa'];

$sql = "INSERT INTO students
(name, roll_no, email, cgpa)
VALUES
('$name', '$roll', '$email', '$cgpa')";

if ($conn->query($sql)) {
    echo json_encode([
        "status" => "success"
    ]);
} else {
    echo json_encode([
        "status" => "error"
    ]);
}

?>