<!-- start quote -->
<style>
.owl-controls .owl-dots .owl-dot.active span {
	background-color: #17A2B8!important; 
}
</style>
<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
	<div id="quote" style="height: 0px;position: absolute;width: 80%;margin-top: -100px"></div>
	<div class="divimage dzsparallaxer--target w-100 " style="height: 130%;background-image: url(<?= get_image(DIR_BG . 'internship/' . $copy->quote->image) ?>);"></div>
	<!-- <div style="background:rgba(248,248,248,0.78)"> -->
		<div class="container g-pt-100 g-pb-50">
			<div class="text-center g-mb-50">
				<h4 style="font-style:italic" class="g-font-asap g-font-weight-300 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= $copy->quote->text ?>
				<div class="row justify-content-center g-mt-30">
					<div class="col-md-5 col-10">
						<div class="row justify-content-center">
								<div class="col-12">
                                    <p style="font-style:italic" class="g-font-asap g-font-weight-300 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= $copy->quote->author ?></p>
							    </div>
						</div>
					</div>
				</div>
			<!-- </div> -->
		</div>
	</div>
</section>
<!-- end quote -->

<style>
.btn-outline-info:hover {
    background-color: transparent!important;
}
</style>
<!-- CTA -->
<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}' style="background-color:white;height:400px">
  <div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= get_image(DIR_IMG . 'bg/internship/cta.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);">
  </div>
  <div style="background:rgba(248,248,248,0.45); height:100%">
    <div class="container <?= $this->agent->is_mobile() ? 'text-center g-py-50' : 'g-py-70' ?>">
      <div class="row justify-content-center text-center">
        <div class="col-mb-12 col-10 g-mb-15 pt-5 align-self-center">
          <div class="g-color-black g-font-size-<?= $this->agent->is_mobile() ? '22  g-mb-30' : '36  g-mb-50' ?>">
            <?= $copy->cta->title ?></div>
        </div>
        <div class="col-md-3 col-10 g-mb-15 align-self-center">
          <a class="btn btn-block btn-info g-color-white g-font-size-<?= $this->agent->is_mobile() ? '14' : '18' ?> g-font-weight-600 g-rounded-50 g-py-15 g-px-50" href="https://docs.google.com/forms/d/e/1FAIpQLSf7_5-mXXwSjUeYTsHmqqojrvaRjureLi3jMQzw-6MOmdbkIA/viewform">
            <?= strtoupper($copy->cta->cta_title) ?>
          </a>
        </div>
        <div class="col-md-3 col-10 g-mb-15 align-self-center">
          <a class="btn btn-block btn-outline-info g-brd-2 g-font-size-<?= $this->agent->is_mobile() ? '14' : '18' ?> g-font-weight-600 g-rounded-50 g-py-15 g-px-50" href ="mailto:recruitment@waste4change.com">
            <?= strtoupper($copy->cta->contact_title) ?>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- End CTA -->