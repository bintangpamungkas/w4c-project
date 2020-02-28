<div class="row pt-3 g-ml-minus-3 g-mr-minus-3">
	<?php
		$nav = services_list_helper();
	?>
	<?php
		foreach ($nav as $nav):
			?>
			<div class="col-6 mb-3 g-px-6">

				<div onclick="window.location='<?= $nav['url'] ?>'" class="u-block-hover g-rounded-6 g-brd-around g-brd-gray-light-v4 rounded g-transition-0_3 g-px-20 g-py-20"
				     style="-webkit-box-shadow: 0 5px 25px 1px rgba(0,0,0,0.1);box-shadow: 0 5px 25px 1px rgba(0,0,0,0.1);">
					<div>
						<div class="mr-4" style="min-height: 50px">
							<i class="<?= $nav['icon'] ?> g-font-size-30 g-color-<?= $nav['color'] ?>"></i>
						</div>
						<div>
							<h6 class="h6 g-font-weight-600 mb-2 g-color-black">
								<small><?= $nav['caption'] ?></small>
							</h6>
						</div>
					</div>
				</div>
			</div>
		<?php
		endforeach;
	?>
</div>
