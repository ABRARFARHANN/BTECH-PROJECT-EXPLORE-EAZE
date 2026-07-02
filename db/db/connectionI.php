<?php
//session_start();
//echo $_SESSION['login_user'];
//if($_SESSION['login_user']!="")
//echo "no session";
$dbHost = getenv('LEGACY_DB_HOST') ?: 'localhost';
$dbUser = getenv('LEGACY_DB_USER') ?: '';
$dbPassword = getenv('LEGACY_DB_PASSWORD') ?: '';
$dbName = getenv('LEGACY_DB_NAME') ?: 'hazoortr_aps';

if($_SESSION['login_user']!="admin")
$con=mysqli_connect($dbHost,$dbUser,$dbPassword,$dbName);
else
$con=mysqli_connect($dbHost,$dbUser,$dbPassword,$dbName);


?>