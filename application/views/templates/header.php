<header id="js-header" class="u-header u-header--sticky-top u-header--change-appearance" data-header-fix-moment="100">
  <!-- <div id="navigation-block" class="nav-type-transparent navbar-toggle-btn u-header__section u-header__section--dark pb-10" data-header-fix-moment-exclude="pb-10 g-color-white" data-header-fix-moment-classes="g-bg-white u-shadow-v18 g-py-0"> -->
  <div id="navigation-block" class="<?=$template=='index' ? 'nav-type-transparent' : ''?> navbar-toggle-btn  pb-10 u-header__section u-header__section--<?=$template=='services' ? 'light bg-white' : 'dark'?>" <?=$template=='index' ? 'data-header-fix-moment-exclude="pb-10 g-color-white" data-header-fix-moment-classes="g-bg-white u-shadow-v18 g-py-0"' : ''?>>

    <nav class="js-mega-menu navbar navbar-expand-lg">
      <div class="container">
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
          <?php if($this->agent->is_mobile()): ?>
            <div class="">
              <?= $service->service_name ?>
            </div>
          <?php endif; ?>
        </a>
        <div class="collapse navbar-collapse align-items-center flex-sm-row" id="navBar2">
          <ul class="navbar-nav text-uppercase g-font-weight-600 mr-auto">
            <?php foreach ($subnav as $subnav): ?>
              <?php if (!empty($subnav->section_menu_name)): ?>
                <li class="nav-item g-my-2 <?= $this->agent->is_mobile() ? 'g-my-10' : '' ?> g-mx-20--lg">
                  <a href="#<?= $subnav->section_slug ?>" class="font-weight-normal g-font-size-11 click_scroll nav-link px-0 b-color-white g-color-blue--hover" style="line-height: 1"><?= $subnav->section_menu_name ?>
                  </a>
                </li>
              <?php endif; ?>
            <?php endforeach; ?>
          </ul>
          <a class="click_scroll btn btn-info g-color-white g-brd-white-opacity-0_2 g-brd-2 g-font-size-13 g-rounded-50 g-px-20 <?= $this->agent->is_mobile() ? 'btn-block mb-4' : '' ?>" href="<?= site_url('service/'.$service_id.'/join') ?>">
            <?= strtoupper(lang('get_proposal')) ?>
            <span class="align-middle u-icon-v3 d-none g-width-16 g-height-16 g-color-black-opacity-0_5 g-bg-white g-font-size-11 rounded-circle ml-3">
              <i class="fa fa-info"></i>
            </span>
          </a>
        </div>
      </div>
    </nav>
  </div>
  <?php
endif; ?>

</header>
