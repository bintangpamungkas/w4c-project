<section class="g-bg-secondary">
	<div id="our_services" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
	<!--<div style="background:radial-gradient(circle farthest-side at 80% 60%, rgba(90,219,127,0.67), rgba(22,127,148,0.92))">-->
	<div class="tab-service-container" style="">
		<div class="container">
			<div class="row g-ma-0">
				<?php if ($this->agent->is_mobile()): ?>
					<?php foreach ($service_targets as $target): ?>
						<div
							class="col-6 g-px-0 g-font-weight-700 <?= $target->service_target_id == 1 ? '' : ' tab-shadow' ?> my_tab <?= $target->service_target_id == 1 ? 'tab-active' : '' ?>"
							onclick="switch_service_tab(this)" data-tab="<?= $target->service_target_slug ?>" data-id="<?= $target->service_target_id ?>">
							<div class="my_tab_line"></div>
							<a class="my_tab_item g-cursor-pointer nav-link my_tab g-py-20 g-font-weight-300 g-font-size-12 g-px-20 text-center text-uppercase">
								<div class=""><?= $target->service_target_name ?></div>
								<img class="my_tab_icon" src="<?= get_image(DIR_ICON . $target->service_target_icon) ?>" alt="" style="max-width: 80px; max-height: 80px;display:inline-block;">
							</a>
						</div>
					<?php endforeach; ?>
				<?php else: ?>
					<?php foreach ($service_targets as $target): ?>
						<div
							class="col-auto g-px-0 g-font-weight-700 <?= $target->service_target_id == 1 ? '' : ' tab-shadow' ?> my_tab <?= $target->service_target_id == 1 ? 'tab-active' : '' ?>"
							onclick="switch_service_tab(this)" data-tab="<?= $target->service_target_slug ?>" data-id="<?= $target->service_target_id ?>">
							<div class="my_tab_line"></div>
							<a
								class="my_tab_item g-cursor-pointer nav-link my_tab  g-py-20 g-font-weight-300 g-font-size-20 g-px-45 text-uppercase">
								<img class="my_tab_icon" src="<?= get_image(DIR_ICON . $target->service_target_icon) ?>" alt="" style="max-width: 35px; max-height: 35px">
								<?= $target->service_target_name ?>
							</a>
						</div>
					<?php endforeach; ?>
				<?php endif; ?>
			</div>
		</div>
	</div>
	<div class="container <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-25' : 'g-py-70' ?>">
		<div class="<?= $this->agent->is_mobile() ? 'g-mb-30' : 'g-mb-20' ?>">
			<h2 class="g-font-asap g-font-color-w4c-1 mb-2" color><?= get_lang('available-services-for-your-location') ?>:</h2>
			<div class="row">
				<div class="col-md-6">
					<form id="search-form" action="<?= site_url('service') ?>" method="get">
						<div class="autocomplete">
							<div class="input-group pull-right">
								<div class="input-group-prepend">
									<span class="input-group-text rounded-0 g-bg-white g-color-gray-light-v1 g-pa-10 border-right-0" style="border:1px solid #0B90B9;"><i class="fa fa-map-marker"></i></span>
								</div>
								<input id="search-input"
								       class="form-control form-control-md border-left-0 rounded-0 g-pa-10 pl-0 border-right-0 g-box-shadow-none "
								       type="text"
								       name="city"
								       value="<?= empty($input_city) ? '' : $input_city ?>"
								       style="border:1px solid #0B90B9; border-radius:0"
								       placeholder="<?= get_lang('enter-the-name-of-your-city') ?>"
								       autocomplete="off">
								<input type="hidden" name="target" value="<?= empty($service_target) ? 'for-company' : $service_target ?>">
								<div id="search-clear" class="input-group-append" style="display: none">
									<span class="input-group-text rounded-0 g-bg-white g-color-gray-light-v1 g-pa-10 border-left-0" style="border:1px solid #0B90B9;"><i class="fa fa-times"></i></span>
								</div>
								<div class="input-group-btn">
									<button id="search-button" class="btn btn-info g-py-10 g-px-30 g-letter-spacing-2 border-left-0" type="button"
									        style="border:1px solid #0B90B9;border-radius:0px">
										<?= $this->agent->is_mobile() ? '<i class="icon icon-magnifier  g-font-size-20"></i>' : strtoupper(get_lang('search')) ?>
									</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div id="service_list"></div>

</section>

<script>

	$(document).ready(function () {
		list_service(1);
	});

	function switch_service_tab(that) {
		var tab_target = '#tab-' + $(that).data('id');
		console.log(tab_target);
		$('.my_tab').removeClass('tab-active');
		$(that).addClass('tab-active');
		$('input[name=target]').val($(that).data('tab'));

		list_service($(that).data('id'));
	}

	var city_list = [
		<?php foreach ($coverage_cities as $city) {
		echo '"' . $city->city_name . ', ' . $city->province_name . '",';
	}
		?>
	];
	$(function () {
		$("#search-input").autocomplete({
			source: city_list,
			select: function (event, ui) {
				$('#search-button').attr('disabled', false);
			}
		});
	});

	$('#search-input').keydown(function (e) {
		if (e.keyCode == 13) {
			e.preventDefault();
			check_autocomplete_input($(this).val(), city_list);
		}
		$('#search-button').attr('disabled', true);
	});

	$('#search-input').keyup(function (e) {
		if ($(this).val().length > 0) {
			$('#search-clear').show();
		} else {
			$('#search-clear').hide();
		}
	});

	$('#search-button').click(function () {
		let input_city = $('#search-input').val();
		check_autocomplete_input(input_city, city_list);
	});

	$('#search-clear').click(function () {
		$('#search-input').val('');
		$(this).hide();
	});

	function check_autocomplete_input(input_city, list) {
		let testCase, count_similarity = 0, i;
		if (input_city.length !== 0) {
			for (i = 0; i < list.length; i++) {
				testCase = list[i];
				if (input_city === testCase) {
					count_similarity++;
					$('#search-button').attr('disabled', false);
				}
			}
		}
		if (count_similarity > 0) {
			$('#search-input').attr('readonly', true);
			$('#search-button').attr('disabled', true);
			$('#search-form').submit();
		}
	}

	$(window).ready(function () {
		$('.my_tab_content').addClass('d-none');
		$('.my_tab_content').first().removeClass('d-none');
	});

	function list_service(service_target_id) {
		var dataSend = {
			target: service_target_id,
		};
		console.log(dataSend);
		$.ajax({
			type: "POST",
			url: "<?php echo site_url()?>site/service_list",
			data: dataSend,
			datatype: 'json',
			success: function (responses) {
				$('#service_list').html(responses);
			}, error: function (error) {
				console.log(error)
			}
		});
	}
</script>