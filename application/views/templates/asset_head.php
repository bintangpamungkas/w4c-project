<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>

    <title>
        <?php
        if(isset($page_heading)){
            $page_heading=$is_bilingual==true ? lang($page_heading) : $page_heading;
        }else{
            $page_heading=$title;
        }
        if($this->uri->segment(1)=='' || $this->uri->segment(1)=='index'){
            $web_title=APP_SLOGAN.' :: '.APPNAME;
        }else{
            $web_title=ucwords($page_heading).' - '.APP_SLOGAN.' :: '.APPNAME;
        }
        echo $web_title;
        ?>
    </title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="<?= $web_title.' - '.APP_DESCRIPTION ?>">
    <meta name="keywords" content="<?= $web_title.' - '.APP_DESCRIPTION ?>">
    <meta property="og:title" content="<?= $web_title.' - '.APP_DESCRIPTION ?>" />
    <meta property="og:image" content="<?= base_url('assets/img/logo/favicon.jpg') ?>">
    <meta property="og:image:type" content="image/jpg">
    <meta property="og:image:width" content="1024">
    <meta property="og:image:height" content="1024">

    <!-- Favicon -->
    <link rel="shortcut icon" href="<?= base_url('assets/img/logo/favicon.png') ?>">
    <!-- Google Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans%3A400%2C300%2C500%2C600%2C700%7CPlayfair+Display%7CRoboto%7CRaleway%7CSpectral%7CRubik">
    <link href="https://fonts.googleapis.com/css?family=Asap" rel="stylesheet">
    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="<?= base_url('assets/vendor/bootstrap/bootstrap.min.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/bootstrap/offcanvas.css') ?>">
    <!-- CSS Global Icons -->
    <link rel="stylesheet" href="<?= base_url('assets/vendor/icon-awesome/css/font-awesome.min.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/icon-line/css/simple-line-icons.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/icon-etlinefont/style.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/icon-line-pro/style.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/icon-hs/style.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/dzsparallaxer/dzsparallaxer.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/dzsparallaxer/dzsscroller/scroller.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/dzsparallaxer/advancedscroller/plugin.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/animate.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/hamburgers/hamburgers.min.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/hs-megamenu/src/hs.megamenu.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/slick-carousel/slick/slick.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/fancybox/jquery.fancybox.css') ?>">

    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/vendor/owl-carousel/owl.carousel.css') ?>" media="screen">

    <!-- CSS Unify -->
    <link rel="stylesheet" href="<?= base_url('assets/css/unify-core.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/css/unify-components.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/css/unify-globals.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/custombox/custombox.min.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/vendor/jquery-ui/themes/base/jquery-ui.min.css') ?>">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="<?= base_url('assets/css/custom.css') ?>">
    <script src="<?= base_url('assets/vendor/jquery/jquery.min.js') ?>"></script>

    <!-- Hotjar Tracking -->
    <?php hotjar_tracking(true) ?>

    <!-- Google Analytic Tracking -->
    <?php google_analytic(true) ?>

    <!-- Tawk.to Chat -->
    <?php
    $param=tawk_to_chat();
    foreach ($param as $param){
        if($param['dev_status']==true && $param['status']==true){
            echo $param['tracking_code'];
        }
    }
    ?>

    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-103555170-1', 'auto');
        ga('send', 'pageview');

    </script>

</head>

<script>
    $(window).load(function () {
        $('.auto-full-height').css('min-height', window.innerHeight);
    })
</script>

<body>
<main>

    <div style="position: fixed;z-index: 999;bottom: <?= $this->agent->is_mobile() ? '25%' : '40%' ?>;right: <?= $this->agent->is_mobile() ? '-60px' : '-70px' ?>;-ms-transform: rotate(270deg);-webkit-transform: rotate(270deg);transform: rotate(270deg);">
        <a target="_blank" href="https://docs.google.com/forms/d/e/1FAIpQLSfXpiHacFDeXi-ez3qmSOSN1Z4HDHOgAtu755kWHI2cowH3jg/viewform" class="<?= $this->agent->is_mobile() ? 'g-font-size-12' : 'g-font-size-14' ?> btn g-brd-white-opacity-0_2 btn-danger g-color-white g-brd-2 g-pl-20 g-pr-15 g-py-9" style="border-radius: 10px 10px 0px 0px">
            <i class="et-icon-chat g-mr-10 shake"></i> <?= $this->session->userdata('language')=='en' ? 'GIVE FEED BACK' : 'BERIKAN SARAN' ?>
        </a>
    </div>

    <div class="modal fade" id="globalModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" id="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="border-bottom: none!important;">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="mt-3">
                        <h3 class="g-mb-10 text-center modalTitle">Modal title</h3>
                        <div class="modalContent">
                            <div id="set_language" class="thisContent mb-4">
                                <p class="mb-4 text-center mb-5"><?= lang('choose_language_description') ?></p>
                                <div class="row justify-content-center">
                                    <div class="<?= $this->agent->is_mobile() ? 'col-10' : '' ?>">
                                        <div class="col-md-4">
                                            <div data-dismiss="<?= !$this->session->userdata('language') ||  $this->session->userdata('language')=='id' ? '' : 'modal' ?>" data-url="<?= site_url('id') ?>" class="<?= !$this->session->userdata('language') || $this->session->userdata('language')=='id' ? 'g-bg-blue-opacity-0_7 g-color-white' : 'g-bg-blue--hover g-color-white--hover g-cursor-pointer block-link' ?> u-shadow-v1-5 g-color-black g-rounded-10 g-line-height-2 g-pa-20 g-mb-30 bg-white text-center" role="alert">
                                                <table class="table" style="margin: 0!important;">
                                                    <tr>
                                                        <td class="text-left" style="padding: 0!important;border: none!important;"><?= !$this->session->userdata('language') || $this->session->userdata('language')=='id' ? '<i class="fa fa-check-circle g-font-size-30"></i>' : '<i class="fa fa-circle-o g-font-size-30"></i>' ?> </td>
                                                        <td class="text-left" style="padding: 0!important;border: none!important;vertical-align: middle">INDONESIA</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div data-dismiss="<?= $this->session->userdata('language')=='en' ? '' : 'modal' ?>" data-url="<?= site_url('en') ?>" class="<?= $this->session->userdata('language')=='en' ? 'g-bg-blue-opacity-0_7 g-color-white' : 'g-bg-blue--hover g-cursor-pointer block-link' ?> u-shadow-v1-5 g-color-black g-rounded-10 g-line-height-2 g-pa-20 g-mb-30 g-color-white--hover text-center" role="alert">
                                                <table class="table" style="margin: 0!important;">
                                                    <tr>
                                                        <td class="text-left" style="padding: 0!important;border: none!important;"><?= $this->session->userdata('language')=='en' ? '<i class="fa fa-check-circle g-font-size-30"></i>' : '<i class="fa fa-circle-o g-font-size-30"></i>' ?> </td>
                                                        <td class="text-left" style="padding: 0!important;border: none!important;vertical-align: middle">ENGLISH</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br>
                            </div>
                            <div id="services" class="thisContent">
                                <br>
                                <div class="row">
                                    <?php
                                    $nav=[
                                        [
                                            'caption' => 'Send Your Waste',
                                            'icon' => 'et-icon-gift',
                                            'url' => site_url('../sendyourwaste'),
                                            'color' => 'blue',
                                            'number' => '1'
                                        ],
                                        [
                                            'caption' => 'Dropping Box',
                                            'icon' => 'icon-electronics-084 u-line-icon-pro',
                                            'url' => '#',
                                            'color' => 'orange',
                                            'number' => '2'
                                        ],
                                        [
                                            'caption' => 'Waste Management',
                                            'icon' => 'icon-transport-029 u-line-icon-pro',
                                            'url' => '#',
                                            'color' => 'primary',
                                            'number' => '3'
                                        ]
                                    ]
                                    ?>
                                    <?php
                                    foreach ($nav as $nav):
                                        ?>
                                        <div class="col-12 mb-4">

                                            <div class="u-block-hover g-brd-around g-brd-gray-light-v4 rounded g-transition-0_3 g-px-20 g-py-20" style="-webkit-box-shadow: 0 5px 25px 1px rgba(0,0,0,0.1);box-shadow: 0 5px 25px 1px rgba(0,0,0,0.1);">
                                                <div style="display: inline-flex">
                                                    <div class="mr-4">
                                                        <i class="<?= $nav['icon'] ?> mb-5 g-font-size-50 g-color-<?= $nav['color'] ?>"></i>
                                                    </div>
                                                    <div>
                                                        <h5 class="h5 g-font-weight-600 mb-2 g-color-black">
                                                            <?= $nav['caption'] ?>
                                                        </h5>
                                                        <h6>
                                                            <small xml:lang="text-muted">Loremp Ipsum dolor sit amet sit adispicing malar conserato man sam alarto</small>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="pull-right" style="position: absolute;top: 70%;right: 40px;">
                                                <a class="btn u-btn-<?= $nav['color'] ?> g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9" href="<?= $nav['url'] ?>">
                                                    Learn More <i class="icon-arrow-right ml-2"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <?php
                                    endforeach;
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="d-none <?= $this->agent->is_mobile() ? 'row justify-content-center' : '' ?>">
                            <div class="<?= $this->agent->is_mobile() ? 'col-6' : 'text-center' ?>">
                                <a class="btn u-btn-primary g-brd-2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-15 g-py-9 <?= $this->agent->is_mobile() ? 'btn-block mb-4' : '' ?>" href="#how">
                                    SUBMIT
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>