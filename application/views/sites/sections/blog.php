<section class="g-bg-gray-light-v5 dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden"
         data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
	<div class="divimage dzsparallaxer--target w-100 d-none" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/img36.jpg') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
	<div class="container <?= $this->agent->is_mobile() ? 'g-pt-75 g-pb-30' : 'g-py-70' ?>">
		<div class="text-center g-mb-50">
			<h2 class="g-font-asap g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= strtoupper(get_lang('blog-and-news')) ?></h2>
			<!-- <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue"> -->
			<p class="text-muted d-none"><?= lang('brand_partner_subtitle') ?></p>
		</div>

		<?php
		$blogs = [
			[
				'blog_title' => 'Sustainable Tourism: A Tourism that Does Not Cost the Earth',
				'blog_category' => 'WASTE MANAGEMENT',
				'blog_content' => 'Tourism Effects in Boracay Island, Philippines  Boracay is a small island in Central Philippines located in Aklan province. With its white sandy beaches and blue water,...',
				'blog_author' => 'MIRIAM BAHAGIJO',
				'blog_url' => 'https://waste4change.com/sustainable-tourism-a-tourism-that-does-not-cost-the-earth/',
				'blog_date' => '2020:01:15',
				'blog_image' => 'https://waste4change.com/wp-content/uploads/Boracay_Boat_and_Tourists-870x490-580x390.jpg',
			],
			[
				'blog_title' => 'New Year New Office: Improve Your Workplace to Become Zero-Waste',
				'blog_category' => 'WASTE MANAGEMENT',
				'blog_content' => 'Still in the spirit of entering both new year and decade, what plans do you have in mind or have started doing? Decluttering and cleaning up the...',
				'blog_author' => 'MIRIAM BAHAGIJO',
				'blog_url' => 'https://waste4change.com/new-year-new-office-improve-your-workplace-to-become-zero-waste/',
				'blog_date' => '2020:01:07',
				'blog_image' => 'https://waste4change.com/wp-content/uploads/damir-kopezhanov-nC6CyrVBtkU-unsplash-580x390.jpg',
			],
			[
				'blog_title' => 'Decluttering 101: Why and How',
				'blog_category' => 'WASTE MANAGEMENT',
				'blog_content' => 'Upon entering both new year and new decade, what plans do you have in store? Is decluttering one of them? For those of you who...',
				'blog_author' => 'MIRIAM BAHAGIJO',
				'blog_url' => 'https://waste4change.com/decluttering-101-why-and-how/',
				'blog_date' => '2020:01:03',
				'blog_image' => 'https://waste4change.com/wp-content/uploads/before-after-1-500x390.jpg',
			],
		];
		if ($this->agent->is_mobile()): //MOBILE VIEW
		?>
		<div class="clearfix">
			<div id="blog-carousel" class="row owl-theme" style="margin: 0 0 30px 0!important;">
				<?php
				$number = 1;
				foreach ($blogs as $blog) :
					?>
					<article class="g-bg-white" style="box-shadow: 0 10px 6px -6px rgba(0, 0, 0, 0.1)">
						<figure class="g-pos-rel">
							<div class="img-fluid w-100 g-min-height-200" style="background: url(<?= $blog['blog_image'] ?>);background-size: cover"></div>
							<figcaption class="text-uppercase text-center g-line-height-1_2 g-color-white g-pos-abs g-top-20 g-px-15 g-py-10 bg-w4c-green-v1">
								<span class="d-block"><?= date('F d, Y', strtotime($blog['blog_date'])) ?></span>
							</figcaption>
						</figure>

						<div class="g-pa-30">
							<div style="min-height: 80px" class="d-none">
								<div class="mb-1">
									<small>
										<span class="g-color-gray-dark-v4">By</span>
										<a class="g-color-info" href="#!"><?= $blog['blog_author'] ?></a>
									</small>
								</div>
								<div class="mb-2">
									<small>
										<span class="g-color-gray-dark-v4">In</span>
										<a class="g-color-info" href="#!"><?= $blog['blog_category'] ?></a>
									</small>
								</div>
							</div>
							<h3 class="h5 g-mb-15" style="min-height: 80px">
								<a class="u-link-v5 g-color-gray-dark-v2 g-color-info--hover g-font-weight-700" href="<?= $blog['blog_url'] ?>" style="word-wrap: break-word"><?= $blog['blog_title'] ?></a>
							</h3>
							<hr class="g-brd-gray-light-v4 g-mt-40">
							<a title="Share Story" class="float-right g-brd-0 g-color-white--hover g-bg-linkedin--hover u-icon-v2 g-rounded-50x g-bg-info"
							   style=" height: 30px; width: 30px; background-color:#117a8b" onclick="blogShare(this)" data-title="<?= $blog['blog_title'] ?>" data-content="<?= $blog['blog_content'] ?>"
							   data-url="<?= $blog['blog_url'] ?>">
								<i class="fa fa-share-alt g-color-white g-font-size-10"></i>
							</a>
							<a target="_blank" href="<?= $blog['blog_url'] ?>" class="g-bg-white g-color-info g-color-blue--hover g-mr-10 g-mb-15 g-font-weight-700 text-uppercase g-text-underline--none--hover"
							   style="color:#117a8b"><?= get_lang('read-more') ?> <i class="fa fa-angle-right g-ml-20 g-font-weight-900"></i> </a>

						</div>
					</article>
				<?php
				endforeach;
				?>
			</div>

			<script>
				$(window).ready(function () {
					var element_id = '#blog-carousel';
					$(element_id).owlCarousel({
						loop: true,
						margin: 30,
						dots: <?= !$this->agent->is_mobile() && count($blogs) < 3 ? 'false' : 'true' ?>,
						nav: true,
						autoplay: true,
						autoplayTimeout: 1500,
						autoplayHoverPause: true,
						responsive: {
							0: {
								items: 1
							},
							600: {
								items: 3
							},
							1000: {
								items: 3
							}
						},
						navText: ['<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-left g-color-gray-light-v1 nav-arrow-left' : 'fa fa-angle-left g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile() ? '2' : '4'?>)"></i>', '<i class="<?=$this->agent->is_mobile() ? 'fa fa-angle-right g-color-gray-light-v1 nav-arrow-right' : 'fa fa-angle-right g-color-w4c-blue-v1' ?>" aria-hidden="true" style="transform: scale(<?=$this->agent->is_mobile() ? '2' : '4'?>)"></i>']
					});

					//$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
					$(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');

					var screen_display = <?= $this->agent->is_mobile() ? "screen.width" : "$(element_id).width()" ?>;
					console.log(screen_display);
					var margin_side = (screen_display - screen_display * (<?= $this->agent->is_mobile() ? '60' : '96' ?>) / 100) / 2;
					console.log('screen : ' + screen_display + 'nav : ' + screen_display * <?= $this->agent->is_mobile() ? '8' : '9' ?>0 / 100 + 'batas : ' + margin_side);
					$(element_id + ' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: ' + ($(element_id).find('.owl-stage').height() + 25) + 'px;width: 68%;right: ' + margin_side + 'px;');
				});

			</script>
		</div>
	</div>

	<?php else: // DESKTOP VIEW  ?>

	<div class="row align-height-list">
		<?php
		foreach ($blogs as $blog):
			?>
			<div class="col-lg-4 g-mb-30">
				<article class="g-bg-white" style="box-shadow: 0 10px 6px -6px rgba(0, 0, 0, 0.1)">
					<figure class="g-pos-rel">
						<div class="img-fluid w-100 g-min-height-200" style="background: url(<?= $blog['blog_image'] ?>);background-size: cover"></div>
						<figcaption class="text-uppercase text-center g-line-height-1_2 g-color-white g-pos-abs g-top-20 g-px-15 g-py-10 bg-w4c-green-v1">
							<span class="d-block"><?= date('F d, Y', strtotime($blog['blog_date'])) ?></span>
						</figcaption>
					</figure>

					<div class="g-pa-30">
						<div style="min-height: 80px" class="d-none">
							<div class="mb-1">
								<small>
									<span class="g-color-gray-dark-v4">By</span>
									<a class="g-color-info" href="#!"><?= $blog['blog_author'] ?></a>
								</small>
							</div>
							<div class="mb-2">
								<small>
									<span class="g-color-gray-dark-v4">In</span>
									<a class="g-color-info" href="#!"><?= $blog['blog_category'] ?></a>
								</small>
							</div>
						</div>
						<div class="align-height-item">
							<h3 class="h5 g-mb-15" style="min-height: 80px">
								<a class="u-link-v5 g-color-gray-dark-v2 g-color-info--hover g-font-weight-700" href="<?= $blog['blog_url'] ?>" style="word-wrap: break-word"><?= $blog['blog_title'] ?></a>
							</h3>
							<div class="g-font-size-13"><?= $blog['blog_content'] ?></div>
						</div>
						<hr class="g-brd-gray-light-v4 g-mt-40">
						<a title="Share Story" class="float-right g-brd-0 g-color-white--hover g-bg-linkedin--hover u-icon-v2 g-rounded-50x g-bg-info" onclick="blogShare(this)"
						   data-title="<?= $blog['blog_title'] ?>" data-content="<?= $blog['blog_content'] ?>" data-url="<?= $blog['blog_url'] ?>" style=" height: 30px; width: 30px; background-color:#117a8b">
							<i class="fa fa-share-alt g-color-white g-font-size-10"></i>
						</a>
						<a target="_blank" href="<?= $blog['blog_url'] ?>" class="g-bg-white g-color-info g-color-blue--hover g-mr-10 g-mb-15 g-font-weight-700 text-uppercase g-text-underline--none--hover"
						   style="">Read More <i class="fa fa-angle-right g-ml-20 g-font-weight-900"></i> </a>
					</div>
				</article>
			</div>
		<?php endforeach; ?>
		<?php endif; //End Dektop view ?>
	</div>
	<div class="text-center g-mb-50 <?= $this->agent->is_mobile() ? 'g-pt-5' : 'g-pt-40' ?>">
		<div class="row justify-content-center">
			<div class="col-md-12 text-muted">
				<p class="<?= $this->agent->is_mobile() ? 'g-font-size-12' : '' ?>">
					<?= get_lang('find-more-content-about-responsible-waste-manageme') ?>
				</p>
				<br>
				<a target="_blank" class="btn btn-outline-info g-brd-2 g-font-size-13 g-font-weight-700 g-rounded-50 g-pl-20 g-pr-15 g-py-9 text-uppercase" href="http://waste4change.com/blog">
					<?= strtoupper(get_lang('more-article')) ?>
				</a>
			</div>
		</div>
	</div>
</section>

<!-- Blog share modal window -->
<div class="modal fade" id="modalBlogShare" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content text-left g-max-width-600 g-bg-white g-overflow-y-auto g-pa-20" style="max-width:600px ">
			<div class="modal-header g-brd-0 text-center">
				<button type="button" class="g-pos-abs g-right-20 g-top-20 <?= $this->agent->is_mobile() ? 'g-font-size-15' : 'g-font-size-20' ?> g close" data-dismiss="modal">
					<i class="hs-icon hs-icon-close"></i>
				</button>
				<div class="<?= $this->agent->is_mobile() ? 'g-font-size-20' : 'g-font-size-25' ?> g-mb-20 "><?= get_lang('pick-media') ?></div>
			</div>
			<div class="text-right row no-gutters justify-content-center">
				<div class="col">
					<a id="modalBlogShareInstagram" title="Share on Instagram" target="_blank"
					   class="g-brd-2 g-color-info g-color-white--hover g-bg-purple--hover u-icon-v2 g-rounded-50x g-mb-15 g-mx-5 <?= $this->agent->is_mobile() ? 'g-width-40 g-height-40' : '' ?>" href="">
						<i class="fa fa-instagram <?= $this->agent->is_mobile() ? 'g-font-size-14' : '' ?>"></i>
					</a>
				</div>
				<div class="col">
					<a id="modalBlogShareFacebook" title="Share on Facebook" target="_blank"
					   class="g-brd-2 g-color-info g-color-white--hover g-bg-facebook--hover u-icon-v2 g-rounded-50x g-mb-15 g-mx-5 <?= $this->agent->is_mobile() ? 'g-width-40 g-height-40' : '' ?>" href="">
						<i class="fa fa-facebook <?= $this->agent->is_mobile() ? 'g-font-size-14' : '' ?>"></i>
					</a>
				</div>
				<div class="col">
					<a id="modalBlogShareTwitter" title="Share on Twitter" target="_blank"
					   class="g-brd-2 g-color-info g-color-white--hover g-bg-twitter--hover u-icon-v2 g-rounded-50x g-mb-15 g-mx-5 <?= $this->agent->is_mobile() ? 'g-width-40 g-height-40' : '' ?>" href="">
						<i class="fa fa-twitter <?= $this->agent->is_mobile() ? 'g-font-size-14' : '' ?>"></i>
					</a>
				</div>
				<div class="col">
					<a id="modalBlogShareLinkedIn" title="Share on LinkedIn" target="_blank"
					   class="g-brd-2 g-color-info g-color-white--hover g-bg-linkedin--hover u-icon-v2 g-rounded-50x g-mb-15 g-mx-5 <?= $this->agent->is_mobile() ? 'g-width-40 g-height-40' : '' ?>" href="">
						<i class="fa fa-linkedin <?= $this->agent->is_mobile() ? 'g-font-size-14' : '' ?>"></i>
					</a>
				</div>
				<div class="col">
					<a id="modalBlogShareWhatsapp" title="Share on Whatsapp" target="_blank"
					   class="g-brd-2 g-color-info g-color-white--hover g-bg-primary--hover u-icon-v2 g-rounded-50x g-mb-15 g-mx-5 <?= $this->agent->is_mobile() ? 'g-width-40 g-height-40' : '' ?>" href="">
						<i class="fa fa-whatsapp <?= $this->agent->is_mobile() ? 'g-font-size-14' : '' ?>"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	$(window).ready(function () {
		var list = $(".align-height-list");

		jQuery.each(list, function (listIndex, listValue) {

			var item = $(this).find(".align-height-item");
			var tempHeights = 0;
			jQuery.each(item, function (itemIndex, itemValue) {
				console.log($(this).height());
				if (tempHeights < $(this).height()) {
					tempHeights = $(this).height();
				}
			});
			item.height(tempHeights);
		});
	});

	function blogShare(that) {
		var title = $(that).data('title');
		var content = $(that).data('content');
		var url = $(that).data('url');
		$('#modalBlogShare').modal('show');
		$('#modalBlogShareInstagram').attr('href', 'https://instagram.com/waste4change');
		$('#modalBlogShareFacebook').attr('href', 'https://facebook.com/sharer/sharer.php?u=' + url);
		$('#modalBlogShareTwitter').attr('href', 'https://twitter.com/intent/tweet/?text=' + title + ' ' + url);
		$('#modalBlogShareLinkedIn').attr('href', 'https://www.linkedin.com/shareArticle?mini=true&amp;url=' + url + '&title=' + title);
		$('#modalBlogShareWhatsapp').attr('href', 'https://wa.me/?text=*' + title + '* ' + url);
	}
</script>
