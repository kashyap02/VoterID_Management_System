<?php
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "voterid_management_system";
	$conn = new mysqli($dbhost,$dbuser,$dbpass,$dbname);
	if($conn->connect_error){
		die("Connection Failed" . $conn->connect_error);
	} 
$firstName = $_POST['firstname'];
$lastName = $_POST['lastname'];
$fatherName = $_POST['fathersname'];
$age = $_POST['age'];
$gender = $_POST['Gender'];
if(!$firstName || !$lastName || !$fathername || !$age || !$gender){
	header('Location: https://localhost/Final%20DBMS%20Project/Apply/Apply.html');
}


$houseno = $_POST['house'];
$street = $_POST['street'];
$town = $_POST['town'];
$pin = $_POST['pincode'];
$state = $_POST['States'];
if(!$houseno || !$street || !$town || !$pin || !$state){
	header('Location: https://localhost/Final%20DBMS%20Project/Apply/Apply.html');
}


$parliament = $_POST['Parliamentary'];
$district = $_POST['district'];
$states = $_POST['States'];
if(!$parliament || !$district || !$states){
	header('Location: https://localhost/Final%20DBMS%20Project/Apply/Apply.html');
}

$sql = "INSERT INTO voterdetail(firstName,lastName,fathername,gender,age) VALUES ('$firstName','$lastName','$fatherName','$gender',$age) WHERE $age > 18";
$sql1 = "INSERT INTO address(HouseNo,Street,City_Village,State,Pincode) VALUES ('$houseno','$street','$town','$state','$pin')";
$sql2 = "INSERT INTO constituency(state,district,parliamentaryConstituency) VALUES ('$states','$district','$parliament')";

if($conn->query($sql) === TRUE && $conn->query($sql1) === TRUE && $conn->query($sql2) === TRUE){
	header('Location: https://localhost/FINAL%20DBMS%20PROJECT/thankyou/index.html');
}
else{
	echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
?>