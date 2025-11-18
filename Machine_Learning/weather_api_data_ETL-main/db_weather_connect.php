<?php
// Database configuration
$servername = "localhost";
$username = "root";       // Default XAMPP username
$password = "";           // Default XAMPP password (empty)
$database = "weather_data"; // Your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Successfully connected to weather_data database";

// You can now perform database operations here

// Close connection (optional as PHP closes it automatically when script ends)
// $conn->close();
?>