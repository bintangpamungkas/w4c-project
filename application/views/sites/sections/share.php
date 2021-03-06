<section class="g-bg-white g-pa-30">
	<div class="container">
		<div class="row">
			<div class="col-md-6 <?= $this->agent->is_mobile() ? 'text-center' : '' ?> g-color-info">
				<div class="h3 g-font-weight-600 text-uppercase" style="margin-bottom: 0;padding-top: 20px">
					<?= get_lang('spread-the-good-news') ?>
				</div>
				<div class="g-color-black-opacity-0_8">
					<?= get_lang('share-on-your-social-media-create-impact-for-you') ?>
				</div>
			</div>
			<div class="col-md-6">
				<div class="<?= $this->agent->is_mobile() ? 'text-center' : 'text-right' ?> pt-4 row no-gutters justify-content-end">
					<?php
					foreach (share_social_media() as $social):
						if (!empty($social['share_url'])):
						?>
						<div class="col<?= $this->agent->is_mobile() ? '' : '-auto' ?>">
							<a title="Share on <?= $social['social_name'] ?>" target="_blank" class="<?= $social['social_color'] ?> u-icon-v2 g-rounded-50x g-mb-15 <?=$this->agent->is_mobile() ? 'g-mx-3' : 'g-mx-10'?>" href="<?= $social['share_url'] ?>" <?=$this->agent->is_mobile() ? 'style="width: 3rem;height: 3rem"' : ''?>>
								<i class="<?= $social['social_icon'] ?> <?= $this->agent->is_mobile() ? 'g-font-size-16' : '' ?>"></i>
							</a>
						</div>
					<?php
					endif;
					endforeach;
					?>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End About -->
