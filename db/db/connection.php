<?php
session_start();

//$_SESSION['login_user']="anish";
//echo $_SESSION['login_user'];
//if($_SESSION['login_user']!="")
//echo "no session".$_SESSION['login_user'];



$dbHost = getenv('LEGACY_DB_HOST') ?: 'localhost';
$dbUser = getenv('LEGACY_DB_USER') ?: '';
$dbPassword = getenv('LEGACY_DB_PASSWORD') ?: '';
$dbName = getenv('LEGACY_DB_NAME') ?: 'atm_security';

if($_SESSION['login_user']!="admin")
$conn=mysql_connect($dbHost,$dbUser,$dbPassword);
else
$conn=mysql_connect($dbHost,$dbUser,$dbPassword);


mysql_select_db($dbName,$conn);
?>