<?php
$service_targets=[
  [
    'title' => lang('services_corporate_tab'),
    'icon' => 'icon-real-estate-066 u-line-icon-pro',
    'number' => 1,
    'subtitle' => lang('services_corporate_title'),
    'content' => lang('services_corporate_subtitle'),
    'list' => $navigation_array_corporate,
  ],
  [
    'title' => lang('services_individu_tab'),
    'icon' => 'icon-real-estate-003',
    'number' => 2,
    'subtitle' => lang('services_individu_title'),
    'content' => lang('services_individu_subtitle'),
    'list' => $navigation_array_individu,
  ],
];
 ?>
<!-- Promo Block -->
<section id="welcome" class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}' style="background-color: #3D658E;">
  <div class="divimage dzsparallaxer--target w-100 g-bg-pos-bottom-center image-opacity-0 animated fadeIn" id="welcome-image" style="height: 120%;background-image: url(<?= $this->agent->is_mobile() ? base_url('assets/img/bg/bg_header.jpg') : base_url('assets/img/bg/bg_header.jpg') ?>);filter: grayscale(100%);background-position-y: 10px;"></div>
  <div class="g-flex-middle-item full-height-block pending-show animated d-zap" style="background:rgba(11, 63, 94, 0.8);">
    <div class="container">
      <div class="row content-middle-fullscreen">
        <div class="<?= $this->agent->is_mobile() ? 'col-md-12' : 'col-md-8' ?>">
          <br>
          <!-- <h3 class="g-color-white g-font-weight-300 g-font-size-<?= $this->agent->is_mobile() ? '30 mb-2' : '50 mb-3' ?> g-font-asap" style="line-height: 1"><?= lang('welcome_title_1') ?></h3> -->
          <?php if (lang('welcome_title_2')!=''): ?>
            <h3 class="g-font-asap g-color-white g-font-weight-300 g-font-size-<?= $this->agent->is_mobile() ? '35 mb-2' : '60 mb-3' ?>" style="line-height: 1"><?= lang('welcome_title_1') ?></h3>
            <div class="mb-5">
              <span class="g-font-asap g-color-white g-font-weight-700 g-font-size-<?= $this->agent->is_mobile() ? '40' : '60' ?>" style="line-height: 0.75"><?= lang('welcome_title_2') ?> </span>
              <span class="g-font-asap g-font-weight-700 g-font-size-<?= $this->agent->is_mobile() ? '40 mb-3' : '60 mb-3' ?>" style="line-height: 1;color: #88C662;"><?= lang('welcome_title_3') ?></span>
            </div>
          <?php else: ?>
            <h3 class="g-color-white g-font-weight-300 g-font-size-<?= $this->agent->is_mobile() ? '35 mb-2' : '60 mb-3' ?>" style="line-height: 1">
              <?= lang('welcome_title_1') ?>
              <span class="g-font-asap g-font-weight-700 g-font-size-<?= $this->agent->is_mobile() ? '40 mb-3' : '60 mb-3' ?>" style="line-height: 1;color: #88C662;"><?= lang('welcome_title_3') ?></span>
            </h3>
        <?php endif; ?>
        <h3 class="g-color-white g-font-asap g-font-weight-700 g-font-size-<?= $this->agent->is_mobile() ? '40 mb-5' : '60 mb-5' ?>" style="line-height: 1;"><?= lang('welcome_title_4') ?></h3>
        <h3 class="g-color-white g-font-asap g-font-weight-300 g-font-size-<?= $this->agent->is_mobile() ? '18' : '35 pt-5 mt-5' ?>" style="line-height: 1"><?= lang('welcome_title_5') ?></h3>
        <span class="d-block g-color-white-opacity-0_8 g-font-size-20 mb-5 mt-1"></span>
        <a class="js-fancybox u-link-v5 g-color-white" href="https://vimeo.com/167434033" title="Single Image" style="display: none">
          <span class="align-middle u-icon-v3 u-block-hover--scale g-bg-white g-color-black g-color-primary--hover g-rounded-50x g-cursor-pointer mr-2">
            <i class="g-font-size-18 g-pos-rel g-left-2 fa fa-play"></i>
          </span>
          1:41 minutes
        </a>
      </div>
    </div>

    <!-- Services target navivation -->
    <div class="row justify-content-center g-ma-0" style="position: absolute; bottom: 0px;">
      <?php
      foreach ($service_targets as $target):
        ?>
        <div class="col<?= $this->agent->is_mobile() ? '-auto' : '-auto' ?> text-center g-px-0 g-font-weight-700 <?= $target['number']==1 ? '' : ' tab-shadow' ?>">
          <a class="my_tab g-cursor-pointer nav-link my_tab  g-py-15 g-font-weight-300 g-font-size-<?= $this->agent->is_mobile() ? '14 g-px-30' : '25 g-px-80' ?> <?= $target['number']==1 ? 'tab-active' : '' ?>" data-tab="#tab-<?= $target['number'] ?>" style="<?= $this->agent->is_mobile() ? 'min-height: 70px' : 'min-height: 90px' ?> ; color:#aaa">
            <i class="<?= $target['icon'] ?> g-mr-10  g-mb-17 g-font-size-<?= $this->agent->is_mobile() ? '16' : '30' ?>"></i>
            <?= $target['title'] ?>
          </a>
        </div>
        <?php
      endforeach;
      ?>
    </div>
    <!-- END Services target navivation -->

  </div>
</div>


</section>
<!-- End Promo Block -->

<?php
// $this->load->view('sites/sections/fact-waste');
?>

<?php
$this->load->view('sites/sections/services');
?>

<?php
$this->load->view('sites/sections/counter');
?>

<?php
$this->load->view('sites/sections/testimonial');
?>

<?php
$this->load->view('sites/sections/client');
?>

<?php
$this->load->view('sites/sections/media');
?>

<?php
$this->load->view('sites/sections/blog');
?>

<?php
$this->load->view('sites/sections/share');
?>

<?php
$this->load->view('sites/sections/cta');
?>
