<?php if ($this->agent->is_mobile()) : ?>
  <div style="position: fixed;bottom: 58px;right: 18px;">
    <button class="btn btn-info g-rounded-50 g-font-size-26 g-pa-10" data-toggle="modal" data-target="#modal-mobile-share" style="width: 60px; height: 60px;box-shadow: 0px 4px 10px rgba(23, 162, 184, 0.28);"><i class="fa fa-share-alt"></i></button>
  </div>
<?php endif; ?>

<!-- Modal Share -->
<div id="modal-mobile-share" class="modal text-center g-font-asap g-px-0 g-mt-50 g-mx-10">
  <div class="modal-dialog modal-lg">
    <div class="modal-content g-pb-20">
      <div class="modal-header">
        <div class="g-color-black g-font-size-20 text-uppercase g-font-weight-800" style="margin-left: auto;margin-right:auto;"><?= $copy->ShareThisJob ?></div>
      </div>
      <div id="modal-box">
        <div class="row g-mt-20 g-px-40 text-left">
          <div class="col-12 g-pa-5 g-mb-10 row " onclick="window.open('https://api.whatsapp.com/send?text=<?= site_url('career/' . key($job)) ?>')">
            <div class="col-auto">
              <div class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover" style="width: 45px;height: 45px;">
                <i class="fa fa-whatsapp"></i>
              </div>
            </div>
            <div class="col g-py-10">
              <?= $copy->WhatsApp ?>
            </div>
          </div>
          <div class="col-12 g-pa-5 g-mb-10 row" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=<?= site_url('career/' . key($job)) ?>&display=popup&ref=plugin')">
            <div class="col-auto">
              <div class="u-icon-v3 popup g-social-icon g-rounded-50x g-color-white--hover" style="width: 45px;height: 45px;">
                <i class="fa fa-facebook"></i>
              </div>
            </div>
            <div class="col g-py-10">
              <?= $copy->Facebook ?>
            </div>
          </div>
          <div class="col-12 g-pa-5 g-mb-10 row" onclick="window.open('http://twitter.com/share?text=<?= $job->title ?>&url=<?= site_url('career/' . key($job)) ?>&via=<?= APP_NAME ?>')">
            <div class="col-auto">
              <div class="u-icon-v3 popup g-social-icon g-rounded-50x g-color-white--hover" style="width: 45px;height: 45px;">
                <i class="fa fa-twitter"></i>
              </div>
            </div>
            <div class="col g-py-10">
              <?= $copy->Twitter ?>
            </div>
          </div>
          <div class="col-12 g-pa-5 g-mb-10 row" onclick="window.open('https://www.linkedin.com/shareArticle?mini=true&url=<?= site_url('career/' . key($job)) ?>&source=<?= APP_NAME ?>')">
            <div class="col-auto">
              <div class="u-icon-v3 popup g-social-icon g-rounded-50x g-color-white--hover" style="width: 45px;height: 45px;">
                <i class="fa fa-linkedin"></i>
              </div>
            </div>
            <div class="col g-py-10">
              <?= $copy->LinkedIn ?>
            </div>
          </div>
          <div id="copyLink" class="col-12 g-pa-5 g-mb-10 row" onclick="window.open('<?= site_url('career/' . key($job)) ?>')" data-toggle="tooltip" data-placement="top" title="Copy Link">
            <div class="col-auto">
              <div class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover g-text-rotate" style="width: 45px;height: 45px;">
                <i class="fa fa-link"></i>
              </div>
            </div>
            <div class="col g-py-10">
              <?= $copy->CopyUrl ?>
            </div>
          </div>
          <div class="col-12 g-pa-0">
          <button type="button" class="btn btn-info btn-block g-brd-0 text-center g-rounded-50 text-right g-font-size-14 text-uppercase g-py-15 g-color-black" data-dismiss="modal" aria-label="Close" style="background-color:#EDEDED">
          <?= $copy->Cancel ?>
        </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Modal Share -->