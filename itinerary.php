<?php 
error_reporting(0);
include("header.php");
include("connection.php");

 ?>

<style>
input[type="range"] {
  width: 600px;
  
}
</style>



    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Explore Eaze</h6>
                <h2 class="mb-5">Get Your Personalised Itinerary</h2>
            </div>
            <div class="row">
 
            
                <div  class="col-lg-12 col-md-12 wow fadeInUp" data-wow-delay="0.5s">
                    <form action='itinerary2.php' method='post'>
                        <div class="row g-3">
						<div class="col-md-6">
                                <div class="">
								    <label for="name">Choose Your From</label>
                                    <input type="text" class="form-control" id="name"  name='Place1' placeholder="Your Place" required >
                                
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="">
								    <label for="name">Choose Your Destination</label>
                                    <input type="text" class="form-control" id="name" value="<?php echo $_REQUEST['place']; ?>"  name='Place' required placeholder="Your Destination">
                                
                                </div>
                            </div>
							
							 <div class="col-md-6">
                                <div class="">
								 <label for="subject"> START DATE</label>
                                    <input type="date" class="form-control" name="day1" value="<?php echo date('Y-m-d') ?>" min="<?php echo date('Y-m-d') ?>" id="subject" placeholder="Subject" required>
                                   
                                </div>
                            </div>
							 <div class="col-md-6">
                                <div class="">
								 <label for="subject"> END DATE</label>
                                    <input type="date" class="form-control" name="day2" value="<?php echo date('Y-m-d') ?>" min="<?php echo date('Y-m-d') ?>" id="subject" placeholder="Subject" required>
                                   
                                </div>
                            </div>
							
                            
							<!--
                            <div class="col-12">
                                <div class="">
								 <label for="subject">Tour Days</label>
                                    <input type="number" class="form-control" name="day" id="subject" placeholder="Subject">
                                   
                                </div>
                            </div>-->
                            <div class="col-md-12">
                                <div class="">
	  <label for="subject"><b>Preffered Attractions</b></label>	<br>					
  <?php

	
	
	
	 //$res=mysqli_query($con,"select * from msg where username='$_SESSION[email]'");

	$res=mysqli_query($con,"select DISTINCT(sub_category) as sub_category   from pakages");
	while($row=mysqli_fetch_array($res))
	{
	echo "<input type='checkbox' name='interest[]' value='$row[sub_category]' /> $row[sub_category] ";
	
	$i++;
	}
	
	
	
	
  
  ?>
   

  
                                  
                                  
                                </div>
                            </div>
							 <div class="col-md-6" >
                                <div class="">
								 <label for="subject"> NO. OF PERSON</label>
                                    <input type="number" class="form-control" name="Person" id="subject" placeholder="No.of Person" required >
                                   
                                </div>
                            </div>	
                            
 <div class="col-md-6">
                                <div class="" style='padding-right:100px !important;' >
                                    <label for="budget">Budget:</label>
                    <input type="range" id="budget" name="budget" min="500" max="15000" step="100" value="5000" oninput="updateBudgetValue()"><br><br>
                                    <div id="budget-value">5000</div>
                                </div>
                            </div>				
								 
								
                                   
                                </div>
                            </div>
                           
                            <div class="col-12">
                                <button class="btn btn-primary w-100 py-3" type="submit">Generate Itinerary</button>
                            </div>
                        </div>
                    </form>
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
