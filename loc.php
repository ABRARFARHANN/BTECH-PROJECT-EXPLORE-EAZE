<?php


$lat="9.498085999999999";
$lon="76.33884809";
   
				   include("connection.php");
				  $i=1;
				
				$reshh=mysqli_query($con,"SELECT id,description,lat,lng,( 3959 * acos( cos( radians($lat) ) * cos( radians( lat ) ) * cos( radians( lng ) - radians($lon ) ) + sin( radians($lat) ) * sin( radians( lat ) ) ) ) AS distance FROM pakages  group by sub_category HAVING distance   ORDER BY distance LIMIT 0 , 15 ");
	
	echo "SELECT id,description,lat,lng,( 3959 * acos( cos( radians($lat) ) * cos( radians( lat ) ) * cos( radians( lng ) - radians($lon ) ) + sin( radians($lat) ) * sin( radians( lat ) ) ) ) AS distance FROM pakages  group by sub_category HAVING distance   ORDER BY distance LIMIT 0 , 5 "; 
	
	while($row=mysqli_fetch_array($reshh))
	{
		echo "<br><h3> DAY $i</h3>";
		echo "<p> $row[description] </p> <br><br> ";
	$i++;
	}


?>