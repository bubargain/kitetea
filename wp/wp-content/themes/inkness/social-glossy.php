<div id="social-icons" class="col-md-5 col-xs-12">
				<?php if ( of_get_option('facebook', true) != "") { ?>
				 <a target="_blank" href="<?php echo esc_url(of_get_option('facebook', true)); ?>" title="Facebook" ><img src="<?php echo get_template_directory_uri()."/images/social/glossy/facebook.png"; ?>"></a>
	             <?php } ?>
	            <?php if ( of_get_option('twitter', true) != "") { ?>
				 <a target="_blank" href="<?php echo esc_url("http://twitter.com/".of_get_option('twitter', true)); ?>" title="Twitter" ><img src="<?php echo get_template_directory_uri()."/images/social/glossy/twitter.png"; ?>"></a>
	             <?php } ?>
	             <?php if ( of_get_option('google', true) != "") { ?>
				 <a target="_blank" href="<?php echo esc_url(of_get_option('google', true)); ?>" title="Google Plus" ><img src="<?php echo get_template_directory_uri()."/images/social/glossy/google.png"; ?>"></a>
	             <?php } ?>
	             <?php if ( of_get_option('feedburner', true) != "") { ?>
				 <a target="_blank" href="<?php echo esc_url(of_get_option('feedburner', true)); ?>" title="RSS Feeds" ><img src="<?php echo get_template_directory_uri()."/images/social/glossy/rss.png"; ?>"></a>
	             <?php } ?>
	             <?php if ( of_get_option('instagram', true) != "") { ?>
				 <a target="_blank" href="<?php echo esc_url(of_get_option('instagram', true)); ?>" title="Instagram" ><img src="<?php echo get_template_directory_uri()."/images/social/glossy/instagram.png"; ?>"></a>
	             <?php } ?>
	             <?php if ( of_get_option('flickr', true) != "") { ?>
				 <a target="_blank" href="<?php echo esc_url(of_get_option('flickr', true)); ?>" title="Flickr" ><img src="<?php echo get_template_directory_uri()."/images/social/glossy/flickr.png"; ?>"></a>
	             <?php } ?>
	             <?php if ( of_get_option('linkedin', true) != "") { ?>
				 <a target="_blank" href="<?php echo esc_url(of_get_option('linkedin', true)); ?>" title="Linked In" ><img src="<?php echo get_template_directory_uri()."/images/social/glossy/linkedin.png"; ?>"></a>
	             <?php } ?>
	             <?php if ( of_get_option('pinterest', true) != "") { ?>
				 <a target="_blank" href="<?php echo esc_url(of_get_option('pinterest', true)); ?>" title="Pinterest" ><img src="<?php echo get_template_directory_uri()."/images/social/glossy/pinterest.png"; ?>"></a>
	             <?php } ?>
	             <?php if ( of_get_option('youtube', true) != "") { ?>
				 <a target="_blank" href="<?php echo esc_url(of_get_option('youtube', true)); ?>" title="YouTube" ><img src="<?php echo get_template_directory_uri()."/images/social/glossy/youtube.png"; ?>"></a>
	             <?php } ?>
         	             <?php if ( of_get_option('custsoc1', true) != "") { ?>
				 <a target="_blank" href="<?php echo esc_url(of_get_option('custprofileurl1', true)); ?>" title="<?php echo of_get_option('custsoc1',true); ?>" ><img src="<?php echo of_get_option('custsocurl1',true); ?>"></a>
	             <?php } ?>
	             <?php if ( of_get_option('custsoc2', true) != "") { ?>
				 <a target="_blank" href="<?php echo esc_url(of_get_option('custprofileurl2', true)); ?>" title="<?php echo of_get_option('custsoc2',true); ?>" ><img src="<?php echo of_get_option('custsocurl2',true); ?>"></a>
	             <?php } ?>
</div> 