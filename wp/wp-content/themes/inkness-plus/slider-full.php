<?php
	if ( ( ( of_get_option('slider_enabled') != 0 ) && (is_home() ) )
		|| ( (of_get_option('slider_enabled_posts') != 0 ) && (is_single() ) )
		|| ( (of_get_option('slider_enabled_pages') != 0 ) && is_page() )
		|| ( (of_get_option('slider_enabled_front') != 0 ) && is_front_page() )
		|| ( (of_get_option('slider_enabled_archives') != 0 ) && is_archive() ) 
		|| ( is_page_template('page-slider.php') )
		|| ( is_page_template('page-full-width-slider.php') ) )    
		{ ?>
	<div class="slider-wrapper theme-default"> 
    	<div class="ribbon"></div>    
    		<div id="slider" class="nivoSlider">
    			<?php
		  		$slider_flag = false;
		  		for ($i=1;$i<9;$i++) {
		  			$caption = ((of_get_option('slidetitle'.$i, true)=="")?"":"#caption_".$i);
					if ( of_get_option('slide'.$i, true) != "" ) {
						echo "<a href='".of_get_option('slideurl'.$i, true)."'><img src='".of_get_option('slide'.$i, true)."' title='".$caption."'></a>"; 
						$slider_flag = true;
					}
				}
				?>  
    		</div><!--#slider-->
    		<?php for ($i=1;$i<9;$i++) {
    				$caption = ((of_get_option('slidetitle'.$i, true)=="")?"":"#caption_".$i);
    				if ($caption != "")
    				{
	    				echo "<div id='caption_".$i."' class='nivo-html-caption'><div class='nivocapper'>";
	    				echo "<a href='".of_get_option('slideurl'.$i, true)."'><div class='slide-title'>".of_get_option('slidetitle'.$i, true)."</div></a>";
	    				echo "<div class='slide-description'>".of_get_option('slidedesc'.$i, true)."</div>";
	    				echo "</div></div>"; //closing nicocapper and caption_#id
    				}
    			}	
    	    
			?>
    </div>	
	<?php 
			}