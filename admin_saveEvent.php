<?php
session_start();


if (!isset($_SESSION['loggedin'])) {
  header("Location: index.php");
  exit();
}

include "connect.php";

$admin = $_SESSION["username"];

$query1 = "SELECT * FROM admin_login WHERE email = '$admin'";
$result = mysqli_query($conn, $query1) or die("Error in query: " . mysqli_error($conn));
$row = mysqli_fetch_assoc($result) or die("No user found with the given account.");

$section = $row['section'];

?>

<?php 
require_once('connect1.php');
if($_SERVER['REQUEST_METHOD'] !='POST'){
    echo "<script> alert('Error: No data to save.'); location.replace('./') </script>";
    $conn->close();
    exit;
}
extract($_POST);
$allday = isset($allday);

if(empty($id)){
    $sql = "INSERT INTO `schedule_list` (`title`,`description`,`start_datetime`,`end_datetime`, `section`) VALUES ('$title','$description','$start_datetime','$end_datetime','$section')";
}else{
    $sql = "UPDATE `schedule_list` set `title` = '{$title}', `description` = '{$description}', `start_datetime` = '{$start_datetime}', `end_datetime` = '{$end_datetime}' where `id` = '{$id}'";
}
$save = $conn->query($sql);
if($save){
    echo "<script> alert('Schedule Successfully Saved.'); location.replace('./admin_eventCalendar_$section.php') </script>";
}else{
    echo "<pre>";
    echo "An Error occured.<br>";
    echo "Error: ".$conn->error."<br>";
    echo "SQL: ".$sql."<br>";
    echo "</pre>";
}

$conn->close();
?>