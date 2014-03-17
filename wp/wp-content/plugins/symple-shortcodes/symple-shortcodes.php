<?php
/*
Plugin Name: Symple Shortcodes for InkNess Plus
Plugin URI: http://inkhive.com
Description: A free shortcodes plugin designed for InkHive.com WordPress themes.
Author: InkHive
Author URI: http://inkhive.com
Version: 1.4
License: GNU General Public License version 2.0
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Built on top of Symple Shortcodes by Wpexplorer.com

Include functions */
require_once( dirname(__FILE__) . '/includes/scripts.php' ); // Adds plugin JS and CSS
require_once( dirname(__FILE__) . '/includes/shortcode-functions.php'); // Main shortcode functions
require_once( dirname(__FILE__) . '/includes/mce/symple_shortcodes_tinymce.php'); // Add mce buttons to post editor