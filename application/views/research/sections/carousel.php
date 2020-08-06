<!-- Sliders -->
<div class="<?= $this->agent->is_mobile() ? 'container' : '' ?> js-carousel g-pt-50 g-pb-10" data-infinite="true" data-autoplay="true" data-pagi-classes="u-carousel-indicators-v1 g-absolute-centered--x text-center" <?php if (!$this->agent->is_mobile()) : ?>
  data-arrows-classes="u-arrow-v1 g-absolute-centered--y g-width-40 g-height-40 u-icon-v3 u-icon-size--md g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 g-rounded-50x g-font-size-40 g-rounded-50x u-icon-v3"
  data-arrow-left-classes="icon-arrow-left-circle g-left-40" data-arrow-right-classes="icon-arrow-right-circle g-right-40" <?php endif; ?>>
  <?php
  if( $this->agent->is_mobile()) {
        $platform = 'mobile-';
    } else {
        $platform = '';
    } 
  ?>
  <?php foreach ($researchs as $research) : ?>
  <div class="js-slide g-mb-20">
    <a href="<?= site_url('research/' . $research['slug']) ?>" style="text-decoration: none">
        <img src="<?= base_url(DIR_BG.'research/banner/'.$platform.$lang.'-'.$research['slider']) ?>" alt="" style="width: 100%;object-fit: cover;">      
    </a>
  </div>
  <?php endforeach; ?>
</div>
<!-- End Sliders -->