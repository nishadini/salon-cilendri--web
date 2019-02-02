<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cilendri";

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$username=$_POST['username'];



$sql = "UPDATE appointment SET view ='1' WHERE sino='$username' ";

if ($conn->query($sql) === TRUE) {
   echo "<script>alert('You have viewed your Appoinment .');window.location.href='makeapp.php';</script>"; 
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
    
 