<?php
$url=$_SERVER[HTTP_HOST].$_SERVER[REQUEST_URI];
//echo $url.'<br>';
if(substr( $url, 0,  21) === "waste4change.com/beta" || (substr( $url, 0,  16) === "waste4change.com" && $url == "waste4change.com/")){	
	//echo 'beta';
	header('location:beta');	
}else{
	//echo 'blog';
	/**
	 * Front to the WordPress application. This file doesn't do anything, but loads
	 * wp-blog-header.php which does and tells WordPress to load the theme.
	 *
	 * @package WordPress
	 */

	/**
	 * Tells WordPress to load the WordPress theme and output it.
	 *
	 * @var bool
	 */
	define('WP_USE_THEMES', true);

	/** Loads the WordPress Environment and Template */
	require( dirname( __FILE__ ) . '/wp-blog-header.php' );
//}