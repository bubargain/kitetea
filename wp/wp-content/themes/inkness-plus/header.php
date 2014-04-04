<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package Inkness
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<?php if((of_get_option('favicon', true) != "") && (of_get_option('favicon', true) != 1) ) { ?>
	<link rel="shortcut icon" href="<?php echo of_get_option('favicon', true); ?>" />
<?php } ?>
<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="parallax-bg"></div>
<div id="page" class="hfeed site">
	<?php do_action( 'before' ); ?>
	<div id="header-top">
		<header id="masthead" class="site-header row container" role="banner">
					
		</header><!-- #masthead -->
	</div>
	
	<?php get_template_part('menu', of_get_option('menu_style') ); ?>
	
	<?php	get_template_part('slider',of_get_option('slider_width', true) )?>
	
		<div id="content" class="site-content row clearfix clear">
		<div class="container col-md-12"> 
