<div class="container">
	<div class="row justify-content-center g-mt-<?= $this->agent->is_mobile() ? '100' : '150' ?>">
		<div class="col-md-8">
			<div class="form-group g-mb-20 text-center" style="padding: 15px 8px">
				<br>
				<script>
            $(window).ready(function () {
                // $('#gform').css('width', window.innerWidth-window.innerWidth*2*(10/100));
            })
				</script>
				<?php if(!empty($service->service_proposal_url)):?>
				<iframe class="g-bg-gray-light-v4" id="<?= $this->agent->is_mobile() ? 'gform' : '' ?>" style="height: <?= $this->agent->is_mobile() ? '1100px' : '1200px' ?>;width: 100%;border: none" src="<?=$service->service_proposal_url?>?embedded=true">Memuat...</iframe>
				<?php endif; ?>
			</div>
		</div>
	</div>
</div>
