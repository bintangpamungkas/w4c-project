<section class="g-bg-secondary <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-pt-140 g-pb-100' ?>">

	<div id="<?=$section_slug?>" style="height: 10px;position: absolute;width: 80%;margin-top: -200px"></div>

	<div class="container">
		<header class="text-center g-width-80x--md mx-auto g-mb-70">
			<div class="u-heading-v6-2 text-center text-uppercase g-mb-20">
				<h2 class="h2 g-color-gray-dark-v2 g-font-weight-600 text-uppercase"><?=$section_name?></h2>
				<hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
			</div>
		</header>

		<!-- Icon Blocks -->
		<div class="row justify-content-center">
			<?php
			$number = 1;
			foreach ($recomendations as $rec):
				?>
				<div class="col-lg-4 col-xs-12 g-mb-20">
					<!-- Icon Blocks -->
					<div class="u-shadow-v21 g-bg-white rounded g-py-15 g-px-30 u-shadow-v20">
						<div class="media">
							<div class="d-flex mr-4">
								<span class="g-font-size-26" style="color:<?= $rec->recomendation_color ?>">
									<i class="<?= $rec->recomendation_icon ?>"></i>
                </span>
							</div>
							<div class="media-body">
								<h3 class="h5 g-color-black g-mt-5 text-capitalize"><?= $rec->recomendation_name ?></h3>
								<div class="g-width-30 g-brd-bottom g-brd-primary g-my-15 d-none"></div>
							</div>
						</div>
					</div>
					<!-- End Icon Blocks -->
				</div>
			<?php endforeach; ?>

		</div>
</section>
