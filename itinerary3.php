
<?php
 include("header.php");
 include("connection.php");
 ?>

<style>
input[type="range"] {
  width: 600px;
  
}
</style>
<script>
        function printDiv() {
            var divContents = document.getElementById("GFG").innerHTML;
            var a = window.open('', '', 'height=500, width=500');
            a.document.write('<html>');
          
            a.document.write(divContents);
            a.document.write('</body></html>');
            a.document.close();
            a.print();
        }
    </script>


    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Explore Eaze</h6>
                <h2 class="mb-5">Get Your Personalised Itinerary</h2>
            </div>
            <div class="row">
 
            
                <div  class="col-lg-12 col-md-12 wow fadeInUp" data-wow-delay="0.5s">
                   
				   <div id="GFG" >
				  <img src='logo.png'>
				   <?php
				   
				  
	echo"
<h2>	Tavel From $_POST[Place1] To $_POST[Place]</h2>
	
	<b>Start Date $_POST[day1] to End Date $_POST[day2] <br>
No.of Person  : $_POST[Person]	</b>
	";
	
	 $sel5 = "SELECT * FROM place WHERE place_name='$_POST[Place]'";
     $res5=mysqli_query($con,$sel5);
     $row5=mysqli_fetch_array($res5);
	
	echo"<h1>$row5[place_name]</h1>";
	echo"<p>$row5[description]</p>";
	?>
	   <div class="overflow-hidden">
        <img class="img-fluid" src="admin-temp/place/uploads/<?php echo $row5['image']; ?>" alt="">
        </div>
	
	<?php
	
	
	echo"<br><br><h3>Itinerary Details</h3>"; 
				   
				   
				   
				   
				   
				   
				   $tot=0;$loc=0;
		$checkbox1=$_POST['interest2']; 
		$i=0;
		
		foreach($checkbox1 as $chk1)  
   {  
   
   
  // echo $chk1."yyy<br>";
   $i++;
   
   if($i==1)
   {
	 
					$d3=$_POST['day1'];
				
					
				
				
			echo "<h3>DAY 1 ( $d3 )</h3>";
			
   }
      
	if($i==6)
   {
	   $d3=date('Y-m-d', strtotime("+1 day", strtotime($d3)));
	   echo "<h3>DAY 2 ( $d3 )</h3>";
   }
   if($i==11)
   {
	   $d3=date('Y-m-d', strtotime("+1 day", strtotime($d3)));
	   echo "<h3>DAY 3 ( $d3 )</h3>";
   }
     
							   $sel = "SELECT * FROM pakages WHERE id='$chk1'"; 
							   
							  // echo $sel;
                               $res=mysqli_query($con,$sel);
                               $row=mysqli_fetch_array($res);
                                
	  echo "<b>".$row['sublocation']."(".$row['sub_category']." )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <br>".$row['description']." </b><br>
		Rate : ".$row['rate']."<br>";
		
		$tot=$tot+$row['rate'];
		
		if($loc!='')
		{
	  $loc= $loc."/".$row['lat'].",".$row['lng'];
		}
		else
		{
			 $loc=$row['lat'].",".$row['lng'];
		}
	  
	  
	  
   
    }
     
   echo"<h3>TOTAL COST : $tot</h4>";
   
   if($tot>$_POST['budget'])
   {
	   echo"Budget Has Exceeded ";
   }
   
				   ?>
				   
				   
				  
				   
				  
				   
				   </div>
				   
				   
				   <a href='https://www.google.com/maps/dir/<?php echo $loc ?>' class='btn btn-danger' target='_blank'>MAP LINK </a>
				   
				   
				    <input type="button" value="Print" onclick="printDiv()" class='btn btn-primary'>
				   
				   </div>
				   
                </div>
            </div>
        </div>
    </div> </div> </div>
    <!-- Contact End -->

    <script>
function updateBudgetValue() {
  var slider = document.getElementById("budget");
  var value = document.getElementById("budget-value");
  value.innerHTML = slider.value;
}
</script>


    <?php //include("footer.php"); ?>
