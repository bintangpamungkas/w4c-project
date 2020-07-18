<style>
ul.list-blue {
  list-style: none;
}

ul.list-blue li::before {
  content: "";
  font-weight: 900;
  display: inline-block;
  width: 0.7em;
  height: 0.7em;
  margin-right: 2.2em;
  margin-left: -2.9em;
  background: #17A2B8;
  border-radius: 10px;
}
</style>
<!-- Search Bar -->
<section class="g-white g-bg-white u-shadow-v20 g-pt-80">
  <div class="container">
    <!-- <form action=""> -->
    <div class="text-right g-pt-<?= $this->agent->is_mobile() ? '10' : '50' ?>">
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
    <div class="row justify-align-center g-pt-50">
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
          <input id="inputPosition" class="form-control g-pa-12" type="text" placeholder="<?= $copy->Position ?>">
        </div>
      </div>
      <div class="col g-px-8">
        <div class="form-group g-ma-0">
          <input id="inputLocation" class="form-control g-pa-12" type="text" placeholder="<?= $copy->Location ?>">
        </div>
      </div>
      <div class="col g-px-8">
        <div class="form-group g-ma-0">
          <input id="inputType" class="form-control g-pa-12" type="text" placeholder="<?= $copy->Type ?>">
        </div>
      </div>
      <div class="col g-px-8">
        <button id="search" onclick="search()" class="btn btn-info btn-block g-pa-12 g-rounded-50 g-brd-2"><?= strtoupper($copy->Search) ?></button>
        <input class="d-none" id="inputCategory" class="form-control g-pa-12" type="text">
      </div>
      <div class="col g-px-8">
        <button class="btn btn-outline-info btn-block g-pa-12 g-rounded-50 g-brd-2"><?= strtoupper($copy->ViewJobList) ?></button>
      </div>
      <?php endif; ?>
    </div>
    <!-- </form> -->
  </div>
</section>
<!-- End Search Bar -->

<!-- Detail Section -->
<section class="g-white g-bg-white u-shadow-v20 g-pt-20">
  <div class="container">
    <div class="row">
      <div class="col">
        <div class="job-title g-color-black g-font-size-<?= $this->agent->is_mobile() ? '22' : '36' ?> g-font-weight-700 g-line-height-1_2 text-uppercase  g-mb-13"><?= $job->title ?></div>
        <div class="row g-mb-45">
          <div class="col-auto align-self-center">
            <div class="job-category g-font-size-16 text-uppercase"><?= $job_category->{$job->category}->name ?></div>
          </div>
          <div class="col-auto align-self-center">
            <div class="g-color-w4c-blue-v2 g-font-size-16 text-uppercase"><i class="icon-location-pin mr-2"></i><span class="job-location"><?= $job->location ?></span></div>
          </div>
          <div class="col-auto align-self-center">
            <div class="btn btn-outline-info g-font-size-12 float-right g-rounded-50 text-uppercase"
              style="background: <?= $job_type->{$job->type}->color ?>20 !important; border-color: <?= $job_type->{$job->type}->color ?>; color:<?= $job_type->{$job->type}->color ?>">
              <span class="job-type"><?= $job_type->{$job->type}->name ?></span></div>
          </div>
        </div>
        <?php if($this->agent->is_mobile()):?>
        <div id="#accordion-11" class="u-accordion u-accordion-color-primary" role="tablist" aria-multiselectable="true">
          <div class="row justify-content-center">
            <div class="col-lg-8 col-xs-12">
              <!-- Description Card -->
              <div class="card g-brd-none rounded g-mb-20" style="box-shadow: 0px 2px 20px rgba(0, 0, 0, 0.08);">
                <div id="accordion-11-heading-desc" class="g-pa-0" role="tab">
                  <h5 class="mb-0">
                    <a class="collapsed d-flex justify-content-between g-color-black g-text-underline--none--hover rounded g-px-30 g-py-20 g-font-size-18 g-font-weight-600" href="#accordion-11-body-desc" aria-expanded="true"
                      aria-controls="accordion-11-body-desc" data-toggle="collapse" data-parent="#accordion-11">
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
                      <?php foreach ($job->description as $index=>$desc): ?>
                      <li class="g-mb-10"><?= $desc ?></li>
                      <?php endforeach; ?>
                    </ul>
                  </div>
                </div>
              </div>
              <!-- End Description Card -->

              <!-- Requirement Card -->
              <div class="card g-brd-none rounded g-mb-20" style="box-shadow: 0px 2px 20px rgba(0, 0, 0, 0.08);">
                <div id="accordion-11-heading-req" class="g-pa-0" role="tab">
                  <h5 class="mb-0">
                    <a class="collapsed d-flex justify-content-between g-color-black g-text-underline--none--hover rounded g-px-30 g-py-20  g-font-size-18 g-font-weight-600" href="#accordion-11-body-req" aria-expanded="true"
                      aria-controls="accordion-11-body-req" data-toggle="collapse" data-parent="#accordion-11">
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
                      <?php foreach ($job->requirement as $index=>$rec): ?>
                      <li class="g-mb-10"><?= $rec ?></li>
                      <?php endforeach; ?>
                    </ul>
                  </div>
                </div>
              </div>
              <!-- End Requirement Card -->
            </div>
          </div>
        </div>

				<?php else: ?>
        <div class="g-py-15">
          <div class="g-font-size-22 g-font-weight-600 text-uppercase g-mb-10"><?= $copy->JobDescription ?></div>
          <ul class="list-blue">
            <?php foreach ($job->description as $index=>$desc): ?>
            <li class="g-mb-10"><?= $desc ?></li>
            <?php endforeach; ?>
          </ul>
        </div>
        <div class="g-py-15">
          <div class="g-font-size-22 g-font-weight-600 text-uppercase g-mb-10">
            <?= $copy->Requirement ?>
          </div>
          <ul class="list-blue">
            <?php foreach ($job->requirement as $index=>$rec): ?>
            <li class="g-mb-10"><?= $rec ?></li>
            <?php endforeach; ?>
          </ul>
        </div>
        <?php endif; ?>
      </div>

      <!-- End Detail Section -->
      <!-- Share Section -->
      <div class="col-md-auto">
				<?php if($this->agent->is_mobile()):?>
					<a class="btn btn-info btn-block g-font-size-18 g-font-weight-600 g-py-12 g-my-35 g-rounded-50 text-uppercase" href="http://w4c.id/formofficerw4c"><?= $copy->ApplyNow ?></a>

				<?php else: ?>
        <div class="" style="border:1px solid #C4C4C4">
          <img src="<?= get_image(DIR_BG.'career/'.$job_category->{$job->category}->image) ?>" alt="" style="height:273px; width:393px;object-fit:cover">
          <div class="g-px-20 g-py-30">
            <a class="btn btn-info btn-block g-font-size-18 g-font-weight-600 g-py-12 g-mb-35 g-rounded-50 text-uppercase" href="http://w4c.id/formofficerw4c"><?= $copy->ApplyNow ?></a>
            <div class="g-color-black-opacity-0_7 g-font-size-18 text-uppercase g-mb-20"><?= $copy->ShareThisJob ?></div>
            <table border="0" width="100%">
              <tr class="text-center">
                <td>
                  <a class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover" href="https://api.whatsapp.com/send?text=<?= site_url('career/' . key($job)) ?>" target="_blank" style="width: 55px;height: 55px;">
                    <i class="fa fa-whatsapp"></i>
                  </a>
                </td>
                <td>
                  <a class="u-icon-v3 popup g-social-icon g-rounded-50x g-color-white--hover" href="https://www.facebook.com/sharer/sharer.php?u=<?= site_url('career/' . key($job)) ?>&display=popup&ref=plugin" style="width: 55px;height: 55px;">
                    <i class="fa fa-facebook"></i>
                  </a>
                </td>

                <td>
                  <a class="u-icon-v3 popup g-social-icon g-rounded-50x g-color-white--hover" href="http://twitter.com/share?text=<?= $job->title ?>&url=<?= site_url('career/' . key($job)) ?>&via=<?= APP_NAME ?>" style="width: 55px;height: 55px;">
                    <i class="fa fa-twitter"></i>
                  </a>
                </td>
                <td>
                  <a class="u-icon-v3 popup g-social-icon g-rounded-50x g-color-white--hover" href="https://www.linkedin.com/shareArticle?mini=true&url=<?= site_url('career/' . key($job)) ?>&source=<?= APP_NAME ?>" style="width: 55px;height: 55px;">
                    <i class="fa fa-linkedin"></i>
                  </a>
                </td>
                <td>
                  <a id="copyLink" class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover g-text-rotate" href="<?= site_url('career/' . key($job)) ?>" data-toggle="tooltip" data-placement="top" title="Copy Link"
                    style="width: 55px;height: 55px;">
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
    </div>
  </div>
</section>
<!-- End Detail Section -->

<!-- Related Job -->
<section class="g-bg-white <?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-py-90' ?>">
	<div class="container">
		<div class="g-mb-50">
			<?php if(!$this->agent->is_mobile()):?>
				<a class="btn btn-info float-right g-rounded-50 g-py-10 g-px-80 g-font-size-18 text-uppercase" href="<?= site_url('career/job') ?>"><?= $copy->SeeMore ?></a>
			<?php endif; ?>
			<div class="g-font-asap g-color-black text-uppercase g-font-weight-600 g-font-size-24 g-mb-10 <?= $this->agent->is_mobile() ? 'text-center' : ''?>"><?= $copy->RelatedJob ?></div>
			<hr class="g-width-120 g-mt-20 g-mb-40 <?= $this->agent->is_mobile() ? '' : 'g-ml-0'?> g-brd-2 g-brd-blue">
		</div>
		<div class="container">
			<div class="row justify-content-center">
					<?php 
					if($this->agent->is_mobile()){ $show=2; }else{ $show=5; }
					$i=1;
					foreach ($jobs as $index=>$item): 
						if($i <= $show && $item->category == $job->category):?> 
						<div class="col-md-4 col-12 <?= $this->agent->is_mobile() ? 'g-px-10 g-py-5' : 'g-pa-5'?>">
							<div class="g-bg-white <?= $this->agent->is_mobile() ? 'g-px-25 g-py-20' : 'g-pa-30'?>" style="box-shadow:1px 6px 20px 2px rgba(0, 0, 0, 0.1)">
								<div style="position:relative;">
									<div class="btn btn-outl ine-info g-font-size-12 float-right g-rounded-50 text-uppercase g-mt-5 g-ml-10 g-py-5 g-px-12" style="background: <?= $job_type->{$item->type}->color ?>20 !important; border-color: <?= $job_type->{$item->type}->color ?>; color:<?= $job_type->{$item->type}->color?>"><?= $job_type->{$item->type}->name ?></div>
									<div class="g-color-black g-font-size-22 g-font-weight-900 text-uppercase"><?= $item->title ?></div>
									<div class="g-font-size-16 text-uppercase g-mb-20"><?= $job_category->{$item->category}->name ?></div>
									<div class="g-color-w4c-blue-v2 g-font-size-16 text-uppercase"><i class="icon-location-pin mr-2"></i><?= $item->location ?></div>
									<div class="g-mt-30 text-right">
										<a href="<?= site_url('career/job/'.$index) ?>" class="g-color-w4c-blue-v2 g-font-size-<?= $this->agent->is_mobile() ? '20' :'24'?> g-font-weight-900 text-uppercase"><?= $copy->SeeDetail ?></a>
									</div>
								</div>
							</div>
						</div>					
						<?php $i++; 
						endif;
					endforeach; ?>
			</div>
			<?php if($this->agent->is_mobile()):?>	
				<div class="text-center g-mt-50 g-mb-80">
					<a class="btn btn-info btn-block g-rounded-50 g-py-10 g-px-80 g-font-size-14 text-uppercase" href="<?= site_url('career/job') ?>"><?=$copy->SeeMore ?></a>			
				</div>
			<?php endif; ?>

		</div>
	</div>
</section>
<!-- End Related Job -->