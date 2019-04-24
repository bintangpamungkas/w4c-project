
<!-- Header -->
<header id="js-header" class="u-header u-header--sticky-top u-header--change-appearance" data-header-fix-moment="100">
    <?php
    //$this->load->view('templates/topbar');
    ?>
    <div id="navigation-block" class="navbar-toggle-btn u-header__section u-header__section--dark pb-10" data-header-fix-moment-exclude="pb-10 g-color-white" data-header-fix-moment-classes="g-bg-white u-shadow-v18 g-py-0">
        <?php
        //$this->load->view('templates/topbar');
        ?>
        <nav class="js-mega-menu navbar navbar-expand-lg">
            <div class="container px-10">
                <!-- Responsive Toggle Button -->
                <button class="mt-2 <?= $template=='general' ? '' : '' ?> navbar-toggler navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-top-3 g-right-0" type="button" aria-label="Toggle navigation" aria-expanded="false" aria-controls="navBar" data-toggle="collapse" data-target="#navBar">
                    <!--<i id="menus" class="icon-menu" style="font-size: 30px"></i>-->
                    <span class="js-hamburger hamburger hamburger--slider g-pa-0">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </span>
                </button>
                <!-- End Responsive Toggle Button -->

                <!-- Logo -->
                <a href="<?= site_url('../official') ?>" class="navbar-brand">
                    <img src="<?= base_url('assets/img/logo/logo-W4C_179_web.png') ?>" alt="Image Description" style="height: 39px">
                </a>
                <!-- End Logo -->
                <?php
                $this->load->view('templates/navigations/'.$template);
                ?>

                <!-- End Navigation -->
            </div>
        </nav>
    </div>
</header>
<!-- End Header -->


