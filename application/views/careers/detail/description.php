<!-- Descripition Section -->
<section class="g-white g-bg-white u-shadow-v20 g-pt-30">
  <div class="container">
    <div class="row">
      <div class="col">
        <div class="job-title g-color-black g-font-size-<?= $this->agent->is_mobile() ? '22' : '36' ?> g-font-weight-700 g-line-height-1_2 text-uppercase  g-mb-5"><?= $job->title ?></div>
        <div class="row no-gutters g-mb-40">
          <div class="col-auto g-pr-15 g-pt-15" style="max-width: 100%;">
            <div class="job-category g-font-size-16 text-uppercase"><?= $job_category->{$job->category}->name ?></div>
          </div>
          <div class="col g-pt-10">
            <table class="g-color-w4c-blue-v2 g-font-size-16 text-uppercase row no-gutters" width="100%">
              <tr style="vertical-align: top;">
                <td width="1%">
                  <i class="icon-location-pin mr-2"></i>
                </td>
                <td class="job-location  g-pr-15">
                  <?php foreach ($job->location as $location) : ?>
                    <?= $location ?><br>
                  <?php endforeach; ?>
                </td>
                <td class="">
                  <div class="btn btn-outline-info g-font-size-12 float-right g-rounded-50 text-uppercase <?= $this->agent->is_mobile() ? ' g-px-10 g-py-4' : '' ?>" style="background: <?= $job_type->{$job->type}->color ?>20 !important; border-color: <?= $job_type->{$job->type}->color ?>; color:<?= $job_type->{$job->type}->color ?>">
                    <span class="job-type"><?= $job_type->{$job->type}->name ?></span>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
        <?php if ($this->agent->is_mobile()) : ?>
          <div class="g-flex-centered g-bg-img-hero u-bg-overlay w4c-bg-blue-opacity-0_5--after g-py-20 g-mb-25" style="background-image: url(<?= get_image(DIR_BG . 'career/' . $job_category->{$job->category}->image) ?>); height:161px; width:100%;object-fit:cover">
            <div class="container u-bg-overlay__inner text-center">
              <img class="g-opacity-0_5" src="<?= get_image(DIR_LOGO . 'logo-W4C_179_web_white.png') ?>" alt="Logo w4c">
            </div>
          </div>
          <div id="accordion-11" class="u-accordion u-accordion-color-primary" role="tablist" aria-multiselectable="true">
            <!-- Requirement Card -->
            <div class="card g-brd-none rounded g-mb-20" style="box-shadow: 0px 2px 20px rgba(0, 0, 0, 0.08);">
              <div id="accordion-11-heading-req" class="g-pa-0" role="tab">
                <h5 class="mb-0">
                  <a class="collapsed d-flex justify-content-between g-color-black g-text-underline--none--hover rounded g-px-30 g-py-20  g-font-size-18 g-font-weight-600" href="#accordion-11-body-req" aria-expanded="true" aria-controls="accordion-11-body-req" data-toggle="collapse" data-parent="#accordion-11">
                    <?= $copy->Requirement ?>
                    <span class="u-accordion__control-icon g-color-black">
                      <i class="fa fa-chevron-down g-font-size-18"></i>
                      <i class="fa fa-chevron-up g-font-size-18"></i>
                    </span>
                  </a>
                </h5>
              </div>
              <div id="accordion-11-body-req" class="collapse" role="tabpanel" aria-labelledby="accordion-11-heading-req" data-parent="#accordion-11">
                <div class="u-accordion__body g-color-gray-dark-v4 g-pa-30">
                  <ul class="list-blue">
                    <?php foreach ($job->requirement as $index => $rec) : ?>
                      <li class="g-mb-10"><?= $rec ?></li>
                    <?php endforeach; ?>
                  </ul>
                </div>
              </div>
            </div>
            <!-- End Requirement Card -->
            <!-- Description Card -->
            <div class="card g-brd-none rounded g-mb-20" style="box-shadow: 0px 2px 20px rgba(0, 0, 0, 0.08);">
              <div id="accordion-11-heading-desc" class="g-pa-0" role="tab">
                <h5 class="mb-0">
                  <a class="collapsed d-flex justify-content-between g-color-black g-text-underline--none--hover rounded g-px-30 g-py-20 g-font-size-18 g-font-weight-600" href="#accordion-11-body-desc" aria-expanded="true" aria-controls="accordion-11-body-desc" data-toggle="collapse" data-parent="#accordion-11">
                    <?= $copy->JobDescription ?>
                    <span class="u-accordion__control-icon g-color-black ">
                      <i class="fa fa-chevron-down g-font-size-18"></i>
                      <i class="fa fa-chevron-up g-font-size-18"></i>
                    </span>
                  </a>
                </h5>
              </div>
              <div id="accordion-11-body-desc" class="collapse" role="tabpanel" aria-labelledby="accordion-11-heading-desc" data-parent="#accordion-11">
                <div class="u-accordion__body g-color-gray-dark-v4 g-pa-30">
                  <ul class="list-blue">
                    <?php foreach ($job->description as $index => $desc) : ?>
                      <li class="g-mb-10"><?= $desc ?></li>
                    <?php endforeach; ?>
                  </ul>
                </div>
              </div>
            </div>
            <!-- End Description Card -->
          </div>

        <?php else : ?>
          <div class="g-py-15">
            <div class="g-font-size-22 g-font-weight-600 text-uppercase g-mb-10">
              <?= $copy->Requirement ?>
            </div>
            <ul class="list-blue">
              <?php foreach ($job->requirement as $index => $rec) : ?>
                <li class="g-mb-10"><?= $rec ?></li>
              <?php endforeach; ?>
            </ul>
          </div>
          <div class="g-py-15">
            <div class="g-font-size-22 g-font-weight-600 text-uppercase g-mb-10"><?= $copy->JobDescription ?></div>
            <ul class="list-blue">
              <?php foreach ($job->description as $index => $desc) : ?>
                <li class="g-mb-10"><?= $desc ?></li>
              <?php endforeach; ?>
            </ul>
          </div>
        <?php endif; ?>
      </div>

      <!-- End Detail Section -->
      <?php $this->load->view('careers/detail/share') ?>
      <?php if ($this->agent->is_mobile()) : ?>

        <div class="col-12">
          <a class="btn btn-info btn-block g-font-size-18 g-font-weight-600 g-color-white--active g-py-12 g-mt-50 g-rounded-50 text-uppercase" href="http://w4c.id/formofficerw4c"><?= $copy->ApplyNow ?></a>
        </div>
      <?php endif; ?>
    </div>

  </div>

</section>
<!-- End Descripition Section -->