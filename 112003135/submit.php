<?php
// Database connection code
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "myDB";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

// Retrieve user input data
$firstName = $_POST['firstName'];
$lastName = $_POST['lastName'];
$userName = $_POST['userName'];
$email = $_POST['email'];
$state = $_POST['state'];
$country = $_POST['country'];

// Validate input data
if (empty($firstName) || empty($lastName) || empty($userName) || empty($email) || empty($state) || empty($country)) {
echo "Please fill all the required fields";
} elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
echo "Invalid email address";
} else {
// Check if username and email already exists
$sql = "SELECT * FROM users WHERE username='$userName' OR email='$email'";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
	echo "User already exists with the given username or email";
} else {
	// Insert user data into the database
	$sql = "INSERT INTO users (first_name, last_name, username, email, state, country) VALUES ('$firstName', '$lastName', '$userName', '$email', '$state', '$country')";

	if (mysqli_query($conn, $sql)) {
		echo "User registered successfully";
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
}

mysqli_close($conn);
}
?>