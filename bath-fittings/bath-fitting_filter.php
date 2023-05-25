
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
  $type = isset($_GET['type']) ? str_replace('-',' ',$_GET['type']) : '';
  $cock_type = isset($_GET['cock_type']) ? str_replace('-',' ',$_GET['cock_type']) : '';
  $finish = isset($_GET['finish']) ? str_replace('-',' ',$_GET['finish']) : '';
  $collection = isset($_GET['collection']) ? str_replace('-',' ',$_GET['collection']) : '';
  ?>
  <div id="cat-filter-j" class="accordion-collapse collapse" aria-labelledby="cat-filter" data-bs-parent="#accordionExample">
    <div class="accordion-body">
    <?php

                    $query = "SELECT DISTINCT(category) FROM bath_fitting WHERE product_status = '1' ORDER BY product_id ASC";
                    $statement = $connect->prepare($query);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['category']!='')
                      {
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
                    SELECT DISTINCT(colour) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour" value="<?php echo $row['colour']; ?>" <?php if($colour == $row['colour']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour']; ?></label>
                    </div>
                    <?php
                    }
                  }

                    ?>
    <?php

                    $query1 = "
                    SELECT DISTINCT(colour_one) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query1);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_one']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_one" value="<?php echo $row['colour_one']; ?>" <?php if($colour == $row['colour_one']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_one']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?>   
                    
    <?php

                    $query2 = "
                    SELECT DISTINCT(colour_two) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query2);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_two']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_two" value="<?php echo $row['colour_two']; ?>" <?php if($colour == $row['colour_two']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_two']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?> 
        <?php

                    $query3 = "
                    SELECT DISTINCT(colour_three) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query3);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_three']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_three" value="<?php echo $row['colour_three']; ?>" <?php if($colour == $row['colour_three']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_three']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?> 
        <?php

                    $query4 = "
                    SELECT DISTINCT(colour_four) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query4);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_four']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_four" value="<?php echo $row['colour_four']; ?>" <?php if($colour == $row['colour_four']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_four']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?>
        <?php

                    $query5 = "
                    SELECT DISTINCT(colour_five) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query5);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_five']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_five" value="<?php echo $row['colour_five']; ?>" <?php if($colour == $row['colour_five']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_five']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?>
        <?php

                    $query6 = "
                    SELECT DISTINCT(colour_six) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query6);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_six']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_six" value="<?php echo $row['colour_six']; ?>" <?php if($colour == $row['colour_six']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_six']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?>
        <?php

                    $query7 = "
                    SELECT DISTINCT(colour_seven) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query7);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_seven']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_seven" value="<?php echo $row['colour_seven']; ?>" <?php if($colour == $row['colour_seven']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_seven']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?>
        <?php

                    $query8 = "
                    SELECT DISTINCT(colour_eight) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query8);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_eight']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_eight" value="<?php echo $row['colour_eight']; ?>" <?php if($colour == $row['colour_eight']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_eight']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?>
        <?php

                    $query9 = "
                    SELECT DISTINCT(colour_nine) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query9);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_nine']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_nine" value="<?php echo $row['colour_nine']; ?>" <?php if($colour == $row['colour_nine']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_nine']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?>
        <?php

                    $query10 = "
                    SELECT DISTINCT(colour_ten) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query10);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_ten']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_ten" value="<?php echo $row['colour_ten']; ?>" <?php if($colour == $row['colour_ten']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_ten']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?>
        <?php

                    $query11 = "
                    SELECT DISTINCT(colour_eleven) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query11);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_eleven']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_eleven" value="<?php echo $row['colour_eleven']; ?>" <?php if($colour == $row['colour_eleven']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_eleven']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?>
        <?php

                    $query12 = "
                    SELECT DISTINCT(colour_twelve) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query12);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_twelve']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_twelve" value="<?php echo $row['colour_twelve']; ?>" <?php if($colour == $row['colour_twelve']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_twelve']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?>
        <?php

                    $query13 = "
                    SELECT DISTINCT(colour_thirteen) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query13);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['colour_thirteen']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector colour_thirteen" value="<?php echo $row['colour_thirteen']; ?>" <?php if($colour == $row['colour_thirteen']) { echo 'checked="checked"'; } ?> > <?php echo $row['colour_thirteen']; ?></label>
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
    Type
    </button>
  </h2>
  <div id="finish-a" class="accordion-collapse collapse" aria-labelledby="finish" data-bs-parent="#accordionExample">
    <div class="accordion-body">
    <?php

                    $query = "
                    SELECT DISTINCT(type) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['type']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector type" value="<?php echo $row['type']; ?>" <?php if($type == $row['type']) { echo 'checked="checked"'; } ?> > <?php echo $row['type']; ?></label>
                    </div>
                    <?php
                    }
                  }

                    ?>
    <!-- <?php

                    // $query1 = "
                    // SELECT DISTINCT(type) FROM bath_fitting ORDER BY product_id ASC
                    // ";
                    // $statement = $connect->prepare($query1);
                    // $statement->execute();
                    // $result = $statement->fetchAll();
                    // foreach($result as $row)
                    // {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector cock_type" value="<?php //echo $row['cock_type']; ?>" <?php //if($category == $row['categroy']) { echo 'checked="checked"'; } ?>  > <?php// echo $row['cock_type']; ?></label>
                    </div>
                    <?php
                   // }

                    ?> -->
    </div>
  </div>
</div>

 <div class="accordion-item">
  <h2 class="accordion-header" id="style">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#style-p" aria-expanded="false" aria-controls="style">
    Cock
    </button>
  </h2>
  <div id="style-p" class="accordion-collapse collapse" aria-labelledby="style" data-bs-parent="#accordionExample">
    <div class="accordion-body">
    <?php

                    $query = "
                    SELECT DISTINCT(cock_type) FROM bath_fitting ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['cock_type']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector cock_type" value="<?php echo $row['cock_type']; ?>" <?php if($cock_type == $row['cock_type']) { echo 'checked="checked"'; } ?> > <?php echo $row['cock_type']; ?></label>
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
    Finish
    </button>
  </h2>
  <div id="size-b" class="accordion-collapse collapse" aria-labelledby="size" data-bs-parent="#accordionExample">
    <div class="accordion-body">
    <?php

                    $query = "
                    SELECT DISTINCT(finish) FROM bath_fitting WHERE product_status = '1' ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['finish']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector finish" value="<?php echo $row['finish']; ?>" <?php if($finish == $row['finish']) { echo 'checked="checked"'; } ?> > <?php echo $row['finish']; ?></label>
                    </div>
                    <?php
                    }
                  }

                    ?>
    <?php

                    $query1 = "
                    SELECT DISTINCT(finish_one) FROM bath_fitting WHERE product_status = '1' ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query1);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['finish_one']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector finish_one" value="<?php echo $row['finish_one']; ?>" <?php if($finish == $row['finish_one']) { echo 'checked="checked"'; } ?> > <?php echo $row['finish_one']; ?></label>
                    </div>
                    <?php
                    }
                  }

                    ?>
        <?php

                    $query2 = "
                    SELECT DISTINCT(finish_two) FROM bath_fitting WHERE product_status = '1' ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query2);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['finish_two']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector finish_two" value="<?php echo $row['finish_two']; ?>" <?php if($finish == $row['finish_two']) { echo 'checked="checked"'; } ?> > <?php echo $row['finish_two']; ?></label>
                    </div>
                    <?php
                    }
                  }

                    ?>
            <?php

                    $query3 = "
                    SELECT DISTINCT(finish_three) FROM bath_fitting WHERE product_status = '1' ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query3);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['finish_three']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector finish_three" value="<?php echo $row['finish_three']; ?>" <?php if($finish == $row['finish_three']) { echo 'checked="checked"'; } ?> > <?php echo $row['finish_three']; ?></label>
                    </div>
                    <?php
                    }
                  }

                    ?>
              <?php
                    $query4 = "
                    SELECT DISTINCT(finish_four) FROM bath_fitting WHERE product_status = '1' ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query4);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['finish_four']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector finish_four" value="<?php echo $row['finish_four']; ?>" <?php if($finish == $row['finish_four']) { echo 'checked="checked"'; } ?> > <?php echo $row['finish_four']; ?></label>
                    </div>
                    <?php
                    }
                  }

                    ?>
             <?php
                    $query5 = "
                    SELECT DISTINCT(finish_five) FROM bath_fitting WHERE product_status = '1' ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query5);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['finish_five']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector finish_five" value="<?php echo $row['finish_five']; ?>" <?php if($finish == $row['finish_five']) { echo 'checked="checked"'; } ?> > <?php echo $row['finish_five']; ?></label>
                    </div>
                    <?php
                    }
                  }

                    ?>

             
    </div>
  </div>
</div>

<!-- <div class="accordion-item">
  <h2 class="accordion-header" id="size">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#size-d" aria-expanded="false" aria-controls="size-d">
    Collection
    </button>
  </h2>
  <div id="size-d" class="accordion-collapse collapse" aria-labelledby="size" data-bs-parent="#accordionExample">
    <div class="accordion-body">
    <?php

                    // $query = "
                    // SELECT DISTINCT(collection) FROM sanitaryware WHERE product_status = '1' ORDER BY product_id ASC
                    // ";
                    // $statement = $connect->prepare($query);
                    // $statement->execute();
                    // $result = $statement->fetchAll();
                    // foreach($result as $row)
                    // {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector collection" value="<?php //echo $row['collection']; ?>" > <?php// echo $row['collection']; ?></label>
                    </div>
                    <?php    
                    // }

                    ?>
    <?php

                    // $query1 = "
                    // SELECT DISTINCT(application_one) FROM sanitaryware WHERE product_status = '1' ORDER BY product_id ASC
                    // ";
                    // $statement = $connect->prepare($query1);
                    // $statement->execute();
                    // $result = $statement->fetchAll();
                    // foreach($result as $row)
                    // {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector application_one" value="<?php //echo $row['application_one']; ?>" > <?php //echo $row['application_one']; ?></label>
                    </div>
                    <?php    
                   // }

                    ?>                 
    </div>
  </div>
</div> -->

<div class="accordion-item">
  <h2 class="accordion-header" id="application">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#application-h" aria-expanded="false" aria-controls="application">
    Collection
    </button>
  </h2>
  <div id="application-h" class="accordion-collapse collapse" aria-labelledby="application" data-bs-parent="#accordionExample">
    <div class="accordion-body">
      <?php

                    $query = "
                    SELECT DISTINCT(collection) FROM bath_fitting WHERE product_status = '1' ORDER BY product_id ASC
                    ";
                    $statement = $connect->prepare($query);
                    $statement->execute();
                    $result = $statement->fetchAll();
                    foreach($result as $row)
                    {
                      if($row['collection']!='')
                      {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector collection" value="<?php echo $row['collection']; ?>" <?php if($collection == $row['collection']) { echo 'checked="checked"'; } ?> > <?php echo $row['collection']; ?></label>
                    </div>
                    <?php    
                    }
                  }

                    ?>
    
    </div>
  </div>
</div>

<!--<div class="accordion-item">
  <h2 class="accordion-header" id="finish">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#finish-d" aria-expanded="false" aria-controls="finish-d">
    Finish
    </button>
  </h2>
  <div id="finish-d" class="accordion-collapse collapse" aria-labelledby="finish" data-bs-parent="#accordionExample">
    <div class="accordion-body">
    <?php
                    // $query = "
                    // SELECT DISTINCT(name) FROM finish ORDER BY id ASC
                    // ";
                    // $statement = $connect->prepare($query);
                    // $statement->execute();
                    // $result = $statement->fetchAll();
                    // foreach($result as $row)
                    // {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector finish" value="<?php// echo $row['id']; ?>"  > <?php //echo $row['name']; ?></label>
                    </div>
                    <?php
                    // }
                    ?>	
    </div>
  </div>
</div>


 <div class="accordion-item">
  <h2 class="accordion-header" id="Concept">
    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#Concept-d" aria-expanded="false" aria-controls="Concept-d">
    Concept
    </button>
  </h2>
  <div id="Concept-d" class="accordion-collapse collapse" aria-labelledby="Concept" data-bs-parent="#accordionExample">
    <div class="accordion-body">
    <?php
                    // $query = "
                    // SELECT DISTINCT(concept) FROM product WHERE product_status = '1' ORDER BY concept DESC
                    // ";
                    // $statement = $connect->prepare($query);
                    // $statement->execute();
                    // $result = $statement->fetchAll();
                    // foreach($result as $row)
                    // {
                    ?>
                    <div class="product-filter-y checkbox">
                        <label><input type="checkbox" class="common_selector concept" value="<?php //echo $row['concept']; ?>"  > <?php //echo $row['concept']; ?></label>
                    </div>
                    <?php
                   // }
                    ?>		
    </div>
  </div>
</div> -->

</div>