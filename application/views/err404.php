<section <?= $this->agent->is_mobile() ? '' : 'style="height: 100vw' ?>">
	<div class="text-center ">
		<div class="g-py-100">
			<img class="" src="<?= SITE_URL . DIR_IMG.'error/404 2.png' ?>" style="<?= $this->agent->is_mobile() ? 'max-width: 203px;' : 'max-width: 364px;' ?>">
			<div class="">
				<h1 class=" g-font-weight-700 <?= $this->agent->is_mobile() ? 'g-font-size-20 g-mb-10 g-mt-minus-10' : 'g-font-size-36 g-mb-20 g-mt-minus-30' ?> "> Oops !</h1>
				<div class="g-color-black-opacity-0_5 <?= $this->agent->is_mobile() ? 'g-font-size-12 g-mb-25' : 'g-font-size-15 g-mb-50' ?>">Halaman yang anda tuju tidak dapat diakses.</div>
			</div>
			<a class="btn btn-info g-color-white g-brd-2 text-uppercase g-rounded-50 g-ma-10 <?= $this->agent->is_mobile() ? 'g-font-size-12 g-px-20 g-py-5' : 'g-font-size-15 g-px-25 g-py-7' ?>" href="#" onclick="window.history.back()"><?= get_lang('back_to_previous_page') ?></a>
		</div>
	</div>
</section>