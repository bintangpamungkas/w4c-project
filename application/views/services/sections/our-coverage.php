<?php if (!empty($service->service_map_url)) : ?>
	<!-- Promo Block -->
	<div id="<?= $section_slug ?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
	<section class="g-bg-secondary  <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-pt-70' ?>">
		<div class="text-center mb-2">
			<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-25' : '' ?>"><?= $section_name ?></h2>
			<hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
		</div>
		<div>
			<div id="map_overlay" onclick="$('#map').css('pointer-events','auto')" style="background:transparent;position:relative;width: 100%;height: 600px; top:600px;margin-top: -600px;"></div>
			<iframe id="map" src="<?= $service->service_map_url ?>" style="width: 100%; height: 600px; position: relative; overflow: hidden;margin-bottom: -8px;pointer-events: none;"></iframe>
		</div>
		<div class="container g-pt-20 g-pb-30 <?= $this->agent->is_mobile() ? 'g-font-size-12' : '' ?>">
			<?php if ($service_id == 'digital-epr') : ?>
				<div class="row justify-content-center">
					<div class="col-md-auto">
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #17a2b840; border: 2px solid #17a2b840; margin: <?= $this->agent->is_mobile() ? '3px 16px 0px 5px' : '0 16px -5px 5px' ?>"></span>
							</div>
							<div class="col">
								<?= get_lang('our-coverage') . ' ' . get_lang('digital-epr') ?>
							</div>
						</div>
					</div>
				</div>
			<?php elseif ($service_id == '3r-school-program') : ?>
				<div class="row justify-content-center">
					<div class="col-md-auto">
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #17a2b840; border: 2px solid #17a2b840; margin: <?= $this->agent->is_mobile() ? '3px 16px 0px 5px' : '0 16px -5px 5px' ?>"></span>
							</div>
							<div class="col">
								<?= get_lang('our-coverage') . ' ' . get_lang('3r-school-program') ?>
							</div>
						</div>
					</div>
					<div class="col-md-auto">
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-green.png" alt="green pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('track-record') . ' ' . get_lang('3r-school-program') ?>
							</div>
						</div>
					</div>
				</div>
			<?php elseif ($service_id == 'community-based-implementation') : ?>
				<div class="row justify-content-center">
					<div class="col-md-auto">
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #17a2b840; border: 2px solid #17a2b840; margin: <?= $this->agent->is_mobile() ? '3px 16px 0px 5px' : '0 16px -5px 5px' ?>"></span>
							</div>
							<div class="col">
								<?= get_lang('our-coverage') . ' ' . get_lang('community-based-implementation') ?>
							</div>
						</div>
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-green.png" alt="green pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('track-record') . ' ' . get_lang('community-assistance-in-institutions') ?>
							</div>
						</div>
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-purple.png" alt="purple pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('track-record') . ' ' . get_lang('community-assistance-in-municipalities') ?>
							</div>
						</div>

					</div>
					<div class="col-md-auto">
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-orange.png" alt="orange pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('track-record') . ' ' . get_lang('community-assistance-in-tourism-sites') ?>
							</div>
						</div>
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-red.png" alt="red pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('track-record') . ' ' . get_lang('community-capacity-building') ?>
							</div>
						</div>
					</div>
				</div>
			<?php elseif ($service_id == 'solid-waste-management-research') : ?>
				<div class="row justify-content-center">
					<div class="col-md-auto">
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #17a2b840; border: 2px solid #17a2b840; margin: <?= $this->agent->is_mobile() ? '3px 16px 0px 5px' : '0 16px -5px 5px' ?>"></span>
							</div>
							<div class="col">
								<?= get_lang('our-coverage') . ' SWM Research' ?>
							</div>
						</div>
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-purple.png" alt="purple pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('track-record') . ' ' . get_lang('swm-research-in-institutions') ?>
							</div>
						</div>
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-green.png" alt="green pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('track-record') . ' ' . get_lang('swm-research-in-municipalities') ?>
							</div>
						</div>
					</div>
					<div class="col-md-auto">
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-orange.png" alt="orange pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('track-record') . ' ' . get_lang('marine-debris-study') ?>
							</div>
						</div>
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-brown.png" alt="brown pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('track-record') . ' ' . get_lang('value-chain-analysis') ?>
							</div>
						</div>
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-red.png" alt="red pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('track-record') . ' ' . get_lang('waste-to-energy') ?>
							</div>
						</div>

					</div>
				</div>
			<?php elseif ($service_id == 'akabis-waste-management-academy') : ?>
				<div class="row justify-content-<?= $this->agent->is_mobile() ? 'center' : 'between' ?>">
					<div class="col-md-auto">
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #17a2b840; border: 2px solid #17a2b8bb; margin: <?= $this->agent->is_mobile() ? '3px 16px 0px 5px' : '0 16px -5px 5px' ?>"></span>
							</div>
							<div class="col">
								<?= get_lang('our-coverage') . ' Akabis Class' ?>
							</div>
						</div>
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-dark-blue.png" alt="dark blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('track-record') . ' Class for Public and Class for Institution' ?>
							</div>
						</div>

					</div>
					<div class="col-md-auto ">
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #7ab74e40; border: 2px solid #7ab74ebb;margin: <?= $this->agent->is_mobile() ? '3px 16px 0px 5px' : '0 16px -5px 5px' ?>"></span>
							</div>
							<div class="col">
								<?= get_lang('our-coverage') . ' Akabis Experience' ?>
							</div>
						</div>
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-green.png" alt="green pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('track-record') . ' Experience for Public and Experience for Institution' ?>
							</div>
						</div>

					</div>
				</div>
			<?php elseif ($service_id == 'personal-waste-management') : ?>
				<div class="row justify-content-<?= $this->agent->is_mobile() ? 'center' : 'between' ?>">
					<div class="col-md-auto">
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #F57C0040; border: 2px solid #F57C00bb; margin: <?= $this->agent->is_mobile() ? '3px 5px 0px 5px' : '0 5px -5px 5px' ?>"></span>
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #9C27B040; border: 2px solid #9C27B0bb; margin: <?= $this->agent->is_mobile() ? '3px 5px 0px 5px' : '0 5px -5px 5px' ?>"></span>
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #17a2b840; border: 2px solid #17a2b8bb; margin: <?= $this->agent->is_mobile() ? '3px 16px 0px 5px' : '0 16px -5px 5px' ?>"></span>
							</div>
							<div class="col">
								<?= get_lang('our-coverage') . ' Personal Waste Management' ?>
							</div>
						</div>
					</div>
					<div class="col-md-auto ">
						<div class="row align-items-center no-gutters mb-2">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-home-orange.png" alt="home orange pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:0px; margin-bottom:0">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-home-purple.png" alt="home purple pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:0px; margin-bottom:0">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-home-blue.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
							</div>
							<div class="col">
								<?= get_lang('partner') . ' Personal Waste Management' ?>
							</div>
						</div>
					</div>
				</div>
			<?php elseif ($service_id == 'in-store-recycling') : ?>
				<div class="row justify-content-<?= $this->agent->is_mobile() ? 'center' : 'center' ?>">
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Tangerang2.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Tangerang
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Jakarta2.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Jakarta
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Bekasi2.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Bekasi
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Depok2.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Depok
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Bogor2.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Bogor
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Sidoarjo2.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Sidoharjo
					</div>
				</div>
				<?php elseif ($service_id == 'responsible-waste-management') : ?>
				<div class="row justify-content-<?= $this->agent->is_mobile() ? 'center' : 'center' ?>">
				<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Medan.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Medan
					</div>
				<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Tangerang.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Tangerang
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Jakarta.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Jakarta
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Bekasi.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Bekasi
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Depok.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Depok
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Bogor.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Bogor
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Bandung.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Bandung
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Semarang.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Semarang
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Surabaya.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Surabaya
					</div>
					<div class="col-auto g-mb-10">
						<img src="<?= base_url() . DIR_ICON ?>pin/Sidoarjo.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0">
						Sidoharjo
					</div>
				</div>
			<?php else : ?>
				<div class="row justify-content-center">
					<div class="col-md-auto g-mb-10 text-center">
						<div class="row align-items-center">
							<div class="col-auto">
								<img src="<?= base_url() . DIR_ICON ?>pin/google-blue.png" alt="blue pin" style="height:30px; margin-right:10px; margin-bottom:0px">
							</div>
							<div class="col">
								<?= get_lang('our-coverage') . ' ' . $service->service_name ?>
							</div>
						</div>
					</div>
				</div>
			<?php endif; ?>
		</div>
	</section>
	<!-- End Promo Block -->
<?php endif; ?>