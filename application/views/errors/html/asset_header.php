<!DOCTYPE html>
<html>
<head>
    <title><?php echo ucwords(APP_NAME.' '/*.MODE*/.' '/*.VERSION*/.' - '.APP_SLOGAN) ?></title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="description" content="<?php echo meta() ?> <?php echo lang('have_problem') ?> <?php echo lang('have_problem_customer') ?> <?php echo lang('have_problem_provider') ?>" />
    <meta name="keywords" content="<?php echo meta() ?>" />
    <meta name="robot" content="index, follow">
    <meta name="language" content="indonesia">

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url('assets/dist/css/AdminLTE.min.css') ?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/dist/css/custom.css') ?>">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<?php echo base_url('assets/dist/css/skins/_all-skins.min.css') ?>">
    <!-- iCheck -->
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/iCheck/flat/blue.css') ?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/iCheck/all.css') ?>">
    <!-- Morris chart -->
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/morris/morris.css') ?>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/font-awesome/css/font-awesome.min.css') ?>">
    <!-- jvectormap -->
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css') ?>">
    <!-- Date Picker -->
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/datepicker/datepicker3.css') ?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/timepicker/bootstrap-timepicker.min.css') ?>">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/daterangepicker/daterangepicker.css') ?>">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') ?>">

    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/datatables/dataTables.bootstrap.css') ?>">

    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/pace/pace.min.css')?>">

    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css') ?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css') ?>">
     <link rel="icon" href="<?php echo base_url('assets/dist/img/logo/icon_shadow.png') ?>" type="image/png" />

    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/plugins/rating/src/rating.css') ?>" />
    <script type="text/javascript" src="<?php echo base_url('assets/plugins/rating/src/rating.js') ?>"></script>

    <script src="<?php echo base_url('assets/plugins/jQuery/jquery-2.2.3.min.js') ?>"></script>
    <script src="<?php echo base_url('assets/dist/js/custom.js') ?>"></script>


    <?php
    if(1!=0){
    ?>
        <script type="text/javascript" src="<?php echo base_url('assets') ?>/dist/js/select2.full.js"></script>
        <script type="text/javascript" src="<?php echo base_url('assets') ?>/vendor/js/prettify.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url('assets') ?>/vendor/js/anchor.min.js"></script>

        <link href="<?php echo base_url('assets') ?>/dist/css/select2.min.css" type="text/css" rel="stylesheet" />
        <?php
    }
    ?>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition skin-black sidebar-mini">
<div class="wrapper fixed" style="background-color: #ecf0f5">
