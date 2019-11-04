<div class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg" id="navBar">
  <?= ($this->agent->is_mobile()) ? '<div class="js-scrollbar card-block  u-info-v1-1 g-bg-white-gradient-v1--after g-pa-0 full-height"> ': '' ?>
    <ul class="navbar-nav text-uppercase g-font-weight-600 ml-auto">
      <?php
      $nav=$navigation_array;
      foreach ($nav as $nav):
        if($nav['visible']==true):
          ?>
          <li class="<?= $nav['type']=='mega-menu' ? 'hs-has-mega-menu ' : ($nav['type']=='dropdown' ? 'hs-has-sub-menu ' : '') ?>nav-item g-mx-20--lg" data-animation-in="fadeIn" data-animation-out="fadeOut" data-position="right">
            <a <?= $nav['type']=='mega-menu' ? 'data-target ' : 'href' ?>="<?= $nav['url'] ?>" class="<?= $nav['type']=='mega-menu' ? 'hover-mega-menu g-cursor-pointer' : '' ?> <?= $this->agent->is_mobile() || $template!='index' ? 'g-color-black-opacity-0_8' : 'nav-change-scroll g-color-black' ?> g-font-size-12 nav-link px-0 <?= $this->agent->is_mobile() ? 'g-py-15' : '' ?>" style="line-height: 1" <?= $nav['type']=='mega-menu' || $nav['type']=='dropdown' ? 'aria-haspopup="true" aria-expanded="false"' : '' ?>>
              <?php if($nav['for']=='language'):
                if(!$this->session->userdata('language') || $this->session->userdata('language')=='id'):
                  ?>
                  <img src="<?= base_url('assets/img/icons/flag_indonesia.png') ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px">
                <?php else: ?>
                  <img src="<?= base_url('assets/img/icons/flag_england.png') ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px">
                <?php endif; ?>
              <?php endif; ?>
              <?= $nav['title'] ?>
              <?php
              if($nav['type']=='mega-menu'):?>
              <i class="hs-icon hs-icon-arrow-bottom g-font-size-11 g-ml-7"></i>
              <?php
            endif;?>
            <?php
            if($nav['is_new']==true):?>
            <span class="g-color-white g-bg-primary g-rounded-5 g-font-size-10 g-px-8 g-py-3 g-ml-5"><?= lang('new') ?></span>
            <?php
          endif;?>
        </a>
        <?php
        if($nav['type']=='mega-menu'):
          ?>
          <div style="width: 100%" class="hs-mega-menu g-px-15 g-bg-transparent" aria-labelledby="mega-menu-label-1">
            <div class="<?= $this->agent->is_mobile() ? '' : 'box-shadow-down' ?> font-weight-normal g-text-transform-none g-mt-2 g-bg-white">
              <div class="row align-items-stretch <?= $this->agent->is_mobile() ? '' : 'g-py-35 g-px-50' ?>">
                <?php
                if($nav['submenu_type']=='column'):
                  ?>
                  <?php
                  foreach ($nav['menu'] as $mega):
                    ?>
                    <div class="col-md-<?= count($mega['menu'])>7 ? '8' : '4' ?> <?= $mega['number']>1 ? 'g-brd-left g-brd-black-opacity-0_05 g-pl-50' : '' ?>">
                      <h5 class="h5 text-uppercase g-font-weight-600 g-color-info g-mb-10"><i class="<?= $mega['icon'] ?> g-mr-5"></i> <?= $mega['title'] ?></h5>
                      <div class="row">
                        <div class="col-md-<?= count($mega['menu'])>7 ? '4' : '12' ?>">
                          <ul class="list-unstyled g-ml-10">
                            <?php
                            foreach ($mega['menu'] as $sub):
                              if($sub['visible']==true):
                                if($sub['number']<=4):
                                  ?>
                                  <li>
                                    <a href="<?= $sub['url'] ?>" class="nav-link g-px-0 g-font-size-11 g-color-black g-color-primary--hover">
                                      <div class="g-font-size-8 text-uppercase g-color-black-opacity-0_5 d-none"><?= $sub['category'] ?></div>
                                      <?= $sub['title'] ?>
                                      <?php
                                      if($sub['is_new']==true):?>
                                      <span class="g-color-white g-bg-primary g-rounded-5 g-font-size-10 g-px-8 g-py-3 g-ml-5"><?= lang('new') ?></span>
                                      <?php
                                    endif;?>
                                  </a>
                                </li>
                                <?php
                              endif;
                            endif;
                          endforeach;
                          ?>
                        </ul>
                      </div>
                      <?php if(count($mega['menu'])>4): ?>
                        <div class="col-md-4">
                          <ul class="list-unstyled g-ml-10">
                            <?php
                            foreach ($mega['menu'] as $sub):
                              if($sub['visible']==true):
                                if($sub['number']>4 && $sub['number']<=8):
                                  ?>
                                  <li>
                                    <a href="<?= $sub['url'] ?>" class="nav-link g-px-0 g-font-size-11 g-color-black g-color-primary--hover">
                                      <div class="g-font-size-8 text-uppercase g-color-black-opacity-0_5 d-none"><?= $sub['category'] ?></div>
                                      <?= $sub['title'] ?>
                                      <?php
                                      if($sub['is_new']==true):?>
                                      <span class="g-color-white g-bg-primary g-rounded-5 g-font-size-10 g-px-8 g-py-3 g-ml-5"><?= lang('new') ?></span>
                                      <?php
                                    endif;?>
                                  </a>
                                </li>
                                <?php
                              endif;
                            endif;
                          endforeach;
                          ?>
                        </ul>
                      </div>
                    <?php endif; ?>
                    <?php if(count($mega['menu'])>8): ?>
                      <div class="col-md-4">
                        <ul class="list-unstyled g-ml-10">
                          <?php
                          foreach ($mega['menu'] as $sub):
                            if($sub['visible']==true):
                              if($sub['number']>8):
                                ?>
                                <li>
                                  <a href="<?= $sub['url'] ?>" class="nav-link g-px-0 g-font-size-11 g-color-black g-color-primary--hover">
                                    <div class="g-font-size-8 text-uppercase g-color-black-opacity-0_5 d-none"><?= $sub['category'] ?></div>
                                    <?= $sub['title'] ?>
                                    <?php
                                    if($sub['is_new']==true):?>
                                    <span class="g-color-white g-bg-primary g-rounded-5 g-font-size-10 g-px-8 g-py-3 g-ml-5"><?= lang('new') ?></span>
                                    <?php
                                  endif;?>
                                </a>
                              </li>
                              <?php
                            endif;
                          endif;
                        endforeach;
                        ?>
                      </ul>
                    </div>
                  <?php endif; ?>
                </div>
              </div>
              <?php
            endforeach;
            ?>
            <?php
          else:
            ?>
            <div class="col-lg">
              <section class="g-pl-15 g-pb-15">
                <ul class="list-unstyled">
                  <?php
                  foreach ($nav['menu'] as $mega):
                    if($mega['visible']==true):
                      ?>
                      <li>
                        <a href="<?= $mega['url'] ?>" class="nav-link g-px-0 g-font-size-11 g-color-black g-color-primary--hover">
                          <div class="g-font-size-8 text-uppercase g-color-black-opacity-0_5 d-none"><?= $mega['category'] ?></div>
                          <?= $mega['title'] ?>
                          <?php
                          if($mega['is_new']==true):?>
                          <span class="g-color-white g-bg-primary g-rounded-5 g-font-size-10 g-px-8 g-py-3 g-ml-5"><?= lang('new') ?></span>
                          <?php
                        endif;?>
                      </a>
                    </li>
                    <?php
                  endif;
                endforeach;
                ?>
              </ul>
            </section>
          </div>
          <?php
        endif;
        ?>
      </div>
    </div>
  </div>
  <?php
  elseif($nav['type']=='dropdown'):
    ?>
    <ul class="hs-sub-menu list-unstyled <?= $this->agent->is_mobile() ? '' : 'box-shadow-down' ?> g-mt-14 g-min-width-65" id="nav-submenu--features" aria-labelledby="nav-link--features">

      <?php
      foreach ($nav['menu'] as $menu):
        if($menu['visible']==true):
          ?>
          <li class="dropdown-item ">
            <a class="nav-link <?= $menu['title']=='EN' && ($this->session->userdata('language')=='en') ? 'g-color-info' : ($menu['title']=='ID' && (!$this->session->userdata('language') || $this->session->userdata('language')=='id') ? 'g-color-info' : 'g-color-black-opacity-0_8') ?>" href="<?= $menu['url'] ?>"><?= $menu['title'] ?></a>
          </li>
          <?php
        endif;
      endforeach;
      ?>
    </ul>
    <?php
  endif;
  ?>
</li>
<?php
endif;
endforeach;
?>
</ul>
<?= ($this->agent->is_mobile()) ? '<br><br><br><br></div>': '' ?>
</div>
<!-- End Navigation -->
