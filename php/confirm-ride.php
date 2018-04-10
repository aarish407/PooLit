<?php 

session_start();

include 'config.php';

$destination= $_POST['destination'];
$source= $_POST['source'];
$seats= $_POST['seats'];
$date= $_POST['event'];
$carname= $_POST['carname'];
$platenumber= $_POST['platenumber'];

echo $platenumber;

$query= "INSERT INTO cars (name, no, seats) VALUES ('$carname', '$platenumber', '$seats') ";
$data1= mysqli_query($connection, $query) or die(mysqli_error($connection));

echo "Here 1";

$query= "SELECT carid FROM cars WHERE no= '$platenumber'";
$data2= mysqli_query($connection, $query) or die(mysqli_error($connection));

echo "Here 2";

// $query= "SELECT COUNT(pid) FROM person";
// $data3=  mysqli_query($connection, $query) or die(mysqli_error($connection));

$name= $_SESSION['name'];
$email= $_SESSION['email'];

$query= "SELECT pid FROM person WHERE name= '$name' AND email= '$email' ";
$data3= mysqli_query($connection, $query) or die(mysqli_error($connection));

// while($row= mysqli_fetch_array($data3))
// {
//     echo $row;
//     echo (string) $row;
// }

echo "Here 3";

// $pid= mysqli_fetch_assoc($data3);
// echo $pid[0];

// echo 'This is data 3 '.$data3.'<br>'.gettype($data3);

$query= "INSERT INTO rides (source, destination, seats, date, name) VALUES ('$source', '$destination', '$seats', '$date', '$name') "; 
$data4= mysqli_query($connection, $query) or die(mysqli_error($connection));

$_SESSION['ride-created']= 1;
header("location: ../add-ride.php");

echo "Here 4";

// header("location: ../add-ride.php"); 

?>