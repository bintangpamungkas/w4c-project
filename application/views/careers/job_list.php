<!-- Search Bar -->
<section class="g-white g-bg-white u-shadow-v20 g-pt-80">
  <div>
    <div class="container">
      <div class="">
        <form action="">
          <div class="text-right g-pt-50">
            <?php foreach ($breadcrumb as $bread) : ?>
            <?php if ($bread['active'] != true) : ?>
            <a class="g-color-blue g-text-transform-none" href="<?= site_url($bread['url']) ?>">
              <?php echo $bread['title'] ?>
            </a>
            <i class="g-color-black fa fa-angle-right g-mx-10"></i>
            <?php else : ?>
            <span class="g-color-black"><?php echo $bread['title'] ?> </span>
            <?php endif; ?>
            <?php endforeach; ?>
          </div>
          <div class="row justify-align-center g-py-50">
            <?php if ($this->agent->is_mobile()) : ?>
            <div class="col">
              <div class="form-group g-m-reset">
                <div class="input-group g-brd-primary--focus">
                  <div class="input-group-prepend g-brd-right-none">
                    <span class="input-group-text rounded-0 g-bg-white g-color-gray-light-v1 g-brd-right-none"><i class="icon-magnifier"></i></span>
                  </div>
                  <input class="form-control g-pa-12 g-brd-left-none" type="text" placeholder="<?= $copy->Search . ' ' . $copy->Position . ', ' . $copy->Location . ', ' . $copy->Type ?>">
                </div>
              </div>
              <div class="form-group g-ma-0">
              </div>
            </div>
            <?php else : ?>
            <div class="col g-px-8">
              <div class="form-group g-ma-0">
                <input class="form-control g-pa-12" type="text" placeholder="<?= $copy->Position ?>">
              </div>
            </div>
            <div class="col g-px-8">
              <div class="form-group g-ma-0">
                <input class="form-control g-pa-12" type="text" placeholder="<?= $copy->Location ?>">
              </div>
            </div>
            <div class="col g-px-8">
              <div class="form-group g-ma-0">
                <input class="form-control g-pa-12" type="text" placeholder="<?= $copy->Type ?>">
              </div>
            </div>
            <div class="col g-px-8">
              <button class="btn btn-info btn-block g-pa-12 g-rounded-50 g-brd-2"><?= strtoupper($copy->Search) ?></button>
            </div>
            <div class="col g-px-8">
              <button class="btn btn-outline-info btn-block g-pa-12 g-rounded-50 g-brd-2"><?= strtoupper($copy->ViewJobList) ?></button>
            </div>
            <?php endif; ?>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>
<!-- End Search Bar -->

<!-- Job View -->
<section class="">
  <div class="<?= $this->agent->is_mobile() ? 'g-bg-white' : 'g-bg-gray-light-v4' ?> g-bg-gray-light-v4 g-pt-35 g-pb-20">
    <div class="container">
      <div class=" g-mb-30">
        <div class="g-font-asap g-color-black text-uppercase g-font-weight-600 g-font-size-24 g-mb-10 <?= $this->agent->is_mobile() ? 'text-center' : ''?>"><?= $copy->JobList ?></div>
        <hr class="g-width-120 g-mt-20 g-mb-40 <?= $this->agent->is_mobile() ? '' : 'g-ml-0'?> g-brd-2 g-brd-blue">
      </div>
      <div class="">
        <button class="btn btn-outline-info g-rounded-50 text-uppercase g-mr-15 g-px-20"><?= $copy->AllJobs ?></button>
        <?php foreach ($job_category as $index=>$category): ?>
        <button class="btn btn-outline-info g-rounded-50 text-uppercase g-mr-15 g-px-20"><?= $category->name ?></button>
        <?php endforeach; ?>
      </div>
    </div>
  </div>
  <div class="g-bg-gray-light-v4">
    <div class="container">
      <div class=" row justify-content-center align-height-list g-py-20">
        <?php foreach ($jobs as $index=>$job): ?>
        <div class="col-md-4 col-12 <?= $this->agent->is_mobile() ? 'g-px-10 g-py-5' : 'g-pa-5'?> ">
          <div class="align-height-item g-bg-white g-pos-rel <?= $this->agent->is_mobile() ? 'g-px-25 g-py-20' : 'g-pa-30'?>" style="box-shadow:1px 6px 20px 2px rgba(0, 0, 0, 0.1) position:relative;">
              <div class="btn btn-outl ine-info g-font-size-12 float-right g-rounded-50 text-uppercase g-mt-5 g-py-5 g-px-12" style="background: <?= $job_type->{$job->type}->color ?>20 !important; border-color: <?= $job_type->{$job->type}->color ?>; color:<?= $job_type->{$job->type}->color ?>">
                <?= $job_type->{$job->type}->name ?></div>
              <div class="g-color-black g-font-size-22 g-font-weight-900 g-line-height-1_2 text-uppercase"><?= $job->title ?></div>
              <div class="g-font-size-16 text-uppercase g-mb-20"><?= $job_category->{$job->category}->name ?></div>
              <div class="g-color-w4c-blue-v2 g-font-size-16 text-uppercase g-pb-30"><i class="icon-location-pin mr-2"></i><?= $job->location ?></div>
              <div class="g-pos-abs" style="right:0px;bottom:30px;<?= $this->agent->is_mobile() ? 'bottom:20px;right:25px' : 'bottom:30px;right:30px'?>" >
                <a href="<?= site_url('career/detail') ?>" class="g-color-w4c-blue-v2 g-font-size-<?= $this->agent->is_mobile() ? '20' :'24'?> g-font-weight-900 text-uppercase"><?= $copy->SeeDetail ?></a>
              </div>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
  </div>
</section>
<!-- End Job View -->

<!-- CTA -->
<section
  class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden"
  data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}' style="background-color:white;height:400px">
  <div class="divimage dzsparallaxer--target w-100"
    style="height: 130%; background-image: url(<?= get_image(DIR_IMG . 'bg/career/image11.png') ?>); transform: translate3d(0px, -48.5814px, 0px);">
  </div>
  <div style="background:rgba(248,248,248,0.45); height:100%">
    <div class="container <?= $this->agent->is_mobile() ? 'text-center g-py-50' : 'g-py-70' ?>">
      <div class="row justify-content-center text-center">
        <div class="col-12 g-mb-15 pt-5 align-self-center">
          <div class="g-color-black <?= $this->agent->is_mobile() ? 'g-font-size-20' : 'h2' ?>">
            <?= $copy->CantFindWhatYouAreLookingFor?></div>
        </div>
        <div class="col-md-3 col-12 g-mb-15 pt-5 align-self-center">
          <a class="btn btn-block btn-info g-color-white g-font-size-18 g-font-weight-600 g-rounded-50 g-py-15 g-px-50"
            href="http://w4c.id/formofficerw4c">
            <?= strtoupper($copy->DropCV) ?>
          </a>
        </div>
        <div class="col-md-3 col-12 g-mb-15 pt-5 align-self-center">
          <a class="btn btn-block btn-outline-info g-brd-2 g-font-size-18 g-font-weight-600 g-rounded-50 g-py-15 g-px-50" href="<?= site_url('contact') ?>">
            <?= strtoupper($copy->ContactUs) ?>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- End CTA -->