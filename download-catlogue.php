<?php
$page ='contact-us';
?>

<?php include 'inc/head.php'; ?>

<title>Ivas</title>
<meta name="description" content="" />
<link rel="canonical" href="" />
<?php include 'inc/header.php'; ?>

<div class="modular-kitchen-banner py-5" id="contact-banner">
        <div class="container">
		<div class="row align-items-center">
		<div class="col-sm-8 px-5 py-3">
          <div class="text-start">
            <h2 class="m-0 py-4">Download Catalogue</h2>
          </div>
		   </div>
      </div>
        </div>
      </div>


      <section class="contact-us inquiry-model my-5">
    <div class="container">
			<div class="terms-condition">
			<h2 class="mb-2">Download Catalogue</h2>
<p>Click on the icon below to download catalogue</p>


<div class="row effecient-kitchens" id="tiles-finishesh">
<!-- Modal -->
        <div class="col">

          <a class="catalog-link" data-catalog="Modular Kitchen" data-catalogs="images/pdfs/Modular-Kitchen.pdf" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		<img src="images/modular-kitchen-img.jpg" alt="Modular Kitchen" Title="Modular Kitchen" width="216" height="197" style="border:1px solid gray;">
		<h5>Modular Kitchen</h5>
    <h5>Download Catalogue <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></h5></a></div>
        
		<div class="col">
          <a href="#" class="catalog-link"  data-catalog="Designer-Hardware"  data-catalogs="images/pdf/Designer-Hardware.pdf" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		<img src="images/designer-hardware-img.jpg" alt="Designer Hardware" Title="Designer Hardware" width="216" height="197">
		<h5>Designer Hardware</h5><h5>Download Catalogue <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></h5></a></div>
    <div class="col">
          <a href="#" data-catalog="Sanitaryware-and-Bath-Fittings.pdf"  data-catalogs="images/pdf/Sanitaryware-and-Bath-Fittings.pdf" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		<img src="images/bath-fittings-img.jpg" alt="Sanitaryware &amp; Bath Fittings" title="Sanitaryware &amp; Bath Fittings" width="216" height="197">
		<h5>Sanitaryware &amp; Bath Fittings</h5>
    <h5>Download Catalogue <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></h5></a></div>
  <div class="col">
          <a href="#" class="catalog-link" data-catalog="GVT Slabs"   data-catalogs="images/pdf/GVT-Slabs.pdf" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		<img src="images/download-catalouge-gvt-slab.jpg" alt="GVT Slabs" Title="GVT Slabs" width="216" height="197">
		<h5>GVT Slabs</h5><h5>Download Catalogue <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></h5></a></div>
		<div class="col">
      <a href="#" class="catalog-link" data-catalog="Monocotta"  data-catalogs="images/pdf/Monocotta.pdf" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		<img src="images/download-catalouge-monocotta.jpg" alt="Monocotta" Title="Monocotta" width="216" height="197">
		<h5>Monocotta</h5>
    <h5>Download Catalogue <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></h5></a></div>
    </div>
	
	<div class="row effecient-kitchens" id="tiles-finishesh" style="margin-top:60px;">
<!-- Modal -->
    <div class="col"><a href="#" class="catalog-link" data-catalog="Ceramic Wall and Floor"  data-catalogs="images/pdf/Ceramic Wall and Floor.pdf" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		<img src="images/download-brochure-ceramic-wall-and-floor.jpg" alt="Ceramic Wall and Floor" Title="Ceramic Wall and Floor" width="216" height="197">
		<h5>Ceramic Wall and Floor</h5>
    <h5>Download Catalogue <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></h5></a></div>

    <div class="col"><a href="#" class="catalog-link" data-catalog="GVT"  data-catalog="images/pdf/GVT.pdf" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		<img src="images/download-catalouge-gvt.jpg" alt="GVT" Title="GVT" width="216" height="197">
    <h5>GVT</h5>
		<h5>Download Catalogue <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></h5></a></div>

		<div class="col"><a href="#" class="catalog-link" data-catalog="Elevation-and-Parking"  data-catalogs="images/pdf/Elevation-and-Parking.pdf" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		<img src="images/download-brochure-elevation-and-parking.jpg" alt="Elevation and Parking" Title="Elevation and Parking" width="216" height="197">
		<h5>Elevation and Parking</h5><h5>Download Catalogue <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></h5></a></div>
	<div class="col"></div>
    <div class="col"></div>
    </div>
</div>
</div>
</section>


<!-- Modal -->
  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Download Catalogue</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

      <form id="enquiry-form" action="catalog.php"  method="POST">

      <div class="row">
		<div class="col-sm-6">
	 <div class="form-floating">
      <input type="text" name="sname" class="form-control" placeholder="Name" />
    </div>
  </div>

  
	<div class="col-sm-6">
	    <div class="form-floating">
      <input type="tel" name="phone" class="form-control" placeholder="Phone No" />
    </div>
    </div>

    <div class="col-sm-6">
    <div class="form-floating">
      <input type="email" name="email" class="form-control" placeholder="Email" >
    </div></div>

    <div class="col-sm-6">
    <div class="form-floating">
    <input type="hidden" name="catalog_name" id="catalog-name">
      <!-- <input type="text" name="city" class="form-control" placeholder="City" oninput="this.value = this.value.replace(/[^a-zA-Z ]/g, ''); this.value = this.value.replace(/(\..*)\./g, '$1');" required/> -->
      </div>
    </div>

    

    <div class="col-sm-12">
    <button class="w-100 btn btn-lg btn-primary rounded-circle" type="submit" name="submit" value="Submit">Submit</button>    </div>

    </div>


  </form>
      </div>

    </div>
  </div>
</div>



<?php include 'inc/footer-js.php'; ?>
<script type="text/javascript" src="js/location.js"></script>
<script>
  // Handle click event on catalog links
  document.querySelectorAll('.catalog-link').forEach(function(link) {
    link.addEventListener('click', function(event) {
      event.preventDefault(); // Prevent the link from navigating

      // Get the catalog URL from the data attribute
      var catalogUrl = this.dataset.catalogs;

      // Trigger the file download
      window.location.href = catalogUrl;

      // Open the modal
      var modalTarget = this.dataset.bsTarget;
      if (modalTarget) {
        var modal = document.querySelector(modalTarget);
        var backdrop = bootstrap.Modal.getInstance(modal);
        backdrop.show();
      }
    });
  });
</script>
<?php include 'inc/footer.php'; ?>