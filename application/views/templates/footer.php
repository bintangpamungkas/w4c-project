<div class="shortcode-html" id="footer">
  <!-- Footer -->
  <footer class="g-color-white-opacity-0_8 g-bg-img-hero g-pt-60" style="background: radial-gradient(circle farthest-side at 70% -10%, rgba(21, 189, 119, 1), rgba(11, 141, 192, 1));">
    <div class="container g-mb-60">
      <div class="row">

        <div class="col-lg-2 col-md-6 g-mb-40 g-mb-0--lg <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
          <div class="u-heading-v2-3 g-mb-20">
            <h2 class="u-heading-v2__title h6 text-uppercase mb-0 font-weight-bold"><?= APP_NAME ?></h2>
          </div>
          <ul class="list-unstyled">
            <li class="g-mb-5">
              <a class="g-color-white-opacity-0_8" href="<?= get_url('official/service') ?>"><?= get_lang('all-services') ?></a>
            </li>
            <li class="g-mb-5">
              <a class="g-color-white-opacity-0_8" href="<?= get_url('official/about') ?>"><?= get_lang('about-us') ?></a>
            </li>
            <li class="g-mb-5">
              <a class="g-color-white-opacity-0_8" href="<?= get_url('official/research') ?>"><?= lang('research') ?></a>
            </li>
            <li class="g-mb-5">
              <a class="g-color-white-opacity-0_8" href="<?= get_url('https://waste4change.com/blog') ?>"><?= get_lang('blog-and-news') ?></a>
            </li>
            <li class="g-mb-5">
              <a class="g-color-white-opacity-0_8" href="<?= get_url('official/contact') ?>"><?= get_lang('contact') ?></a>
            </li>
            <li class="g-mb-5">
              <a class="g-color-white-opacity-0_8" href="<?= get_url('official/career') ?>"><?= get_lang('career') ?></a>
            </li>
            <li class="g-mb-5">
              <a class="g-color-white-opacity-0_8" href="http://w4c.id/internship"><?= get_lang('internship') ?></a>
            </li>
          </ul>
        </div>

        <?php
        $i = 1;
        if ($this->agent->is_mobile()) : //Mobile
          foreach ($navigation_array as $nav) :
            if (!empty($nav['menu'])) :
              foreach ($nav['menu'] as $menu) : ?>
                <?php if(!empty($menu->menu)): ?>

                <div class="col-lg-auto col-md-6 g-mb-40 g-mb-0--lg <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                  <div id="accordion-<?= $i ?>" class="u-accordion u-accordion-bg-primary u-accordion-color-white" role="tablist" aria-multiselectable="true">
                    <!-- Card -->
                    <div class="g-brd-none rounded-0">
                      <div id="accordion-<?= $i ?>-heading-02" class="g-pa-0" role="tab">
                        <h5 class="mb-0">
                          <a class="collapsed g-color-white--hover g-text-underline--none--hover u-heading-v2__title h6 text-uppercase mb-0 font-weight-bold" href="#accordion-<?= $i ?>-body-02" aria-expanded="false" aria-controls="accordion-<?= $i ?>-body-02" data-toggle="collapse" data-parent="#accordion-<?= $i ?>">
                            <?= $menu->title ?>
                            <span class="u-accordion__control-icon g-ml-10"> <i class="fa fa-angle-down"></i> <i class="fa fa-angle-up"></i> </span>
                          </a>
                        </h5>
                      </div>
                      <div id="accordion-<?= $i ?>-body-02" class="collapse" role="tabpanel" aria-labelledby="accordion-<?= $i ?>-heading-02" data-parent="#accordion-<?= $i ?>">
                        <div class="u-accordion__body g-px-0">
                          <ul class="list-unstyled g-ma-0">
                            <?php foreach ($menu->menu as $submenu) : ?>
                              <?php foreach ($submenu->menu as $subsubmenu) : ?>
                                <li class="g-mb-5">
                                  <a class="g-color-white-opacity-0_8" href="<?= get_url($subsubmenu->url) ?>"><?= $subsubmenu->title ?></a>
                                </li>
                              <?php endforeach; ?>
                            <?php endforeach; ?>

                            <?php if ($menu->service_target_id == 2) : ?>
                              <li class="g-mb-5">
                                <a class="g-color-white-opacity-0_8" href="<?= get_url('http://w4c.id/rumahkompos') ?>"><?= get_lang('home-composting') ?></a>
                              </li>
                            <?php endif; ?>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <!-- End Card -->
                  </div>
                </div>
              <?php
                $i++;
                  endif;
              endforeach; //  foreach ($nav['menu'] as $menu)
            endif; //	if (!empty($nav['menu'])):
          endforeach; //foreach ($navigation_array as $nav):
        else : // DEKTOP VIEW
          foreach ($navigation_array as $nav) :
            if (!empty($nav['menu'])) :
              ?>
              <?php foreach ($nav['menu'] as $menu) : ?>
                <?php if(!empty($menu->menu)): ?>

                <div class="col-lg-auto col-md-6 g-mb-40 g-mb-0--lg <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                  <div class="u-heading-v2-3 g-mb-20">
                    <h2 class="u-heading-v2__title h6 text-uppercase mb-0 font-weight-bold"><?= $menu->title ?></h2>
                  </div>
                  <ul class="list-unstyled g-ma-0">
                    <?php foreach ($menu->menu as $submenu) : ?>
                      <?php foreach ($submenu->menu as $subsubmenu) : ?>
                        <li class="g-mb-5">
                          <a class="g-color-white-opacity-0_8" href="<?= get_url($subsubmenu->url) ?>"><?= $subsubmenu->title ?></a>
                        </li>
                      <?php endforeach; ?>
                    <?php endforeach; ?>

                    <?php if ($menu->service_target_id == 2) : ?>
                      <li class="g-mb-5">
                        <a class="g-color-white-opacity-0_8" href="http://w4c.id/rumahkompos">Home Composting</a>
                      </li>
                    <?php endif; ?>
                  </ul>
                </div>
                <?php endif; ?>

              <?php endforeach; //  foreach ($nav['menu'] as $menu)
              ?>
        <?php
            endif; //	if (!empty($nav['menu'])):
          endforeach;
        endif; //end  desktop

        ?>
        <div class="col-lg col-md-6 g-mb-40 g-mb-0--lg <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
          <div class="u-heading-v2-3 g-mb-20">
            <h2 class="u-heading-v2__title h6 text-uppercase mb-0 font-weight-bold"><?= get_lang('connect-with-us') ?>
            </h2>
          </div>

          <address class="mb-5 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
            <div class="g-mb-10">
              <!--							<i class="icon-real-estate-018 u-line-icon-pro g-mr-10"></i>-->
              <span><a class="g-color-white-opacity-0_8" target="_blank" href="https://goo.gl/maps/h16wzCy2htA2"><?= OFFICIAL_ADDRESS ?></a></span>
            </div>

            <div class="g-mb-10">
              <!--							<i class="fa fa-phone g-mr-10"></i>-->
              <span><?= OFFICIAL_TELEPHONE ?></span>
            </div>

            <div class="g-mb-10">
              <!--							<i class="fa fa-envelope g-mr-10"></i>-->
              <span><a class="g-color-white-opacity-0_8" href="mailto:<?= OFFICIAL_MAIL ?>"><?= OFFICIAL_MAIL ?></a></span>
            </div>
          </address>

          <ul class="list-inline mb-0">
            <?php
            foreach (share_social_media() as $social) :
              if (!empty($social['social_url'])) :
            ?>
                <li class="list-inline-item g-mr-10">
                  <a class="u-icon-v3 u-icon-size--md g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 g-rounded-50x" href="<?= $social['social_url'] ?>" target="_blank">
                    <i class="<?= $social['social_icon'] ?>"></i>
                  </a>
                </li>
            <?php
              endif;
            endforeach;
            ?>
          </ul>
        </div>
        <!-- End Footer Content -->
      </div>
    </div>

    <!-- Copyright Footer -->
    <div class="text-center g-py-20 g-color-blue" style="background-color:#0B6375">
      <div class="container">
        <small class="g-font-size-default g-mr-10 g-mb-10 g-mb-0--md" style="color:#44B4C5"><?= DEV_YEAR ?> - All Rights
          Reserved
          <a class="" href="<?= site_url('') ?>" style="color:#44B4C5"><?= APP_NAME ?></a>
        </small>
      </div>
    </div>
    <!-- End Copyright Footer -->
  </footer>
  <!-- End Footer -->
</div>

<a class="js-go-to u-go-to-v1" href="#" data-type="fixed" data-position='{
     "bottom": 15,
     "right": 15
   }' data-offset-top="400" data-compensation="#js-header" data-show-effect="zoomIn">
  <i class="hs-icon hs-icon-arrow-top"></i>
</a>