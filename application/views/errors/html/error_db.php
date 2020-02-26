<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>404 <?=get_lang('page_not_found')?></title>
	<link rel="stylesheet" href="<?= SITE_URL . 'assets/vendor/bootstrap/bootstrap.min.css' ?>">
	<link rel="stylesheet" href="<?= SITE_URL . 'assets/css/custom.css' ?>">
	<link rel="stylesheet" href="<?= SITE_URL . 'assets/css/unify-globals.css' ?>">

	<style type="text/css">
		@font-face {
			font-family: SegoeUI;
			src:
				local("Segoe UI Semibold"),
				url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/semibold/latest.woff2) format("woff2"),
				url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/semibold/latest.woff) format("woff"),
				url(//c.s-microsoft.com/static/fonts/segoe-ui/west-european/semibold/latest.ttf) format("truetype");
			font-weight: 700;
		}
		::selection {
			background-color: #E13300;
			color: white;
		}

		::-moz-selection {
			background-color: #E13300;
			color: white;
		}

		body {
			background-color: #E5E5E5;
			margin: 40px;
			font-family: Segoe UI;
			/*font: 15px/20px normal Helvetica, Arial, sans-serif;*/
			color: #4F5155;
		}

		#container {
			margin: 10px;
			text-align: center;
		}
		img {
			margin-top: calc(12.5vh - 50px);
			max-width: 364px;
		}
		@media only screen and (max-height: 600px) {
			img {
				max-width: 203px;
			}
		}
	</style>
</head>
<body>
<div id="container">
	<img src="<?= SITE_URL . 'assets/img/error/404 2.png' ?>" >
	<div>
		<h1 class="g-font-size-36 g-font-weight-700 g-mb-20 g-mt-minus-30"> Oops !</h1>
		<div class="g-font-size-15 g-color-black-opacity-0_5 g-mb-50">Halaman yang anda tuju tidak dapat diakses.</div>
	</div>
	<!--	<a class="btn btn-outline-success g-color-white--parent-hover g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-ma-10" href="--><?//= SITE_URL ?><!--">--><?//= get_lang('back_to_home') ?><!--</a>-->
	<a class="btn btn-info g-color-white g-brd-2 text-uppercase g-rounded-50 g-px-30 g-py-9 g-ma-10" href="#" onclick="window.history.back()"><?= get_lang('back_to_previous_page') ?></a>
	<div class="<?= DEBUG_CLASS ?>">
		<br>
		<h1><?php echo $heading; ?></h1>
		<?php echo $message; ?>
	</div>
</div>
</body>
</html>