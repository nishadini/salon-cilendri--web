<?php
session_start();
?>

<!DOCTYPE html>

<html>


<body>

<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cilendri";

$conn = new mysqli($servername, $username, $password, $dbname);


if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT username,password FROM userlogin";
$result= mysqli_query($conn, $sql);

$username=$_POST['email'];
$password=$_POST['password'];
$x=0;


if (mysqli_num_rows($result) > 0) {
    
    while($row = mysqli_fetch_assoc($result)) {
               if($row['username']==$username){
                    if($row['password']==$password){
                	
                 Header("location:makeapp.php");
                 $x=1;
                

           }}}}


           if($x==0){
      echo "<script>alert('Incorrect Login Details. ');window.location.href='Appoinments.php';</script>";
           }

mysqli_close($conn);
?> 




 </body>
</html>
