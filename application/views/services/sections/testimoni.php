<section class="g-bg-secondary">
	<div id="<?=$section_slug?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
		<div class=" <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'container g-py-70' ?>">
			<div class="text-center g-mb-50">
				<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-20' : '' ?>"><?=$section_slug ?></h2>
				<hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
			</div>
			<div class="row mx-auto text-center">
                <div class="col-md-12">
					<!-- 1 for rwm and else for zwtl -->
                    <iframe width="<?= $this->agent->is_mobile() ? '315' : '899' ?>" height="<?= $this->agent->is_mobile() ? '200' : '519' ?>" src="<?= $service->service_id == 1 ? 'https://www.youtube.com/embed/oRD576oYol8' : 'https://www.youtube.com/embed/_4DZa0a106c' ?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
            </div>
		</div>
	</div>
</section>