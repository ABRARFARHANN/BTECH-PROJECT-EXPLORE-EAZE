<?php
//session_start();
date_default_timezone_set("Asia/Calcutta");

$dbHost = getenv('DB_HOST') ?: 'localhost';
$dbUser = getenv('DB_USER') ?: '';
$dbPassword = getenv('DB_PASSWORD') ?: '';
$dbName = getenv('DB_NAME') ?: 'trouvaille2';

$con = mysqli_connect($dbHost, $dbUser, $dbPassword, $dbName);
if (!$con) {
    die('Database connection failed.');
}
?>