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

		::selection {
			background-color: #E13300;
			color: white;
		}

		::-moz-selection {
			background-color: #E13300;
			color: white;
		}

		body {
			background-color: #fff;
			margin: 40px;
			font: 13px/20px normal Helvetica, Arial, sans-serif;
			color: #4F5155;
		}

		#container {
			margin: 10px;
			text-align: center;
		}

		img {
			margin-top: calc(12.5vh - 50px);
			height: 50vh;
		}

	</style>
</head>
<body>
<div id="container">
	<img src="<?= SITE_URL . 'assets/img/error/404.jpg' ?>">
	<br>
	<a class="btn btn-outline-success g-color-white--parent-hover g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-ma-10" href="<?= SITE_URL ?>"><?= get_lang('back_to_home') ?></a>
	<a class="btn btn-outline-success g-color-white--parent-hover g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-ma-10" onclick="window.history.back()"><?= get_lang('back_to_previous_page') ?></a>
	<div class="<?= DEBUG_CLASS ?>">
		<h1><?php echo $heading; ?></h1>
		<?php echo $message; ?>
	</div>
</div>
</body>
</html>