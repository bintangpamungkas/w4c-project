<header id="js-header" class="u-header u-header--sticky-top u-header--change-appearance" data-header-fix-moment="100">
    <div id="navigation-block" class="nav-type-transparent navbar-toggle-btn u-header__section u-header__section--dark pb-10" data-header-fix-moment-exclude="pb-10 g-color-white" data-header-fix-moment-classes="g-bg-white u-shadow-v18 g-py-0">
        <nav class="js-mega-menu navbar navbar-expand-lg">
            <div class="container">
                <!-- Responsive Toggle Button -->
                <button class="navbar-toggler navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-top-3 g-right-0" type="button" aria-label="Toggle navigation" aria-expanded="false" aria-controls="navBar" data-toggle="collapse" data-target="#navBar">
                      <span class="hamburger g-pa-0 <?= $this->agent->is_mobile() ? 'g-pt-4' : 'g-pt-10' ?> hamburger--slider">
                          <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                          </span>
                      </span>
                </button>
                <!-- End Responsive Toggle Button -->

                <!-- Logo -->
                <a href="<?= W4C_URL ?>" class="navbar-brand">
                    <img src="<?= base_url('assets/img/logo/logo-W4C_179_web.png') ?>" alt="Image Description" style="height: <?= $this->agent->is_mobile() ? '29px' : '39px' ?>">
                </a>
                <?php
                $this->load->view('templates/navigation');
                ?>
            </div>
        </nav>
    </div>
</header>