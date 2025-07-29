<section id="vk-banner">
    <div class="overlay">
        <div id="demo">
            <div id="owl-demo3" class="owl-carousel owl-theme"">
            <!-- <div class="item"><img src="images/slider3.jpg" alt=""></div>
            <div class="item"><img src="images/slider4.jpg" alt=""></div> -->
            <?php
	            $array = json_decode($rowConfig['slideshow_home'], true);
	            foreach ($array as $key => $val) {
	                $img = json_decode($val, true);
	                if ($img != '') {
	                    ?> 
	        <div class="item"><img src="/images/<?= $img['image']?>" alt="slideshow"></div>
	        <?php                            
	              }
	          }
	        ?>  
        </div>
    </div>
    </div>
</section>