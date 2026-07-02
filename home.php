
<?php include("header.php"); ?>

    <!-- Navbar & Hero End -->
<br><br><br><br><br><br><br><br><br><br><br><br>

<br><br>
    <!-- Destination Start -->
    <div class="container-xxl py-5 destination">
        <div class="container">
		
				<form action="places.php" method='post'>
				
				<input type='text' name='place' class='form-control' placeholder='Enter Place Name' />
				 
                                <button class="btn btn-primary w-100 py-3" type="submit">Search</button>
                            
				</form>
				<br><br>
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                  <h1 class="mb-5">DISCOVER</h1>
            </div>
            <div class="row g-3">
                <div class="col-lg-12 col-md-12">
				
				
                    <div class="row g-3">
                        <!-- <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
                            <a class="position-relative d-block overflow-hidden" href="">
                                <img class="img-fluid" src="img/destination-1.jpg" alt="">
                                <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">30% OFF</div>
                                <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Thailand</div>
                            </a>
                        </div> -->
                        <?php
                            
                             include("connection.php");
                               
							   
                                $sel = "SELECT * FROM `state` ORDER BY status DESC ";
                                $res=mysqli_query($con,$sel);
                                while ($row=mysqli_fetch_array($res)) 
                                 {
         
                                ?>
                        <div class="col-lg-4 col-md-12 wow zoomIn" data-wow-delay="0.3s">
                            <a class="position-relative d-block overflow-hidden"  href="places.php?id=<?php echo $row['state_name']; ?>">
                                <img class="img-fluid" src="admin-temp/state/uploads/<?php echo $row['image']; ?>" alt="" style="height:300px;">
                              <?php
							  if($row['status']=='popular')
							  {
							  ?>
							  <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">
								Most Popular
								</div>
							  <?php
							  }
							  ?>
							   <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2"><?php echo $row['state_name']; ?></div>
                            </a>
                        </div>
                        <?php } ?>

                       
                    
               
                </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Destination Start -->



        
    <?php include("footer.php"); ?>
