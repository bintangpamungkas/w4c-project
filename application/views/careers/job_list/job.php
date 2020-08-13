<!-- Job View -->
<section class="">
  <div class="<?= $this->agent->is_mobile() ? 'g-bg-white g-pt-10' : 'g-bg-gray-light-v4 g-pt-35' ?> g-pb-10">
    <div class="<?= $this->agent->is_mobile() ? '' : 'container g-px-0' ?>">
      <div class="row g-mb-10">

        <?php if (!$this->agent->is_mobile()) : ?>
          <div class="col g-pa-0">
            <div class="" style="height: 60px;padding-left:20px">
              <div class="h-scroll scroll-hide">
                <div class="h-scroll-wrapper job-category g-pb-10">
                  <div class="h-scroll-item">
                    <button onclick="filterByCategory(this)" class="btn <?= empty($category) ? 'btn-info' : 'btn-outline-info' ?> g-rounded-50 text-uppercase g-mr-15 g-px-20 <?= $this->agent->is_mobile() ? 'g-font-size-14' : 'g-font-size-18' ?>" data-filter="*"><?= $copy->AllJobs ?></button>
                  </div>
                  <?php foreach ($job_category as $cati => $cat) : ?>
                    <div class="h-scroll-item">
                      <button onclick="filterByCategory(this)" class="btn <?= empty($category) ? 'btn-outline-info' : ($category == $cat->name ? 'btn-info' : 'btn-outline-info') ?> g-rounded-50 text-uppercase g-mr-15 g-px-20 <?= $this->agent->is_mobile() ? 'g-font-size-14' : 'g-font-size-18' ?>" data-filter=".type--<?= $cati ?>"><?= $cat->name ?></button>
                    </div>
                  <?php endforeach; ?>
                </div>
              </div>
            </div>
          </div>
        <?php endif; ?>

        <!-- Sorting -->
        <div class="col-md-auto col-12 <?= $this->agent->is_mobile() ? '' : 'g-bg-gray-light-v4' ?> ">
          <div class="form-group g-color-black-opacity-0_7 <?= $this->agent->is_mobile() ? 'g-mb-10 g-px-15' : 'g-mb-0 g-mt-5 float-right' ?>">
            <div class="g-brd-primary--focus">
              <select id="inputSort" onchange="sorting(this)" class="form-control g-pa-12 g-font-size-16" style="height: 50px;width: <?= $this->agent->is_mobile() ? '100%' : '250px' ?>;">
                <option disabled selected value="0"><?= $copy->SortBy ?></option>
                <option value="title"><?= $copy->Position ?></option>
                <option value="location"><?= $copy->Location ?></option>
                <option value="type"><?= $copy->Type ?></option>
              </select>
            </div>
          </div>
        </div>
        <!-- End Sorting -->
        <?php if (!$this->agent->is_mobile()) : ?>
          <div class="col-12 <?= $this->agent->is_mobile() ? ' g-px-25' : ' g-px-10' ?>">
            <div id="search-message" class="<?= $this->agent->is_mobile() ? '' : ' '; ?>alert alert-dismissible fade show g-font-weight-500 g-mb-0 g-px-20 g-py-15 g-my-20 d-none" role="alert">
              <div class="close g-font-size-16 g-mt-6 g-mr-20 g-pt-10 g-font-weight-900" onclick="reset()">
                Reset
              </div>
              <div class="input-reset close g-font-size-16 g-mt-5 g-pt-10 g-font-weight-400" data-dismiss="alert" aria-label="Close">
                <span aria-hidden=" true">x</span>
              </div>
              <span id="search-total">0</span> Search result found
            </div>
          </div>
        <?php endif; ?>
      </div>
    </div>
  </div>
  <script>
    $(window).load(function() {
      $('.h-scroll').height($('.container').outerWidth() - 260)
    })
  </script>
  <!-- Job List -->
  <div class="g-bg-gray-light-v4 g-pb-20">
    <div class="container">
      <div class=" row align-height-list g-py-10 job-list">
        <?php foreach ($jobs as $index => $job) :
          // if ($job->status == 1 && !empty($job->talentaUrl)) : 
          if ($job->status == 1) :
        ?>
            <div class="col-md-4 col-12 g-line-height-1_2  <?= $this->agent->is_mobile() ? 'g-px-10 g-py-5' : 'g-pa-5' ?> job-item type--<?= $job->category ?>" data-collapsed="false" style="overflow:hidden; transition:height 0.3s ease-out;height:auto;">
              <div class="align-height-item g-bg-white g-pos-rel <?= $this->agent->is_mobile() ? 'g-px-25 g-py-20' : 'g-pa-30' ?>" style="box-shadow:1px 6px 20px 2px rgba(0, 0, 0, 0.1) position:relative;">
                <div class="btn btn-outline-info g-font-size-<?= $this->agent->is_mobile() ? '10' : '12' ?> float-right g-rounded-50 text-uppercase g-mt-5 g-ml-10 g-py-5 g-px-12" style="background: <?= $job_type->{$job->type}->color ?>20 !important; border-color: <?= $job_type->{$job->type}->color ?>; color:<?= $job_type->{$job->type}->color ?>">
                  <span class="job-type"><?= $job_type->{$job->type}->name ?></span></div>
                <div class="job-title g-color-black g-font-size-<?= $this->agent->is_mobile() ? '18' : '22' ?> g-font-weight-700 g-line-height-1_2 text-uppercase g-mb-5"><?= $job->title ?></div>
                <div class="job-category g-font-size-<?= $this->agent->is_mobile() ? '12' : '16' ?> text-uppercase g-mb-20"><?= $job_category->{$job->category}->name ?></div>
                <div class="w4c-color-blue g-font-size-<?= $this->agent->is_mobile() ? '12' : '16' ?> text-uppercase g-pb-30 row no-gutters">
                  <div class="col-auto">
                    <i class="icon-location-pin mr-2"></i>
                  </div>
                  <div class="col job-location">
                    <?php foreach ($job->location as $loc1=>$location_item) : ?>
                      <?= $loc1>0 ? ', '.$location_item : $location_item ?>
                    <?php endforeach; ?>
                  </div>
                </div>
                <div class="g-pos-abs" style="right:0px;bottom:30px;<?= $this->agent->is_mobile() ? 'bottom:20px;right:25px' : 'bottom:30px;right:30px' ?>">
                  <a href="<?= site_url('career/job/' . $index) ?>" class="w4c-color-blue g-font-size-<?= $this->agent->is_mobile() ? '14' : '18' ?> text-uppercase"><?= $copy->SeeDetail ?></a>
                  <!-- <a href="<?= $job->talentaUrl ?>" class="w4c-color-blue g-font-size-<?= $this->agent->is_mobile() ? '14' : '18' ?> text-uppercase"><?= $copy->SeeDetail ?></a> -->
                </div>
              </div>
            </div>
        <?php endif;
        endforeach; ?>
      </div>
    </div>
  </div>
  <!-- End Job List -->
</section>
<!-- End Job View -->