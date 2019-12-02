 <div class="g-bg-secondary">
	<div class="container g-bg-white u-shadow-v20 <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-10' : 'g-pa-40' ?>">
		<div class="row">
			<div class="col-md-3 col-xs-12 col-md-4 col-xs-12 g-font-weight-500 g-line-height-1 <?=$this->agent->is_mobile() ? 'g-font-size-25 text-center col-pr-30 ' : 'g-font-size-40 '?>">
				<?=lang('our_achievement')?>
				<?= $this->agent->is_mobile() ? '<hr class="g-width-30 g-my-5 g-brd-2 g-brd-blue g-mb-20">' : ''?>
			</div>
			<div class="col-md-8 col-xs-12 row no-gutters">
			<?php foreach ($achievements as $achievement): ?>
				<div class="col-md col-xs-12 <?=$this->agent->is_mobile() ? 'text-center' : 'text-right' ?>">
					<div class="g-font-weight-700 g-font-size-40 g-color-w4c-blue-v1"><?=$achievement->achievement_count?></div>
					<div class="g-font-15 <?=$this->agent->is_mobile() ? 'g-mb-20' : ''?>"><?=$achievement->achievement_name?></div>
				</div>
			<?php endforeach; ?>
			</div>
		</div>
	</div>
</div>