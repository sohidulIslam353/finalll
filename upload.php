<?php
//'".md5($password)."'   pasword encrypt
session_start();
include('common/db.php');
include('common/logedin.php');

$file_name = uniqid().date("Y-m-d-H-i-s").str_replace(" ","_", $_FILES['image']['name']);
$destination ="img/".$file_name;
$filename    = $_FILES['image']['tmp_name'];
move_uploaded_file($filename , $destination);

	

	$employeeid         = $_POST["employeeid"];
	$username 		    = $_POST["username"];
	$fathersname        = $_POST["fathersname"];
	$mothersname        = $_POST["mothersname"];
	$phone 		        = $_POST["phone"];
	$dob 	            = $_POST["dob"];
	$localaddress 	    = $_POST["localaddress"];
	$permanentaddress   = $_POST["permanentaddress"];
	$gender		        = $_POST["gender"];
	$department		    = $_POST["department"];
	$email		        = $_POST["email"];
	$password		    = $_POST["password"];
	$facebook		    = $_POST["facebook"];
	$city		        = $_POST["city"];
	$accountholder	    = $_POST["accountholder"];
	$accountnumber		= $_POST["accountnumber"];
	$bankname		    = $_POST["bankname"];
	$pannumber		    = $_POST["pannumber"];
	$ifsc		        = $_POST["ifsc"];
	$image		        = $file_name;
	

	
	$query = "INSERT INTO `employee` (employeeid,username,fathersname,mothersname,phone,dob,localaddress,permanentaddress,gender,department,email,password,image,facebook,city,accountholder,accountnumber,bankname,pannumber,ifsc)
            VALUES 
            ('$employeeid','$username','$fathersname','$mothersname','$phone','$dob','$localaddress','$permanentaddress','$gender','$department','$email','$password','$facebook','$city','$accountholder','$accountnumber','$bankname','$ifsc','$destination')";
	
	$result = mysqli_query($connect, $query);

	
	header("Location: allemployee.php");

    








?>