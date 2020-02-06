<section class="g-bg-gray-light-v5" style="position: relative; <?= $this->agent->is_mobile() ? 'min-height: '.((count($achievements)*90)+80).'px;' : 'min-height: 100px;' ?>">
	<div id="<?= $section_slug ?>>" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
	<div style="width:100%; <?= $this->agent->is_mobile() ? 'position: absolute; top: -50px;' : 'position: absolute; top: -70px;' ?>">
		<div class="container">
			<div class=" g-bg-white u-shadow-v20 <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-pa-40' ?>">
				<div class="row align-items-end">
					<div class="col-md-3 col-xs-12 col-md-4 col-xs-12 g-color-black g-font-weight-500 g-line-height-1_2 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-25 text-center' : 'g-font-size-35 g-pr-50 ' ?>">
						<?= $section_name ?>
						<?= $this->agent->is_mobile() ? '<hr class="g-width-30 g-my-5 g-brd-2 g-brd-blue g-mb-20">' : '' ?>
					</div>
					<div class="col-md-8 col-xs-12 row no-gutters justify-content-around">
						<?php foreach ($achievements as $achievement): ?>
							<div class="col-md-auto col-xs-12 g-pb-10 text-center">
								<div class="<?= is_numeric($achievement->achievement_count) ? 'js-counter' : ''?> g-font-weight-700 g-font-size-40 g-color-w4c-blue-v1 g-line-height-1" data-comma-separated="true"><?= is_numeric($achievement->achievement_count) ?(int)$achievement->achievement_count : $achievement->achievement_count?></div>
								<div class="g-font-20 <?= $this->agent->is_mobile() ? 'g-mb-20' : '' ?>"><?= $achievement->achievement_name ?></div>
							</div>
						<?php endforeach; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- JS Plugins Init. -->
<script>
	$(document).on('ready', function () {
		// initialization of counters
		var counters = $.HSCore.components.HSCounter.init('[class*="js-counter"]');
	});
</script>

