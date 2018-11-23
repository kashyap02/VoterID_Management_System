<html>
<head><title> Search Voter's Portal</title></head>
<body bgcolor="FFFFFF">
<style>
	th, td {
    padding: 5px;
    text-align: center;
}
#voter {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}
tr:hover {background-color: #f5f5f5;}
tr:nth-child(even) {background-color: #f2f2f2;}
th {
    background-color: #4CAF50;
    color: white;
}
</style>
<table id="voter" border="1">
<tr>
<th> ID </th>
<th> State </th>
<th> FirstName </th>
<th> LastName </th> 
<th> Father's Name </th>
<th> Gender </th>
<th> Age </th>
<th> HouseNumber </th>
<th> Street </th>
<th> City_Village </th>
<th> Pincode </th>
<th> District </th>
<th> Parliamentary Constituency </th>
</tr>

<?php
    $dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "voterid_management_system";
	$conn = new mysqli($dbhost,$dbuser,$dbpass,$dbname);
	if($conn->connect_error){
		die("Connection Failed" . $conn->connect_error);
	} 
	$ID = $_POST['ID'];
	//$State = $_POST['States'];
	if(!$ID){
		header('Location: https://localhost/Final%20DBMS%20Project/Search%20Form/Search.html');
	}
	//if(!$ID)
		$sql = "SELECT * from voterdetail NATURAL JOIN address NATURAL JOIN constituency WHERE ID LIKE $ID";
	/*else
		$sql = "SELECT * from voterdetail NATURAL JOIN address NATURAL JOIN constituency WHERE ((ID LIKE $ID) AND (State LIKE '$State'))";*/
	$result=mysqli_query($conn,$sql);
	$count = 0;
	if($result->num_rows > 0){
		while($row = $result -> fetch_assoc()){
			echo "<tr><td>".$row["ID"]."</td><td>".$row["State"]."</td><td>".$row["firstName"]."</td><td>".$row["lastname"]."</td><td>".$row["fatherName"]."</td><td>".$row["gender"]."</td><td>".$row["age"]."</td><td>".$row["HouseNo"]."</td><td>".$row["Street"]."</td><td>".$row["City_Village"]."</td><td>".$row["Pincode"]."</td><td>".$row["district"]."</td><td>".$row["parliamentaryConstituency"]."</td></tr>";
			$count = $count + 1;
		}
		echo "</table>";
		echo "Numbers of Records Found : ( $count )";
	}
	else{
		echo "Numbers of Records Found : ( $count )";;
	}
	mysqli_close($conn);
?>
</body>
</html>