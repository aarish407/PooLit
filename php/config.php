<?php

define('DB_HOST', 'localhost');
define('DB_NAME', 'poolit');
define('DB_USER', 'root'); 
define('DB_PASS', 'root');

$connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS) or die("Failed to connect to database:".mysqli_error($connection));

$db= mysqli_select_db($connection, DB_NAME) or die("Failed to connect to MySql".mysqli_error($connection));

?>