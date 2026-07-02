<?php
error_reporting(0);
	include("connection.php");

$result = mysqli_query($con,"select * from comment group by user") or die("jjjjj".mysql_error());
$data='array(';
while ($row = mysqli_fetch_array($result))
{
	//echo "$row[user]<br>";
$result24 = mysqli_query($con,"select * from  comment where user='$row[user]'") or die("jjjjj".mysql_error());
$data=$data.'"'.$row['user'].'" => array(';
while ($row24 = mysqli_fetch_array($result24))
 {
$rate=$row24['rate'];
 $data=$data.'"'.$row24['msg_id'].'" => '.$rate.', ';
 $books[$row['user']][$row24['msg_id']]=$rate;
 //echo "ff $data <br>";
 }
 

//$data=substr("$data", 0, -2);
//$data=$data.'), ';
}
$data=substr("$data", 0, -2);
$data=$data.')';
//echo "".$data."<br>";


//echo "<br>".$data;

//echo $books[5]['Trivandrum'];


/*
$myFile = "a.txt";
$fh = fopen($myFile, 'r');
$books = fread($fh, filesize($myFile));
fclose($fh);
*/
?>