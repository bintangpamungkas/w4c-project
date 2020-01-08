<div class="container">
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="form-group g-mb-20 text-center" style="padding: 15px 8px">
				<h3 class=""><?= get_lang('join-the-program') ?></h3>
				<h2 class="text-uppercase"><?= $service->service_name ?></h2>
				<br>
				<br>
				<script>
            $(window).ready(function () {
                $('#gform').css('width', window.innerWidth-window.innerWidth*2*(10/100));
            })
				</script>
				<iframe class="g-bg-gray-light-v4" id="<?= $this->agent->is_mobile() ? 'gform' : '' ?>" style="height: <?= $this->agent->is_mobile() ? '1100px' : '1200px' ?>;width: 100%;border: none" src="<?=$service->service_proposal_url?>?embedded=true">Memuat...</iframe>
			</div>
		</div>
	</div>
</div>
