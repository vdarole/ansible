#<!DOCTYPE html>
<html>
<head>
<title> Display data </title>
</head>
<body>
<div align="center">
<h1>Below are user details</h1>
</div>
<table border="1" align="center">
<thead>
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Gender</th>
<th>Email</th>
<th>Phone</th>
</tr>
</thead>
<?php
$server_name="localhost";
$username="root";
$password="redhat";
$database_name="database123";
$conn=mysqli_connect($server_name,$username,$password,$database_name);
//now check the connection
if(!$conn)
{
die("Connection Failed:" . mysqli_connect_error());
}
$sql_query = "select * from  entry_details";
$query = mysqli_query($conn,$sql_query);
$nums = mysqli_num_rows($query);
while ($res = mysqli_fetch_array($query)) {
?>
<tr>
<th><?php echo $res['first_name'] ?></th>
<th><?php echo $res['last_name'] ?></th>
<th><?php echo $res['gender'] ?></th>
<th><?php echo $res['email'] ?></th>
<th><?php echo $res['mobile'] ?></th>
</tr>
<?php
}
$conn-> close();
?>
</table>
<p style="text-align: center;"><a href="http://192.168.2.211/"><strong>HOME PAGE</strong></a></p>
</body>
</html>
