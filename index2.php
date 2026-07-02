<?php

include('header2.php');
?>

	<header id="gtco-header" class="gtco-cover gtco-cover-md" role="banner" style="background-image: url(images/img_bg_2.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">
						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1>Planing a Trip?</h1>	
						</div>
						<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">
									
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">
										<h3>PLAN TRIP</h3>
											<form action="home.php" method='post'>
												
												

												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary btn-block" value="Lets Start">
													</div>
												</div>
											</form>	
										</div>

										
									</div>
								</div>
							</div>
						</div>
					</div>
							
					
				</div>
			</div>
		</div>
	</header>
	
	<div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>Most Popular Destination</h2>
					<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
				</div>
			</div>
			<div class="row">
  <?php
                            
                             include("connection.php");
                               
							   
                                $sel = "SELECT * FROM `state` ORDER BY status DESC ";
                                $res=mysqli_query($con,$sel);
                                while ($row=mysqli_fetch_array($res)) 
                                 {
         
                                ?>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="places.php?id=<?php echo $row['state_name']; ?>" class="fh5co-card-item ">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="admin-temp/state/uploads/<?php echo $row['image']; ?>" alt="Image" width='100%' class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2><?php echo $row['state_name']; ?></h2>
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
							<p><span class="btn btn-primary">VIEW PLACES</span></p>
						</div>
					</a>
				</div>
				
				<?php
								 }
								 ?>

			</div>
		</div>
	</div>
	
		

	<div id="gtco-subscribe">
		<div class="gtco-container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>Subscribe</h2>
					<p>Be the first to know about the new templates.</p>
				</div>
			</div>
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2">
					<form class="form-inline">
						<div class="col-md-6 col-sm-6">
							<div class="form-group">
								<label for="email" class="sr-only">Email</label>
								<input type="email" class="form-control" id="email" placeholder="Your Email">
							</div>
						</div>
						<div class="col-md-6 col-sm-6">
							<button type="submit" class="btn btn-default btn-block">Subscribe</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

<?php

include("footer2.php");
?>