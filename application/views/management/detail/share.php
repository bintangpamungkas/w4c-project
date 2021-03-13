<?php if (!$this->agent->is_mobile()) : ?>
  <!-- Share Section -->
  <div class="col-md-auto">
        <?php if (!$this->agent->is_mobile()) : ?>
          <div class="" style="border:1px solid #C4C4C4">
            <div class="g-flex-centered g-bg-img-hero u-bg-overlay w4c-bg-blue-opacity-0_5--after g-py-20" style="background-image: url(<?= get_image(DIR_BG . 'internship/' . $job_category->{$job->category}->image) ?>); height:273px; width:393px;object-fit:cover">
              <div class="container u-bg-overlay__inner text-center">
                <img class="g-opacity-0_5" src="<?= get_image(DIR_LOGO . 'logo-W4C_179_web_white.png') ?>" alt="Logo w4c">
              </div>
            </div>
            <div class="g-px-20 g-py-30">
              <a class="btn btn-info btn-block g-font-size-18 g-font-weight-600 g-color-white--active g-py-12 g-mb-35 g-rounded-50 text-uppercase" href="https://docs.google.com/forms/d/e/1FAIpQLSc71hhnrWLhPSZgFGJ2ZSmg28k8PMIrRNZZnjllD8q6IzUxew/viewform"><?= $copy->ApplyNow ?></a>
              <div class="g-color-black-opacity-0_7 g-font-size-18 text-uppercase g-mb-20"><?= $copy->ShareThisJob ?></div>
              <table border="0" width="100%">
                <tr class="text-center">
                  <td>
                    <a class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover" href="https://api.whatsapp.com/send?text=<?= site_url('internship/intern-list/' . $job_slug) ?>" target="_blank" style="width: 55px;height: 55px;">
                      <i class="fa fa-whatsapp"></i>
                    </a>
                  </td>
                  <td>
                    <a class="u-icon-v3 popup g-social-icon g-rounded-50x g-color-white--hover" href="https://www.facebook.com/sharer/sharer.php?u=<?= site_url('internship/intern-list/' . $job_slug) ?>&display=popup&ref=plugin" target="_blank"style="width: 55px;height: 55px;">
                      <i class="fa fa-facebook"></i>
                    </a>
                  </td>

                  <td>
                    <a class="u-icon-v3 popup g-social-icon g-rounded-50x g-color-white--hover" href="http://twitter.com/share?text=<?= $job->title ?>&url=<?= site_url('internship/intern-list/' . $job_slug) ?>&via=<?= APP_NAME ?>" target="_blank"style="width: 55px;height: 55px;">
                      <i class="fa fa-twitter"></i>
                    </a>
                  </td>
                  <td>
                    <a class="u-icon-v3 popup g-social-icon g-rounded-50x g-color-white--hover" href="https://www.linkedin.com/shareArticle?mini=true&url=<?= site_url('internship/intern-list/' . $job_slug) ?>&source=<?= APP_NAME ?>" target="_blank" style="width: 55px;height: 55px;">
                      <i class="fa fa-linkedin"></i>
                    </a>
                  </td>
                  <td>
                    <a id="copyLink" class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover g-text-rotate" href="<?= site_url('internship/intern-list/' . $job_slug) ?>" data-toggle="tooltip" data-placement="top" title="Copy Link" style="width: 55px;height: 55px;">
                      <i class="fa fa-link"></i>
                    </a>
                  </td>
                </tr>
              </table>
            </div>
          </div>
        <?php endif; ?>
      </div>
      <!-- End Share Section -->
  <?php else: ?>
  <div style="position: fixed;bottom: 58px;right: 18px; z-index: 1;">
    <button class="btn btn-info g-rounded-50 g-font-size-26 g-pa-10" data-toggle="modal" data-target="#modal-mobile-share" style="width: 60px; height: 60px;box-shadow: 0px 4px 10px rgba(23, 162, 184, 0.28);"><i class="fa fa-share-alt"></i></button>
  </div>

<!-- Modal Share -->
<div id="modal-mobile-share" class="modal text-center g-font-asap g-px-0 g-mt-50 g-mx-10">
  <div class="modal-dialog modal-lg">
    <div class="modal-content g-pb-20">
      <div class="modal-header">
        <div class="g-color-black g-font-size-20 text-uppercase g-font-weight-800" style="margin-left: auto;margin-right:auto;"><?= $copy->ShareThisJob ?></div>
      </div>
      <div id="modal-box">
        <div class="row g-mt-20 g-px-40 text-left">
          <div class="col-12 g-pa-5 g-mb-10 row " onclick="window.open('https://api.whatsapp.com/send?text=<?= site_url('internship/intern-list/' . $job_slug) ?>')">
            <div class="col-auto">
              <div class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover" style="width: 45px;height: 45px;">
                <i class="fa fa-whatsapp"></i>
              </div>
            </div>
            <div class="col g-py-10">
              <?= $copy->WhatsApp ?>
            </div>
          </div>
          <div class="col-12 g-pa-5 g-mb-10 row" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=<?= site_url('internship/intern-list/' . $job_slug) ?>&display=popup&ref=plugin')">
            <div class="col-auto">
              <div class="u-icon-v3 popup g-social-icon g-rounded-50x g-color-white--hover" style="width: 45px;height: 45px;">
                <i class="fa fa-facebook"></i>
              </div>
            </div>
            <div class="col g-py-10">
              <?= $copy->Facebook ?>
            </div>
          </div>
          <div class="col-12 g-pa-5 g-mb-10 row" onclick="window.open('http://twitter.com/share?text=<?= $job->title ?>&url=<?= site_url('internship/intern-list/' . $job_slug) ?>&via=<?= APP_NAME ?>')">
            <div class="col-auto">
              <div class="u-icon-v3 popup g-social-icon g-rounded-50x g-color-white--hover" style="width: 45px;height: 45px;">
                <i class="fa fa-twitter"></i>
              </div>
            </div>
            <div class="col g-py-10">
              <?= $copy->Twitter ?>
            </div>
          </div>
          <div class="col-12 g-pa-5 g-mb-10 row" onclick="window.open('https://www.linkedin.com/shareArticle?mini=true&url=<?= site_url('internship/intern-list/' . $job_slug) ?>&source=<?= APP_NAME ?>')">
            <div class="col-auto">
              <div class="u-icon-v3 popup g-social-icon g-rounded-50x g-color-white--hover" style="width: 45px;height: 45px;">
                <i class="fa fa-linkedin"></i>
              </div>
            </div>
            <div class="col g-py-10">
              <?= $copy->LinkedIn ?>
            </div>
          </div>
          <div id="copyLink" class="col-12 g-pa-5 g-mb-10 row" href="<?= site_url('career/job/' . $job_slug) ?>" data-toggle="tooltip" data-placement="top" title="Copy Link">
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
<?php endif; ?>
