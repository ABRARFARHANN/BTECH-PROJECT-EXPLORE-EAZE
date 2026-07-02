
<?php include("header.php"); ?>

    <!-- Navbar & Hero End -->
<br><br><br>


    <!-- Destination Start -->


    <!-- Package Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Plan Your Trip With Us</h6>
                <h1 class="mb-5">Guides</h1>
            </div>
            <div class="row g-12 justify-content-center">

            <?php
                            
                            include("connection.php");
                              
                               $sel = "SELECT * FROM `guide` WHERE state_id='$_REQUEST[id]' ";
							   
							
                               $res=mysqli_query($con,$sel);
                               while ($row=mysqli_fetch_array($res)) 
                                {
        
                               ?>

                <div class="testimonial-item bg-white text-center border p-4 col-md-6">
                    <img class="bg-white rounded-circle shadow p-1 mx-auto mb-3" src="img/1.png" style="width: 80px; height: 80px;">
                    <h5 class="mb-0"><?php echo $row['guide_name']; ?></h5>
                    <p> <b>Address :</b>  <?php echo $row['guide_address']; ?></p>
                    <p> <b>State :</b>  <?php echo $row['state_id']; ?></p>
                    <p> <b>Phone Number :</b> <a href='tel:<?php echo $row['phone_number']; ?>' > <?php echo $row['phone_number']; ?> </a></p>
                    <p class="mb-0"><b>About :</b> <?php echo $row['about_me']; ?></p>
                    <p> <b>Language :</b>  <?php echo $row['language']; ?></p>
                    <p> <b>Status :</b>  <?php echo $row['status']; ?></p>
                </div>
                <?php } ?>

            </div>
        </div>
    </div>
    <!-- Testimonial End -->
        
    <?php include("footer.php"); ?>
