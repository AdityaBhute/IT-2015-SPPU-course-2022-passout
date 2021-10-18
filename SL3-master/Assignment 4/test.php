<?php
$fname = $_POST["firstname"];
$lname = $_POST["lastname"];
$number = $_POST["pnumber"];
$gender = $_POST["gender"];


$name = $fname.$lname;
if(preg_match('/[^a-z\s-]/i',$name)){
	echo "Only letters in name"."<br>";
}
else{
	echo "valid name : $fname $lname"."<br>";
}
$email = $_POST["email"];
if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
	$emailErr = "Invalid email format"."<br>";
}
else{
	echo "valid email : $email"."<br>";

}
if (empty($gender)) {
	echo "Gender can't be empty";
	# code...
}
else{
	echo "valid gender : $gender"."<br>";
}
$onlyint = '/^[1-9][0-9]*$/';
if (preg_match($onlyint, $number) && filter_var($number, FILTER_VALIDATE_INT)) {
	echo "valid number : $number"."<br>";
} else {
	echo 'Invalid Phone number'."<br>";
}

?>