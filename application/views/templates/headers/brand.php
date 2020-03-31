<header id="js-header" class="u-header u-header--sticky-top u-header--change-appearance" data-header-fix-moment="100">
    <div id="navigation-block" class="navbar-toggle-btn u-header__section u-header__section--light pb-10 g-bg-white">
        <nav class="js-mega-menu navbar navbar-expand-lg">
            <div class="container">
                <?php if($this->agent->is_mobile()):?>
                    <div class="g-brd-none g-pa-0 g-pos-abs g-top-10 click-modal" style="right: 60px;" data-toggle="modal" href="#globalModal" data-modal-title="Language" data-content="#set_language">
                        <?php
                        if(!$this->session->userdata('language') || $this->session->userdata('language')=='id'):
                            ?>
                            <img src="<?= base_url(DIR_ICON.'flag_indonesia.png') ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 20px;margin-top: -5px">
                            <span class="text_lang" style="margin-top: 10px;color: black">ID <i class="icon-arrow-down"></i></span>
                        <?php else: ?>
                            <img src="<?= base_url(DIR_ICON.'flag_england.png') ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 20px;margin-top: -5px">
                            <span class="text_lang" style="margin-top: 10px;color: black">EN <i class="icon-arrow-down"></i></span>
                        <?php endif; ?>
                    </div>
                <?php endif; ?>
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
                    <img src="<?= base_url(DIR_IMG.'logo/logo-W4C_179_web.png') ?>" alt="Image Description" style="height: <?= $this->agent->is_mobile() ? '29px' : '39px' ?>">
                </a>
                <!-- End Logo -->

                <?php
                $this->load->view('templates/navigations/general');
                ?>
            </div>
        </nav>
    </div>

    <?php
    if(!empty($subnav)): ?>
        <div class="u-header__section u-header__section--light pb-10 g-bg-secondary" data-header-fix-moment-exclude="pb-10 g-color-white" data-header-fix-moment-classes="u-shadow-v18 g-py-0" style="border-top: 1px solid rgba(0, 0, 0, 0.05)">
            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <!-- Responsive Toggle Button -->
                    <button class="<?= $this->agent->is_mobile() ? '' : 'd-none' ?> g-bg-transparent g-font-size-22 toggle-icon navbar-toggler-sub navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-top-3 g-right-0 g-mr-8" data-toggle-icon="icon-arrow-up" type="button" aria-label="Toggle navigation" aria-expanded="false" aria-controls="navBar" data-toggle="collapse" data-target="#navBar2">
                        <i class="icon-arrow-down"></i>
                    </button>
                    <!-- End Responsive Toggle Button -->
                    <a href="#welcome" class="click_scroll navbar-brand g-font-size-12 g-font-weight-700 d-inline-flex g-color-black-opacity-0_8 g-py-10">
                        <i class="et-icon-recycle g-mr-12 g-font-size-24 <?= $this->agent->is_mobile() ? '' : '' ?> d-none"></i>
                        <div class="<?= $this->agent->is_mobile() ? 'g-mt-0' : 'g-mt-0' ?>">
                            <?= strtoupper($brand_name) ?>
                        </div>
                    </a>
                    <div class="collapse navbar-collapse align-items-center flex-sm-row" id="navBar2">
                        <ul class="navbar-nav text-uppercase g-font-weight-600 ml-auto">
                            <?php foreach ($subnav as $menu): ?>
                                <li class="nav-item g-my-2 <?= $this->agent->is_mobile() ? 'g-my-10' : '' ?> g-mx-20--lg">
                                    <a href="<?= $menu['url'] ?>" class="font-weight-normal g-font-size-11 click_scroll nav-link px-0 b-color-white g-color-blue--hover" style="line-height: 1"><?= $menu['title'] ?>
                                    </a>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <?php
    endif; ?>
</header>