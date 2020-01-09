<div class="container">
	<div class="row justify-content-center g-mt-<?= $this->agent->is_mobile() ? '100' : '150' ?>">
		<div class="col-md-8">
			<div class="form-group g-mb-20 text-center">
				<small class="form-text text-muted g-font-size-default g-mt-10"><?= lang('brand_join_subtitle') ?></small>
				<small class="form-text text-muted g-font-size-default g-mt-10"><?= lang('brand_join_subtitle2') ?></small>
				<br>
				<br>
				<script>
            $(window).ready(function () {
                // $('#gform').css('width', window.innerWidth-window.innerWidth*2*(10/100));
            })
				</script>
				<iframe class="g-bg-gray-light-v4" id="<?= $this->agent->is_mobile() ? 'gform' : '' ?>" style="height: <?= $this->agent->is_mobile() ? '1100px' : '1200px' ?>;width: 100%; border: none" src="https://docs.google.com/forms/d/e/1FAIpQLSdRpCd3S-0LXdCZkse5WIHhIStiSHrvTWF34qcertJZBCyoYQ/viewform?embedded=true">Memuat...</iframe>
			</div>
			<div>
			</div>
		</div>
	</div>
</div>
