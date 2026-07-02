<?php 
error_reporting(0);
include_once("config.php");
if(isset($_POST['submit2']))
{
$data=$_REQUEST['saddr'];
$data1=$_REQUEST['daddr'];
//echo "<a href='$data'>Search</a>";
//data=str_replace(" ","_",$data);
echo "<script type=\"text/javascript\">
        window.open('https://www.google.com/maps/dir/".$data."/".$data1."', '_blank')
    </script>";

}
session_start();
include("header.php");
include("connection.php");


?>



    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Explore Eaze</h6>
                <h2 class="mb-5">Get Your Personalised Location</h2>
            </div>
               <div class="row g-3">
 
            
                <div  class="col-lg-12 col-md-12 wow fadeInUp" data-wow-delay="0.5s">
				
<form action="" method="get" >
 <div class="col-md-3">
	 <div class="">
	    <label for="saddr">Starting location</label><br />
 <input type="text" name="saddr" placeholder='location from' class="form-control "/>
  
   
   </div> </div>
    <div class="col-md-3">
	 <div class="">
	 <label for="saddr">Final location</label><br />   
 <input type="text" name="daddr" placeholder='location to'  class="form-control "/>
  
   
   </div> </div>

  <div class="col-sm-3">
   <div class="">
  Distance(km) <input type="text" name="dis" value="5"  class="form-control "/> </div></div>
    <div class="col-sm-12">
  <?php

	
	
	
	 //$res=mysqli_query($con,"select * from msg where username='$_SESSION[email]'");

	$res=mysqli_query($con,"select DISTINCT(sub_category) as sub_category   from pakages");
	while($row=mysqli_fetch_array($res))
	{
	echo "<input type='checkbox' name='interest[]' value='$row[sub_category]' /> $row[sub_category] ";
	if($i==8)
	{
	echo "<div class='clear'></div>";
	$i=0;
	}
	$i++;
	}
	
	
	
	
  
  ?>
   
  </div>
  
  
  <div class="clear"></div>
  <br /><br />
  
  <div class="col-sm-3">
   <input type="submit" value="Candidate Route Generation" class="form-control btn btn-danger col-sm-3" style='background-color:#F00;'/></div>
</form>


<br /><br /><br /><br />
<?php

if(isset($_POST['interest2']))
{

$rrr=$_POST['saddrr'];
foreach($_POST['interest2'] as $selected){
//echo $selected."</br>";

$rrr=$rrr."/".$selected;
}
$rrr=$rrr."/".$_POST['daddrr'];
echo $rrr."<br><br> ----------------------------<br>";



?>




<form action="" method="post" >
   <label for="saddr">Enter your location</label><br />
   <input type="text" name="saddr" style="color:#000;width:500px;height:30px;" value="<?php echo $rrr; ?>" />
  
   <input type="submit" name="submit2" value="Get directions" class="btn btn-danger btn-fill" style='background-color:#F00;' />
</form>
<br /><br />
<?php

}




if(isset($_REQUEST['saddr'])!="")
{

$content2="";
//$rr=$_REQUEST['interest'];


foreach($_GET['interest'] as $selected){
//echo $selected."</br>";
$rr=$rr.$selected."-";
}
//echo $rr;

$wordChunks = explode("-",$rr);
for($ii = 0; $ii < count($wordChunks); $ii++)
{
	$content2= $content2."sub_category='$wordChunks[$ii]' or ";
}

$content2=$content2."sub_category='test'"; 
//echo $content2;

//$data=file_get_contents("https://api.breezometer.com/baqi/?lat=9.4704266&lon=76.3382385&key=" . urlencode(BREEZOMETER_API_KEY));
//echo $data."<br>";


//$a=json_decode($data);
//echo $a->breezometer_description;





if (GOOGLE_MAPS_API_KEY === '') {
    die('Google Maps API key is not configured.');
}

$data=file_get_contents("https://maps.googleapis.com/maps/api/directions/json?origin=palarivattom&destination=trivandrum&waypoints=optimize:true|edappally|adoor&key=" . urlencode(GOOGLE_MAPS_API_KEY));
//echo $data."<br>";
$data=json_decode($data);
//echo $data->geocoded_waypoints->routes->legs->distance->text[0];
//echo $data['geometry']['location']['lat'];








/*$lan=$_GET['lat'];
$lon=$_GET['lon'];
$des=$_GET['des'];*/

/*$lan="9.9985";
$lon="76.3119";*/
$or=$_REQUEST['saddr'];
$des=$_REQUEST['daddr'];
$or=str_replace(" ","_",$or);
$des=str_replace(" ","_",$des);

$url="https://maps.googleapis.com/maps/api/directions/json?origin=$or&destination=$des&key=" . urlencode(GOOGLE_MAPS_API_KEY);

//echo $url;
$data=file_get_contents($url);

//echo $data;

$wordChunks = explode("html_instructions", $data);
$wordChunks2 = explode("distance", $data);
$wordChunks3 = explode("start_location", $data);


echo "<form action='' method='post'>";
?>
<input type="hidden" name="saddrr" value="<?php echo $_GET['saddr']; ?>" class="form-control col-sm-3"/>
<input type="hidden" name="daddrr" value="<?php echo $_GET['daddr']; ?>" class="form-control col-sm-3"/>

<?php
//echo " $wordChunks[1] <br />";
for($i = 1; $i < count($wordChunks); $i++){
$data= explode("\"", $wordChunks[$i]);
$j=$i+2;
$distance= explode("\",", $wordChunks2[$j]);
$distance=str_replace("text\" : \""," ",$distance[0]);

$distance=str_replace("\" : {"," ",$distance);
$distance=str_replace("\""," ",$distance);

$data=str_replace("\u003c/b\u003e"," ",$data[2]);

$data=str_replace("\u003cb\u003e"," ",$data);
$data=str_replace("\u003cdiv style="," ",$data);
$distance=trim($distance);
$a= $wordChunks3[$j];
$a=substr($a,0,100);
$a = explode(":", $a);
$lat=$a[2];
$lat=explode(",",$lat);
$lat=trim($lat[0]);
$lon=$a[3];
$lon = explode(" ",$lon);
$lon=trim($lon[1]);
echo $data." $distance -- ( $lat , $lon ) --  



<br>";

//$lat="51.48358746015";
//$lon="-0.49255439771395";



#$content2="Sub_cat='Museum' Or Sub_cat='Subway'";



if($lat!="" & $lon!="")
{
	
	
	
	///echo "SELECT id,sub_cat,address,lat,lng, ( 3959 * acos( cos( radians($lat) ) * cos( radians( lat ) ) * cos( radians( lng ) - radians($lon ) ) + sin( radians($lat) ) * sin( radians( lat ) ) ) ) AS distance FROM table2 where $content2 group by sub_cat HAVING distance < $_REQUEST[dis]    ORDER BY distance LIMIT 0 , 10 ";
	
	
	$res=mysqli_query($con,"SELECT id,sub_category,sublocation,description,lat,lng, ( 3959 * acos( cos( radians($lat) ) * cos( radians( lat ) ) * cos( radians( lng ) - radians($lon ) ) + sin( radians($lat) ) * sin( radians( lat ) ) ) ) AS distance FROM pakages where $content2  HAVING distance < $_REQUEST[dis]    ORDER BY distance LIMIT 0 , 10 ") or die(mysqli_error($con));

echo "<div style='background:#fff;color:#000;margin:10px;'>";
	while($row=mysqli_fetch_array($res))
	{
		echo "<input type='checkbox' name='interest2[]' value='$row[description]' /> $row[sublocation] ";
	echo " :: . ".$row['description']."  <br>";
	}

	echo "</div>";
}



}


}
?>
<div class="col-sm-3">
 <input type="submit" name="submit2" value="Travel Routes Exploration" class="form-control btn btn-danger btn-fill col-sm-3" style='color:#F00;'/>
 </div>
 </div>
<?php
echo "</form>";


?>


 </div>
            </div>
        </div>
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
    </div>
    <!-- Contact End -->

    <script>
function updateBudgetValue() {
  var slider = document.getElementById("budget");
  var value = document.getElementById("budget-value");
  value.innerHTML = slider.value;
}
</script>
    <?php include("footer.php"); ?>
