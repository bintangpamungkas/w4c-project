<!-- Related Job -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-90' ?>">
  <div class="container">
    <div class="g-mb-50">
      <?php if (!$this->agent->is_mobile()) : ?>
        <a class="btn btn-info float-right g-rounded-50 g-py-10 g-px-80 g-font-size-18 text-uppercase" href="<?= site_url('career/job') ?>"><?= $copy->SeeMore ?></a>
      <?php endif; ?>
      <div class="g-font-asap g-color-black text-uppercase g-font-weight-600 g-font-size-24 g-mb-10 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>"><?= $copy->RelatedJob ?></div>
      <hr class="g-width-70 g-mt-20 g-mb-40 <?= $this->agent->is_mobile() ? '' : 'g-ml-0' ?> g-brd-2 w4c-brd-blue">
    </div>
    <div class="container">
      <div class="row align-height-list">
        <?php
        if ($this->agent->is_mobile()) {
          $show = 2;
        } else {
          $show = 5;
        }
        $i = 1;
        foreach ($jobs as $itemi => $item) :
          if ($item->category == $job->category && $item->status == 1 && $job_slug != $itemi) : 
          ?>
            <div class="col-md-4 col-12 g-line-height-1_2 <?= $this->agent->is_mobile() ? 'g-px-10 g-py-5' : 'g-pa-5' ?>">
              <div class="g-bg-white <?= $this->agent->is_mobile() ? 'g-px-25 g-py-20' : 'g-pa-30 align-height-item' ?>" style="box-shadow:1px 6px 20px 2px rgba(0, 0, 0, 0.1);position:relative;">
                  <div class="btn btn-outl ine-info g-font-size-<?= $this->agent->is_mobile() ? '10' : '12' ?> float-right g-rounded-50 text-uppercase g-mt-5 g-ml-10 g-py-5 g-px-12" style="background: <?= $job_type->{$item->type}->color ?>20 !important; border-color: <?= $job_type->{$item->type}->color ?>; color:<?= $job_type->{$item->type}->color ?>"><?= $job_type->{$item->type}->name ?></div>
                  <div class="g-color-black g-font-size-<?= $this->agent->is_mobile() ? '18' : '22' ?> g-font-weight-900 text-uppercase g-mb-5"><?= $item->title ?></div>
                  <div class="g-font-size-<?= $this->agent->is_mobile() ? '12' : '16' ?> text-uppercase g-mb-20"><?= $job_category->{$item->category}->name ?></div>
                  <div class="w4c-color-blue g-font-size-<?= $this->agent->is_mobile() ? '12' : '16' ?> text-uppercase g-pb-30 row no-gutters">
                    <div class="col-auto">
                      <i class="icon-location-pin mr-2"></i>
                    </div>
                    <div class="col job-location">
                      <?php foreach ($item->location as $loc1 => $location) : ?>
                        <?= $loc1>0 ? ', '.$location : $location ?>
                      <?php endforeach; ?>
                    </div>
                  </div>
                  <div class="g-pos-abs" style="right:0px;bottom:30px;<?= $this->agent->is_mobile() ? 'bottom:20px;right:25px' : 'bottom:30px;right:30px' ?>">
                    <a href="<?= site_url('career/job/' . $itemi) ?>" class="w4c-color-blue g-font-size-<?= $this->agent->is_mobile() ? '14' : '18' ?> text-uppercase"><?= $copy->SeeDetail ?></a>
                  </div>
              </div>
            </div>
        <?php $i++;
          endif;
        endforeach; ?>
      </div>
      <?php if ($this->agent->is_mobile()) : ?>
        <div class="text-center g-mt-50 g-mb-80">
          <a class="btn btn-info btn-block g-rounded-50 g-py-10 g-px-80 g-font-size-14 text-uppercase" href="<?= site_url('career/job') ?>"><?= $copy->SeeMore ?></a>
        </div>
      <?php endif; ?>

    </div>
  </div>
</section>
<!-- End Related Job -->