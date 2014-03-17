<?php
/**
 * A unique identifier is defined to store the options in the database and reference them from the theme.
 * By default it uses the theme name, in lowercase and without spaces, but this can be changed if needed.
 * If the identifier changes, it'll appear as if the options have been reset.
 */

function optionsframework_option_name() {

	// This gets the theme name from the stylesheet
	$themename = wp_get_theme();
	$themename = preg_replace("/\W/", "_", strtolower($themename) );

	$optionsframework_settings = get_option( 'optionsframework' );
	$optionsframework_settings['id'] = $themename;
	update_option( 'optionsframework', $optionsframework_settings );
}

/**
 * Defines an array of options that will be used to generate the settings page and be saved in the database.
 * When creating the 'id' fields, make sure to use all lowercase and no spaces.
 *
 * If you are making your theme translatable, you should replace 'inkness'
 * with the actual text domain for your theme.  Read more:
 * http://codex.wordpress.org/Function_Reference/load_theme_textdomain
 */

function optionsframework_options() {

	$options = array();
	$imagepath =  get_template_directory_uri() . '/images/';
	$slider_effect_array = array(
		'random' => __('Random', 'inkness'),
		'sliceDown' => __('Slice Down', 'inkness'),
		'sliceUp' => __('Slice Up', 'inkness'),
		'sliceUpLeft' => __('Slice Up Left', 'inkness'),
		'sliceUpDown' => __('Slice Up Down', 'inkness'),
		'sliceUpDownLeft' => __('Slice Up Down Left', 'inkness'),
		'fold' => __('Fold', 'inkness'),
		'boxRandom' => __('Box Random', 'inkness'),
		'slideInRight' => __('Slide In Right', 'inkness'),
		'slideInLeft' => __('Slide In Left', 'inkness'),
		'boxRain' => __('Box Rain', 'inkness'),
		'boxRainReverse' => __('Box Rain Reverse', 'inkness'),
		'boxRainGrow' => __('Box Rain Grow', 'inkness'),
		'boxRainGrowReverse' => __('Box Rain Grow Reverse', 'inkness'),
		'fade' => __('Fade', 'inkness')
	);	
	$true_false = array(
		'true' => __('true', 'inkness'),
		'false' => __('false', 'inkness')
	);	
	
	$slider_width = array(
		'full' => __('Full Width', 'inkness'),
		'fixed' => __('Fixed Width', 'inkness')
	);	
	
	$menu_style = array(
		'full' => __('Full Width (No Search Bar)', 'inkness'),
		'search' => __('With Search Bar', 'inkness')
	);	
	
	//Basic Settings
	
	$options[] = array(
		'name' => __('Basic Settings', 'inkness'),
		'type' => 'heading');
			
	$options[] = array(
		'name' => __('Site Logo', 'inkness'),
		'desc' => __('Leave Blank to use text Heading.', 'inkness'),
		'id' => 'logo',
		'class' => '',
		'type' => 'upload');
		
	$options[] = array(
		'name' => __('Favicon', 'inkness'),
		'desc' => __('Choose any 16x16px .ico image. Other Formats acceptable too.', 'inkness'),
		'id' => 'favicon',
		'class' => '',
		'type' => 'upload');		

	$options[] = array(
		'name' => __('Custom Code in Header', 'inkness'),
		'desc' => __('Insert scripts or code before the closing &lt;/head&gt; tag in the document source:', 'inkness'),
		'id' => 'headcode1',
		'std' => '',
		'type' => 'textarea');
		
	$options[] = array(
		'name' => __('Google Analytics or Stats Counter code', 'inkness'),
		'desc' => __('Insert your google analytics or any other stats tracking code. Make sure your Javascript parts contains opening and closing(&lt;script&gt; & &lt;/script&gt;) script tags.', 'inkness'),
		'id' => 'analytics',
		'std' => '',
		'type' => 'textarea');	
		
	$options[] = array(
		'name' => __('Custom Code in Footer', 'inkness'),
		'desc' => __('Insert scripts or code before the closing &lt;/body&gt; tag in the document source. ', 'inkness'),
		'id' => 'footercode1',
		'std' => '',
		'type' => 'textarea');	
		
	$options[] = array(
		'name' => __('Copyright Text', 'inkness'),
		'desc' => __('Some Text regarding copyright of your site, you would like to display in the footer.', 'inkness'),
		'id' => 'footertext2',
		'std' => '',
		'type' => 'text');
	
	//Features
	
	$options[] = array(
		'name' => __('Features', 'inkness'),
		'type' => 'heading');
		
	$options[] = array(
		'name' => __('User Friendly Time', 'inkness'),
		'desc' => __('Check this if you want to display time as: "4 Hours Ago" or "Yesterday" instead of 12 November, 2013', 'inkness'),
		'id' => 'friendlytime',
		'std' => '0',
		'type' => 'checkbox');
		
	$options[] = array(
		'name' => __('Display Next and Previous Posts', 'inkness'),
		'desc' => __('Check this to display the next and previous posts, under all single posts.'),
		'id' => 'next-prev-posts',
		'std' => '0',
		'type' => 'checkbox');	
		
	$options[] = array(
		'name' => __('Display Featured Images on Posts', 'inkness'),
		'desc' => __('Check this to display the featured images on post pages too, at the start of content.'),
		'id' => 'featimg-posts',
		'std' => '0',
		'type' => 'checkbox');	
	
	$options[] = array(
		'name' => __('Advanced Responsive Navigation', 'inkness'),
		'desc' => __('Check this, if you want your Nav Menu to convert to a select box in smaller devices. This will enable support for multilevel menu items on those devices too.', 'inkness'),
		'id' => 'mobilemenu',
		'std' => '0',
		'type' => 'checkbox');	
		
	$options[] = array(
		'name' => __('Enable SuperFish Menus', 'inkness'),
		'desc' => __('SuperFish Handles Dropdown Menus on your Site. Use this only if you have more than 2 Levels of Dropdown Menus.', 'inkness'),
		'id' => 'superfish',
		'std' => '0',
		'type' => 'checkbox');		
				
	//Design Settings
		
	$options[] = array(
		'name' => __('Layout Settings', 'inkness'),
		'type' => 'heading');	
	
	$options[] = array(
		'name' => __('Menu Bar Style', 'inkness'),
		'desc' => __('Enable or Remove the Search Bar in Header', 'inkness'),
		'id' => 'menu_style',
		'std' => 'search',
		'class' => 'mini',
		'type' => 'select',
		'options' => $menu_style);
	
	$options[] = array(
		'name' => "Sidebar Location",
		'id' => "sidebar-layout",
		'std' => "right",
		'type' => "images",
		'class' => 'sidel',
		'options' => array(
			'left' => $imagepath . '2cl.png',
			'right' => $imagepath . '2cr.png')
	);
	
		
	$options[] = array(
		'name' => "Select Skin",
		'id' => "theme-skin",
		'std' => "default",
		'type' => "images",
		'class' => 'skinc',
		'options' => array(
			'red' => $imagepath . '/skins/red.png',
			'default' => $imagepath . '/skins/default.png',
			'green' => $imagepath . '/skins/green.png',
			'yellow' => $imagepath . '/skins/yellow.png',
			'darkblue' => $imagepath . '/skins/darkblue.png',
			'orange' => $imagepath . '/skins/orange.png')
	);	
	
	$options[] = array(
		'name' => __('Custom CSS', 'inkness'),
		'desc' => __('Some Custom Styling for your site. Place any css codes here instead of the style.css file.', 'inkness'),
		'id' => 'style2',
		'std' => '',
		'type' => 'textarea');
	
	//SLIDER SETTINGS

	$options[] = array(
		'name' => __('Slider Settings', 'inkness'),
		'type' => 'heading');

	$options[] = array(
		'name' => __('Enable Slider', 'inkzine'),
		'desc' => __('Check this to Enable slider on Homepage', 'inkzine'),
		'id' => 'slider_enabled',
		'type' => 'checkbox',
		'std' => '0' );	
		
	$options[] = array(
		'desc' => __('Enable Slider on Static Front Page', 'inkzine'),
		'id' => 'slider_enabled_front',
		'type' => 'checkbox',
		'std' => '0' );	
		
	$options[] = array(
		'desc' => __('Enable Slider on Posts', 'inkzine'),
		'id' => 'slider_enabled_posts',
		'type' => 'checkbox',
		'std' => '0' );	
		
	$options[] = array(
		'desc' => __('Enable Slider on Pages', 'inkzine'),
		'id' => 'slider_enabled_pages',
		'type' => 'checkbox',
		'std' => '0' );	
		
	$options[] = array(
		'desc' => __('Enable Slider on Archives', 'inkzine'),
		'id' => 'slider_enabled_archives',
		'type' => 'checkbox',
		'std' => '0' );
	
	$options[] = array(
		'name' => __('Slider Style', 'inkness'),
		'desc' => __('Choose the Slider to be Full Width of Fixed Width.', 'inkness'),
		'id' => 'slider_width',
		'std' => 'full',
		'class' => 'mini',
		'type' => 'select',
		'options' => $slider_width );
	
	$options[] = array(
		'name' => __('Transition Effect', 'inkness'),
		'desc' => __('Select how you want your slides to appear and disappear.', 'inkness'),
		'id' => 'trans_effect',
		'std' => 'random',
		'type' => 'select',
		'class' => 'mini', 
		'options' => $slider_effect_array);
		
	$options[] = array(
		'name' => __('Animation Duration', 'inkness'),
		'desc' => __('How long each slide will show? Time in milliseconds.', 'inkness'),
		'id' => 'pause_time',
		'std' => '4000',
		'class' => 'mini',
		'type' => 'text');	
	
	$options[] = array(
		'name' => __('Transition Duration', 'inkness'),
		'desc' => __('Time to complete the transition effect in milliseconds.', 'inkness'),
		'id' => 'anim_speed',
		'std' => '500',
		'class' => 'mini',
		'type' => 'text');		
	
	
	$options[] = array(
		'name' => __('Random Start', 'inkness'),
		'desc' => __('Enable the Slideshow from a Random Slide', 'inkness'),
		'id' => 'random_start',
		'std' => 'false',
		'class' => 'mini',
		'type' => 'select',
		'options' => $true_false);
		
	$options[] = array(
		'name' => __('Using the Slider', 'inkness'),
		'desc' => __('This Slider supports upto 5 Images. To show only 3 Slides in the slider, upload only 3 images. Leave the rest Blank. For best results, upload images of same size.', 'inkness'),
		'type' => 'info');

	$options[] = array(
		'name' => __('Slider Image 1', 'inkness'),
		'desc' => __('First Slide', 'inkness'),
		'id' => 'slide1',
		'class' => '',
		'type' => 'upload');
	
	$options[] = array(
		'desc' => __('Title', 'inkness'),
		'id' => 'slidetitle1',
		'std' => '',
		'type' => 'text');
	
	$options[] = array(
		'desc' => __('Description or Tagline', 'inkness'),
		'id' => 'slidedesc1',
		'std' => '',
		'type' => 'textarea');			
		
	$options[] = array(
		'desc' => __('Url', 'inkness'),
		'id' => 'slideurl1',
		'std' => '',
		'type' => 'text');		
	
	$options[] = array(
		'name' => __('Slider Image 2', 'inkness'),
		'desc' => __('Second Slide', 'inkness'),
		'class' => '',
		'id' => 'slide2',
		'type' => 'upload');
	
	$options[] = array(
		'desc' => __('Title', 'inkness'),
		'id' => 'slidetitle2',
		'std' => '',
		'type' => 'text');	
	
	$options[] = array(
		'desc' => __('Description or Tagline', 'inkness'),
		'id' => 'slidedesc2',
		'std' => '',
		'type' => 'textarea');		
		
	$options[] = array(
		'desc' => __('Url', 'inkness'),
		'id' => 'slideurl2',
		'std' => '',
		'type' => 'text');	
		
	$options[] = array(
		'name' => __('Slider Image 3', 'inkness'),
		'desc' => __('Third Slide', 'inkness'),
		'id' => 'slide3',
		'class' => '',
		'type' => 'upload');	
	
	$options[] = array(
		'desc' => __('Title', 'inkness'),
		'id' => 'slidetitle3',
		'std' => '',
		'type' => 'text');	
		
	$options[] = array(
		'desc' => __('Description or Tagline', 'inkness'),
		'id' => 'slidedesc3',
		'std' => '',
		'type' => 'textarea');	
			
	$options[] = array(
		'desc' => __('Url', 'inkness'),
		'id' => 'slideurl3',
		'std' => '',
		'type' => 'text');		
	
	$options[] = array(
		'name' => __('Slider Image 4', 'inkness'),
		'desc' => __('Fourth Slide', 'inkness'),
		'id' => 'slide4',
		'class' => '',
		'type' => 'upload');	
		
	$options[] = array(
		'desc' => __('Title', 'inkness'),
		'id' => 'slidetitle4',
		'std' => '',
		'type' => 'text');
	
	$options[] = array(
		'desc' => __('Description or Tagline', 'inkness'),
		'id' => 'slidedesc4',
		'std' => '',
		'type' => 'textarea');			
		
	$options[] = array(
		'desc' => __('Url', 'inkness'),
		'id' => 'slideurl4',
		'std' => '',
		'type' => 'text');		
	
	$options[] = array(
		'name' => __('Slider Image 5', 'inkness'),
		'desc' => __('Fifth Slide', 'inkness'),
		'id' => 'slide5',
		'class' => '',
		'type' => 'upload');	
		
	$options[] = array(
		'desc' => __('Title', 'inkness'),
		'id' => 'slidetitle5',
		'std' => '',
		'type' => 'text');	
	
	$options[] = array(
		'desc' => __('Description or Tagline', 'inkness'),
		'id' => 'slidedesc5',
		'std' => '',
		'type' => 'textarea');		
		
	$options[] = array(
		'desc' => __('Url', 'inkness'),
		'id' => 'slideurl5',
		'std' => '',
		'type' => 'text');	
			
	$options[] = array(
		'name' => __('Slider Image 6', 'inkness'),
		'desc' => __('Sixth Slide', 'inkness'),
		'id' => 'slide6',
		'class' => '',
		'type' => 'upload');	
		
	$options[] = array(
		'desc' => __('Title', 'inkness'),
		'id' => 'slidetitle6',
		'std' => '',
		'type' => 'text');	
	
	$options[] = array(
		'desc' => __('Description or Tagline', 'inkness'),
		'id' => 'slidedesc6',
		'std' => '',
		'type' => 'textarea');		
		
	$options[] = array(
		'desc' => __('Url', 'inkness'),
		'id' => 'slideurl6',
		'std' => '',
		'type' => 'text');
	
	$options[] = array(
		'name' => __('Slider Image 7', 'inkness'),
		'desc' => __('Seventh Slide', 'inkness'),
		'id' => 'slide7',
		'class' => '',
		'type' => 'upload');	
		
	$options[] = array(
		'desc' => __('Title', 'inkness'),
		'id' => 'slidetitle7',
		'std' => '',
		'type' => 'text');	
	
	$options[] = array(
		'desc' => __('Description or Tagline', 'inkness'),
		'id' => 'slidedesc7',
		'std' => '',
		'type' => 'textarea');		
		
	$options[] = array(
		'desc' => __('Url', 'inkness'),
		'id' => 'slideurl7',
		'std' => '',
		'type' => 'text');
	
	$options[] = array(
		'name' => __('Slider Image 8', 'inkness'),
		'desc' => __('Eighth Slide', 'inkness'),
		'id' => 'slide8',
		'class' => '',
		'type' => 'upload');	
		
	$options[] = array(
		'desc' => __('Title', 'inkness'),
		'id' => 'slidetitle8',
		'std' => '',
		'type' => 'text');	
	
	$options[] = array(
		'desc' => __('Description or Tagline', 'inkness'),
		'id' => 'slidedesc8',
		'std' => '',
		'type' => 'textarea');		
		
	$options[] = array(
		'desc' => __('Url', 'inkness'),
		'id' => 'slideurl8',
		'std' => '',
		'type' => 'text');
			
	//Social Settings
	
	$iconset = array(
		'fa' => __('Font Awesome', 'inkness'),
		'default' => __('Square Images', 'inkness'),
		'soshion' => __('Soshion', 'inkness'),
		'glossy' => __('Glossy Icons', 'inkness'),
		'sociocon' => __('Sociocons', 'inkness'), 
	);
	
	$options[] = array(
	'name' => __('Social Settings', 'inkness'),
	'type' => 'heading');
	
	$options[] = array(
		'name' => __('Select Iconset', 'inkness'),
		'id' => 'iconset',
		'std' => 'fa',
		'type' => 'select',
		'class' => 'mini', 
		'options' => $iconset);

	$options[] = array(
		'name' => __('Facebook', 'inkness'),
		'desc' => __('Facebook Profile or Page URL i.e. http://facebook.com/username/ ', 'inkness'),
		'id' => 'facebook',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');
	
	$options[] = array(
		'name' => __('Twitter', 'inkness'),
		'desc' => __('Twitter Username', 'inkness'),
		'id' => 'twitter',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');
	
	$options[] = array(
		'name' => __('Google Plus', 'inkness'),
		'desc' => __('Google Plus profile url, including "http://"', 'inkness'),
		'id' => 'google',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');
		
	$options[] = array(
		'name' => __('Feeburner', 'inkness'),
		'desc' => __('URL for your RSS Feeds', 'inkness'),
		'id' => 'feedburner',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');	
		
	$options[] = array(
		'name' => __('Pinterest', 'inkness'),
		'desc' => __('Your Pinterest Profile URL', 'inkness'),
		'id' => 'pinterest',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');
		
	$options[] = array(
		'name' => __('Instagram', 'inkness'),
		'desc' => __('Your Instagram Profile URL', 'inkness'),
		'id' => 'instagram',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');	
		
	$options[] = array(
		'name' => __('Linked In', 'inkness'),
		'desc' => __('Your Linked In Profile URL', 'inkness'),
		'id' => 'linkedin',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');	
		
	$options[] = array(
		'name' => __('Youtube', 'inkness'),
		'desc' => __('Your Youtube Channel URL', 'inkness'),
		'id' => 'youtube',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');
		
	$options[] = array(
		'name' => __('Flickr', 'inkness'),
		'desc' => __('Your Flickr Profile URL', 'inkness'),
		'id' => 'flickr',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');
								
	$options[] = array(
		'name' => __('Custom Icon 1', 'inkness'),
		'desc' => __('Title of the Social Network', 'inkness'),
		'id' => 'custsoc1',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');	
	
	$options[] = array(
		'desc' => __('Full Image URL. Should be 48x48px for best results.', 'inkness'),
		'id' => 'custsocurl1',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');	
		
	$options[] = array(
		'desc' => __('Full Profile URL', 'inkness'),
		'id' => 'custprofileurl1',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');	
		
	$options[] = array(
		'name' => __('Custom Icon 2', 'inkness'),
		'desc' => __('Title of the Social Network', 'inkness'),
		'id' => 'custsoc2',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');	
	
	$options[] = array(
		'desc' => __('Full Image URL. Should be 48x48px for best results.', 'inkness'),
		'id' => 'custsocurl2',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');	
		
	$options[] = array(
		'desc' => __('Full Profile URL', 'inkness'),
		'id' => 'custprofileurl2',
		'std' => '',
		'class' => 'mini',
		'type' => 'text');									
		
			
	$options[] = array(
	'name' => __('Plus Support', 'inkness'),
	'type' => 'heading');
	
	$options[] = array(
		'desc' => __('InkNess WordPress theme has been Designed and Created by <a href="http://InkHive.com" target="_blank">InkHive</a>. For any Queries or help regarding this theme, <a href="http://inkhive.com/forums/section/theme-support/inkness-plus/" target="_blank">use the dedicated support forums</a>, especially created for paid versions of our themes.', 'inkness'),
		'type' => 'info');		
		
	$options[] = array(
		'name' => __('Live Demo Blog', 'inkness'),
		'desc' => __('For your convenience, we have created a <a href="http://demo.inkhive.com/inkness-plus/" target="_blank">Live Demo Blog of InkNess Plus</a>. You can take a look at and find out how your site would look once complete.', 'inkness'),
		'type' => 'info');	
		
	 $options[] = array(
		'desc' => __('<a href="http://twitter.com/rohitinked" target="_blank">Follow Me on Twitter</a> to know about my upcoming themes.', 'inkness'),
		'type' => 'info');	
	
	$options[] = array(
		'name' => __('Regenerating Post Thumbnails', 'inkness'),
		'desc' => __('If you are using InkNess Theme on a New Wordpress Installation, then you can skip this section.<br />But if you have just switched to this theme from some other theme, then you are requested regenerate all the post thumbnails. It will fix all the issues you are facing with distorted & ugly homepage thumbnail Images. ', 'inkness'),
		'type' => 'info');	
		
	$options[] = array(
		'desc' => __('To Regenerate all Thumbnail images, Install and Activate the <a href="http://wordpress.org/plugins/regenerate-thumbnails/" target="_blank">Regenerate Thumbnails</a> WP Plugin. Then from <strong>Tools &gt; Regen. Thumbnails</strong>, re-create thumbnails for all your existing images. And your blog will look even more stylish with InkNess theme.<br /> ', 'inkness'),
		'type' => 'info');	
		
			
	$options[] = array(
		'desc' => __('<strong>Note:</strong> Regenerating the thumbnails, will not affect your original images. It will just generate a separate image file for those images.', 'inkness'),
		'type' => 'info');	
		
	
	$options[] = array(
		'name' => __('Theme Credits', 'inkness'),
		'desc' => __('Check this if you do not want to give us credit in your site footer.', 'inkness'),
		'id' => 'credit1',
		'std' => '0',
		'type' => 'checkbox');
	
	

	return $options;
}