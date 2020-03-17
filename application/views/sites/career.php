<div class="container">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <img src="<?php echo base_url(DIR_IMG.'inline/career-banner.svg') ?>" alt=""  hei>
      <div class="form-group g-mb-20 text-center" style="padding: 15px 8px;">
        <h2 class="text-uppercase"><?= lang('career_title') ?></h2>
        <h6 class=""><?= lang('career_subtitle') ?></h6>
        <br>
        <br>
        <script>
        $(window).ready(function () {
          $('#gform').css('width', window.innerWidth-window.innerWidth*2*(10/100));
        })
        </script>
        <iframe id="<?= $this->agent->is_mobile() ? 'gform' : '' ?>" style="height: <?= $this->agent->is_mobile() ? '1100px' : '1200px' ?>;width: 100%;border: none" src="https://docs.google.com/forms/d/e/1FAIpQLSfJedPOYTpkx0T6LHCDbR1Z9hXKU9k70pxzZDn5f5fZ9ZXzQw/viewform?embedded=true">Memuat...</iframe>
      </div>
    </div>
  </div>
</div>
