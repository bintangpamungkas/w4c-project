<!-- Internship Program -->
<section class="g-bg-white g-py-80 <?= $this->agent->is_mobile() ? '' : 'g-px-30' ?>" style="margin-top : 100px">
	<?php if ($this->agent->is_mobile()) : ?>
		<div class="g-font-asap g-color-black text-uppercase text-center g-font-weight-600 g-font-size-24 g-mb-10"><?= $copy->internship_program->title ?></div>
		<hr class="g-width-70 g-mt-20 g-mb-40 g-brd-2 w4c-brd-blue">
		<div class="g-bg-white g-pa-15">
			<div class="g-bg-white box-shadow-down g-rounded-10 g-pa-20">
				<div style="height: 200px;background: url(<?= get_image(DIR_BG . 'internship/' . $copy->internship_program->image) ?>);background-size: cover;"></div>
				<div class="g-mt-minus-100 g-pa-20 g-pt-50" style="background: linear-gradient(180deg, rgba(255, 255, 255, 0)  0%, rgba(255, 255, 255, 1) 20%, rgba(255, 255, 255, 1) 100%);">
					<div class="mb-4 g-font-size-18 g-color-black g-font-weight-600 g-line-height-1_5" style="margin-top:70px"><?= $copy->internship_program->subtitle ?></div>
					<hr class="g-width-70 g-my-20 g-ml-0 g-brd-2 w4c-brd-blue">
					<div class="message" style="margin-top: 10px"><?= $copy->internship_program->message ?></div>
				</div>
			</div>
		</div>
	<?php else : ?>
		<div class="container">
			<div class="row justify-content-center my_tab_content">
				<div class="col-md-6">
					<div class="g-font-asap g-color-black text-uppercase g-font-weight-600 g-font-size-35 g-mb-10"><?= $copy->internship_program->title ?></div>
					<hr class="g-width-70 g-mt-20 g-mb-40 g-ml-0 g-brd-2 w4c-brd-blue">
                    <div class="g-font-asap g-color-black text-uppercase g-font-weight-600 g-font-size-15 g-mb-10"><?= $copy->internship_program->subtitle ?></div>
					<!-- <div class="mt-2 mb-4 g-font-size-22 g-color-black g-font-weight-600"><?= $copy->internship_program->subtitle ?></div> -->
					<div class="mt-2 mb-4 "><?= $copy->internship_program->message ?></div>
				</div>
				<div class="col-md-6">
					<img class="g-mt-10" src="<?= get_image(DIR_BG . 'internship/' . $copy->internship_program->image) ?>" alt="<?= $copy->internship_program->title ?>" style="width:100%; object-fit:cover;margin-left: auto; margin-right: auto;">
				</div>
			</div>
		</div>
		</div>

	<?php endif; ?>
</section>
<!-- End Internship Program -->