<header id="js-header" class="u-header u-header--sticky-top u-header--change-appearance u-shadow-v18" data-header-fix-moment="100">
  <div id="navigation-block" class="navbar-toggle-btn u-header__section u-header__section--light pb-10 g-bg-white">
    <nav class="js-mega-menu navbar navbar-expand-lg">
      <div class="container">
        <?php
        if(!$this->agent->is_mobile()){
        // if(1==0){
          ?>
          <!-- <div class="g-brd-none g-pa-0 g-pos-abs g-top-10 click-modal" style="right: 60px;" data-toggle="modal" href="#globalModal" data-modal-title="Language" data-content="#set_language">
            <?php
            if(!$this->session->userdata('language') || $this->session->userdata('language')=='id'){
              ?>
              <img src="<?= base_url('assets/img/icons/flag_indonesia.png') ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 20px;margin-top: -5px">
              <span class="text_lang" style="margin-top: 10px;color: black">ID <i class="icon-arrow-down"></i></span>
              <?php
            }else{
              ?>
              <img src="<?= base_url('assets/img/icons/flag_england.png') ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 20px;margin-top: -5px">
              <span class="text_lang" style="margin-top: 10px;color: black">EN <i class="icon-arrow-down"></i></span>
              <?php
            }
            ?>
          </div> -->
          <?php
        } // end $this->agent->is_mobile()
        ?>
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
        <!-- End Logo -->
        <?php
        $this->load->view('templates/navigation');
        ?>
      </div>
    </nav>
  </div>

  <?php
  if(!empty($subnav)){
    ?>
    <div class="u-header__section u-header__section--light pb-10 g-bg-secondary" data-header-fix-moment-exclude="pb-10 g-color-white" data-header-fix-moment-classes="g-py-0" style="border-top: 1px solid rgba(0, 0, 0, 0.05)">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <!-- Responsive Toggle Button -->
          <button class="<?= $this->agent->is_mobile() ? '' : 'd-none' ?> g-bg-transparent g-font-size-22 toggle-icon navbar-toggler-sub navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-top-3 g-right-0 g-mr-8 g-mt-6" data-toggle-icon="icon-arrow-up" type="button" aria-label="Toggle navigation" aria-expanded="false" aria-controls="navBar" data-toggle="collapse" data-target="#navBar2">
            <i class="icon-arrow-down"></i>
          </button>
          <!-- End Responsive Toggle Button -->
          <?php
          if($id=='service'){
            ?>
            <a href="<?= empty($this->uri->segment(3)) ? '#welcome' : site_url('service/'.$service_id) ?>" class="click_scroll navbar-brand g-font-size-12 g-font-weight-700 d-inline-flex g-color-black-opacity-0_8 g-py-10">
              <i class="et-icon-recycle g-mr-12 g-font-size-24 <?= $this->agent->is_mobile() ? '' : '' ?> d-none"></i>
              <div class="<?= $this->agent->is_mobile() ? 'g-mt-0' : 'g-mt-0' ?>">
                <?= strtoupper($service_name) ?>
              </div>
            </a>
            <?php
          }
          ?>
          <div class="collapse navbar-collapse align-items-center flex-sm-row" id="navBar2">
            <ul class="navbar-nav text-uppercase g-font-weight-600 mr-auto">
              <?php
              foreach ($subnav as $menu){
                if($menu['type']=='button'){
                  ?>
                  <li class="nav-item <?= $this->agent->is_mobile() ? 'g-my-10' : '' ?> g-mx-20--lg <?= $menu['option']['option-class'] ?>">
                    <a class="<?= $this->agent->is_mobile() ? 'd-none' : '' ?> click_scroll btn <?= $menu['option']['btn-color'] ?> g-color-white g-brd-2 g-brd-white-opacity-0_2 g-font-size-13 g-rounded-50 g-pl-20 g-pr-20 g-py-5 g-mb-2" href="<?= $menu['url'] ?>">
                      <?= $menu['title'] ?>
                      <span class="align-middle u-icon-v3 g-width-16 g-height-16 g-color-black-opacity-0_5 g-bg-white g-font-size-11 rounded-circle ml-2 d-none">
                        <i class="<?= $menu['option']['icon'] ?>"></i>
                      </span>
                    </a>
                  </li>
                  <?php
                }else{
                  ?>
                  <li class="nav-item g-my-4 <?= $this->agent->is_mobile() ? 'g-my-10' : '' ?> g-mx-20--lg">
                    <a href="<?= $menu['url'] ?>" class="font-weight-normal g-font-size-11 click_scroll nav-link px-0 b-color-white g-color-blue--hover" style="line-height: 1"><?= $menu['title'] ?>
                    </a>
                  </li>
                  <?php
                } // end else if($menu['type']=='button')
              } // end foreach ($subnav as $menu)
              ?>
            </ul>
          </div>
        </div>
      </nav>
    </div>
    <?php
  } // end (!empty($subnav))
  ?>
</header>
