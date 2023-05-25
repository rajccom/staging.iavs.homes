
<div class="clear-filter"><button onClick="window.location.href=window.location.href"><i class="fa fa-times" aria-hidden="true"></i> Clear Filter</button></div>
<div class="accordion">
<div class="accordion-item">
  <h2 class="accordion-header" id="cat-filter">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#cat-filter-j" aria-expanded="false" aria-controls="cat-filter">
    Category
    </button>
  </h2>
  
  <?php
  $category = isset($_GET['category']) ? str_replace('-',' ',$_GET['category']) : '';
  $colour = isset($_GET['colour']) ? str_replace('-',' ',$_GET['colour']) : '';
  $selected_finish = isset($_GET['finish']) ? str_replace('-',' ',$_GET['finish']) : '';
  $style = isset($_GET['style']) ? str_replace('-',' ',$_GET['style']) : '';
  $size = isset($_GET['size']) ? str_replace('-',' ',$_GET['size']) : '';
  $selected_application = isset($_GET['app']) ? str_replace('-',' ',$_GET['app']) : '';
  $application_areas = isset($_GET['app_area']) ? str_replace('-',' ',$_GET['app_area']) : '';
  ?>
  <div id="cat-filter-j" class="accordion-collapse " aria-labelledby="cat-filter" data-bs-parent="#accordionExample">
    <div class="accordion-body">
    <?php

                    $query = "SELECT DISTINCT(category) FROM tiles WHERE product_status = '1' ORDER BY product_id ASC";
                    $statement = $connect->prepare($query);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['category']!=''){
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector category" value="<?php echo $row['category']; ?>" <?php if($category == $row['category']) { echo 'checked="checked"'; } ?> > <?php echo $row['category']; ?></label>
                    </div>
                    <?php
                    }
                  }

                    ?>
    </div>
  </div>
</div>

<div class="accordion-item">
  <h2 class="accordion-header" id="colour">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#colour-s" aria-expanded="false" aria-controls="colour">
    Colour
    </button>
  </h2>
  <div id="colour-s" class="accordion-collapse collapse" aria-labelledby="colour" data-bs-parent="#accordionExample">
    <div class="accordion-body">
    <?php

                    $query = "
                    SELECT DISTINCT(colour) FROM tiles WHERE product_status = '1' ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour']!=''){
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour" value="<?php echo $row['colour']; ?>" <?php if($colour == $row['colour']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour']; ?></label>
                    </div>
                    <?php
                    }
                  }
                    ?>
    </div>
  </div>
</div>

<div class="accordion-item">
  <h2 class="accordion-header" id="finish">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#finish-a" aria-expanded="false" aria-controls="finish">
      Finish
    </button>
  </h2>
  <div id="finish-a" class="accordion-collapse collapse" aria-labelledby="finish" data-bs-parent="#accordionExample">
    <div class="accordion-body">
      <?php

      $query = "
      SELECT DISTINCT finish, finish_one FROM tiles WHERE product_status = '1' ORDER BY product_id ASC
      ";
      $statement = $connect->prepare($query);
      $statement->execute();
      $result = $statement->fetchAll();

      $finishes = [];

      // Collect all finish values in a single array
      foreach ($result as $row) {
        if ($row['finish'] != '') {
          $finishes[] = $row['finish'];
        }
        if ($row['finish_one'] != '') {
          $finishes[] = $row['finish_one'];
        }
      }

      // Remove duplicate values
      $finishes = array_unique($finishes);

      // Display checkboxes for finishes
      foreach ($finishes as $finish) {
      ?>
        <div class="product-filter-y checkbox">
          <label>
            <input type="checkbox" class="common_selector finish" value="<?php echo $finish; ?>" <?php if ($finish == $selected_finish) { echo 'checked="checked"'; } ?>>
            <?php echo $finish; ?>
          </label>
        </div>
      <?php
      }

      ?>
    </div>
  </div>
</div>

<div class="accordion-item">
  <h2 class="accordion-header" id="style">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#style-p" aria-expanded="false" aria-controls="style">
    Style
    </button>
  </h2>
  <div id="style-p" class="accordion-collapse collapse" aria-labelledby="style" data-bs-parent="#accordionExample">
    <div class="accordion-body">
    <?php

                    $query = "
                    SELECT DISTINCT(style) FROM tiles WHERE product_status = '1' ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['style']!=''){
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector style" value="<?php echo $row['style']; ?>" <?php if($style == $row['style']) { echo 'checked="checked"'; } ?> > <?php echo $row['style']; ?></label>
                    </div>
                    <?php
                    }
                  }

                    ?>
    </div>
  </div>
</div>

<div class="accordion-item">
  <h2 class="accordion-header" id="size">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#size-b" aria-expanded="false" aria-controls="size-d">
    Size
    </button>
  </h2>
  <div id="size-b" class="accordion-collapse collapse" aria-labelledby="size" data-bs-parent="#accordionExample">
    <div class="accordion-body">
    <?php

                    $query = "
                    SELECT DISTINCT(size) FROM tiles WHERE product_status = '1' ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['size']!=''){
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector size" value="<?php echo $row['size']; ?>" <?php if($size == $row['size']) { echo 'checked="checked"'; } ?> > <?php echo $row['size']; ?></label>
                    </div>
                    <?php
                    }
                  }

                    ?>
    </div>
  </div>
</div>

<div class="accordion-item">
  <h2 class="accordion-header" id="application">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#application-collapse" aria-expanded="false" aria-controls="application-collapse">
      Application
    </button>
  </h2>
  <div id="application-collapse" class="accordion-collapse collapse" aria-labelledby="application" data-bs-parent="#accordionExample">
    <div class="accordion-body">
      <?php

      $query = "
      SELECT DISTINCT application, application_one FROM tiles WHERE product_status = '1' ORDER BY product_id ASC
      ";
      $statement = $connect->prepare($query);
      $statement->execute();
      $result = $statement->fetchAll();

      $applications = [];

      // Collect all application values in a single array
      foreach ($result as $row) {
        if ($row['application'] != '') {
          $applications[] = $row['application'];
        }
        if ($row['application_one'] != '') {
          $applications[] = $row['application_one'];
        }
      }

      // Remove duplicate values
      $applications = array_unique($applications);

      // Display checkboxes for applications
      foreach ($applications as $application) {
      ?>
        <div class="product-filter-y checkbox">
          <label>
            <input type="checkbox" class="common_selector application" value="<?php echo $application; ?>" <?php if ($application == $selected_application) { echo 'checked="checked"'; } ?>>
            <?php echo $application; ?>
          </label>
        </div>
      <?php
      }

      ?>
    </div>
  </div>
</div>


<div class="accordion-item">
  <h2 class="accordion-header" id="application_area">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#application-area-collapse" aria-expanded="false" aria-controls="application-area-collapse">
      Application Areas
    </button>
  </h2>
  <div id="application-area-collapse" class="accordion-collapse collapse" aria-labelledby="application_area" data-bs-parent="#accordionExample">
    <div class="accordion-body">
    <?php

    $query = "
    SELECT DISTINCT application_areas, application_areas_one, application_areas_two, application_areas_three, application_areas_four, application_areas_five
    FROM tiles WHERE product_status = '1' ORDER BY product_id ASC
    ";
    $statement = $connect->prepare($query);
    $statement->execute();
    $result = $statement->fetchAll();

    $applicationAreas = [];

    // Collect all application areas values in a single array
    foreach ($result as $row) {
      foreach ($row as $key => $value) {
        if ($value != '') {
          $applicationAreas[] = $value;
        }
      }
    }

    // Remove duplicate values
    $applicationAreas = array_unique($applicationAreas);

    // Display checkboxes for application areas
    foreach ($applicationAreas as $area) {
    ?>
      <div class="product-filter-y checkbox">
        <label><input type="checkbox" class="common_selector application_areas" value="<?php echo $area; ?>" <?php if ($application_areas == $area) { echo 'checked="checked"'; } ?> > <?php echo $area; ?></label>
      </div>
    <?php
    }

    ?>
    </div>
  </div>
</div>

</div>

<script>
  $(document).ready(function() {
    // Handle checkbox change events
    $('.common_selector').on('change', function() {
      filterProducts();
    });

    // Handle clear filter button click
    $('.clear-filter button').on('click', function() {
      // Uncheck all checkboxes
      $('.common_selector').prop('checked', false);
      filterProducts();
    });

    // Filter products based on selected checkboxes
    function filterProducts() {
      var category = [];
      var colour = [];
      var finish = [];
      var style = [];
      var size = [];
      var application = [];
      var applicationAreas = [];

      // Get selected checkbox values
      $('.common_selector.category:checked').each(function() {
        category.push($(this).val());
      });
      $('.common_selector.colour:checked').each(function() {
        colour.push($(this).val());
      });
      $('.common_selector.finish:checked').each(function() {
        finish.push($(this).val());
      });
      $('.common_selector.style:checked').each(function() {
        style.push($(this).val());
      });
      $('.common_selector.size:checked').each(function() {
        size.push($(this).val());
      });
      $('.common_selector.application:checked').each(function() {
        application.push($(this).val());
      });
      $('.common_selector.application_areas:checked').each(function() {
        applicationAreas.push($(this).val());
      });

      // Perform filtering
      $('.product-filter-y').hide(); // Hide all product filters

      // Filter by category
      if (category.length > 0) {
        category.forEach(function(value) {
          $('.category[value="' + value + '"]').closest('.product-filter-y').show();
        });
      } else {
        $('.category').closest('.product-filter-y').show();
      }

      // Filter by colour
      if (colour.length > 0) {
        colour.forEach(function(value) {
          $('.colour[value="' + value + '"]').closest('.product-filter-y').show();
        });
      } else {
        $('.colour').closest('.product-filter-y').show();
      }

      // Filter by finish
      if (finish.length > 0) {
        finish.forEach(function(value) {
          $('.finish[value="' + value + '"]').closest('.product-filter-y').show();
        });
      } else {
        $('.finish').closest('.product-filter-y').show();
      }

      // Filter by style
      if (style.length > 0) {
        style.forEach(function(value) {
          $('.style[value="' + value + '"]').closest('.product-filter-y').show();
        });
      } else {
        $('.style').closest('.product-filter-y').show();
      }

      // Filter by size
      if (size.length > 0) {
        size.forEach(function(value) {
          $('.size[value="' + value + '"]').closest('.product-filter-y').show();
        });
      } else {
        $('.size').closest('.product-filter-y').show();
      }

      // Filter by application
      if (application.length > 0) {
        application.forEach(function(value) {
          $('.application[value="' + value + '"]').closest('.product-filter-y').show();
        });
      } else {
        $('.application').closest('.product-filter-y').show();
      }

      // Filter by application areas
      if (applicationAreas.length > 0) {
        applicationAreas.forEach(function(value) {
          $('.application_areas[value="' + value + '"]').closest('.product-filter-y').show();
        });
      } else {
        $('.application_areas').closest('.product-filter-y').show();
      }
    }
  });

</script>