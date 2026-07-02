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
                <h2 class="mb-5">Get Your Fuel Price</h2>
            </div>
            <div class="row">
			
 
            
                <div  class="col-lg-12 col-md-12 wow fadeInUp" data-wow-delay="0.5s">
				
				
				
					
				
				
				
				
				
				
                    <form action='' method='post'>
                        <div class="row g-3">
						<div class="col-md-6">
                                <div class="">
								<input type="hidden" value="<?php echo $_REQUEST['fp']; ?>" name="fdist" />
								
								    <label for="name">TRAVEL MODE </label>
									<select class="form-control" name="tmode" required>
									<option value=''>-- Select  --</option>
									<option value='BIKE:30'>BIKE</option>
									<option value='4WHELER:10'>4 WHELER</option>
									<option value='TRAVELLER:5'>TRAVELLER</option>
									<option value='BUS:3'>BUS</option>
									</select>
									
                                   
                                </div>
                        </div>
                           
							 <div class="col-md-6" >
                                <div class="">
								 <label for="subject">AVAERAGE MILEAGE</label>
                          <input type="number" class="form-control" name="favg" value="10" min='1' id="subject" placeholder="No.of Person" required >
                                   
                                </div>
                            </div>	
							
							 <div class="col-md-6" >
                                <div class="">
								 <label for="subject">AVAERAGE FULE COST</label>
                          <input type="number" class="form-control" name="fcost" value="110" id="subject" placeholder="No.of Person" required >
                                   
                                </div>
                            </div>	
<br>
		<br>						
                                   
                                </div>
                            </div>
                           
                            <div class="col-12">
                                <button class="btn btn-primary w-100 py-3" type="submit" name="submit"> PREDICT PRICE</button>
                            </div>
                        </div>
                    </form>
					
					
					
					
					
				
					<?php
					if(isset($_POST['submit']))
					{
						
						
						$fp=$_POST['tmode'];
						
						$t=explode(":",$fp);
						
						$tmode=$t[0];
						$tprice=$t[1];
						
						
						$price=round(($_POST['fdist']/$_POST['favg'])*$_POST['fcost']);
						
						echo"
						
						<center>
						<img src='$tmode.png' />
						<h3>$tmode</h3>
						<h3>COST: $price</h3>
						
						
						</center>
					
						
						";
						
						
						
					}
					
					
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
