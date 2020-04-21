<?php if (!empty($coverages)): ?>
	<!-- Promo Block -->
	<div id="<?= $section_slug ?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
	<section class="g-bg-secondary  <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-pt-70' ?>">
		<div class="text-center mb-2">
			<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-25' : '' ?>"><?= $section_name ?></h2>
			<hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
		</div>
		<div class="">
			<div id="map" style="width: 100%; height: 600px; position: relative; overflow: hidden;"></div>
			<!--		<iframe src="https://www.google.com/maps/d/embed?mid=1aSFRCFpHVBExx47pzwfwgMobooOb_a-Y" style="width: 100%;height: 600px"></iframe>-->
		</div>
		<div class="container g-py-20">
			<div id="legend" class="row justify-content-center">
			</div>
		</div>
	</section>
	<!-- End Promo Block -->
	<script>
		<?php

		//		echo 'var areas = [';
		//		foreach ($areas as $area) {
		//			echo '["' . $area->service_coverage_name . '","' . $area->service_coverage_color . '",[' . $area->service_coverage_area . ']],';
		//		}
		//		echo '];';


		//		echo 'var locations = [';
		//		$seluruh_indonesia = false;
		//		foreach ($records as $record) {
		//			if (!empty($record->city_coordinate)) {
		//				$coor = explode(',', $record->city_coordinate);
		//				echo '[{lat:' . $coor[0] . ',lng:' . $coor[1] . '},"' . $record->city_name . '","blue"],';
		//			}
		//			if ($record->city_name == 'Seluruh Kota di Indonesia') {
		//				echo '[{lat:1.5901668,lng:117.8198982},"' . $record->city_name . '","blue"],';
		//				$seluruh_indonesia = true;
		//			}
		//		}
		//		if (!empty($second_records)) {
		//
		//			foreach ($second_records as $record) {
		//				if (!empty($record->city_coordinate)) {
		//					$coor = explode(',', $record->city_coordinate);
		//					echo '[{lat:' . $coor[0] . ',lng:' . $coor[1] . '},"' . $record->city_name . '","green"],';
		//				}
		//			}
		//		}
		//
		//		echo '];';
		//
		//		if ($seluruh_indonesia == true) {
		//			echo 'var seluruh_indonesia=true;';
		//		} else {
		//			echo 'var seluruh_indonesia=false;';
		//		}
		//		?>
		//		if (typeof second_locations !== 'undefined') {
		//			console.log('not empty');
		//		}


		//var icon = {
		//	blue: {
		//		url: '<?//=base_url() . DIR_ICON?>//pin/icon-pin2.png',
		//		labelOrigin: {x: 20, y: -10}
		//
		//	},
		//	green: {
		//		url: '<?//=base_url() . DIR_ICON?>//pin/icon-pin1.png',
		//		labelOrigin: {x: 20, y: -10}
		//
		//	},
		//};
		<?php
		echo 'var areas = [';
		foreach ($coverages as $index => $coverage) {
			if ($index != 0) {
				echo ',';
			}
			echo '[';
			echo '"' . $coverage['name'] . '"';
			echo ',';
			echo '[';
			foreach ($coverage['coverage'] as $index => $area) {
				if ($index != 0) {
					echo ',';
				}

				if (empty($area->province_point)) {
					$province_point = '';
				} else {
					$province_point = explode(',', $area->province_point);
					$province_point = '{lat:' . $province_point[0] . ',lng:' . $province_point[1] . '}';
				}
				if (empty($area->city_point)) {
					$city_point = '';
				} else {
					$city_point = explode(',', $area->city_point);
					$city_point = '{lat:' . $city_point[0] . ',lng:' . $city_point[1] . '}';
				}

				echo '["' . $area->service_coverage_color . '", "' . $area->service_coverage_icon . '", "' . $area->province_name . '", ' . $province_point . ', [' . $area->province_area . '], "' . $area->city_name . '", ' . $city_point . ', "' . $area->city_area . '","'.$area->service_coverage_type.'"]';
			}
			echo ']';
			echo ']';
		}
		echo '];';
		?>

		var markers, polygon, i, color, icon, type;

		console.log(areas);

		function initMap() {
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom: 5.35,
				center: {lat: -2, lng: 117}
			});

			// Add some markers to the map.
			// Note: The code uses the JavaScript Array.prototype.map() method to
			// create an array of markers based on a given "locations" array.
			// The map() method here has nothing to do with the Google Maps API.
			//var markers = locations.map(function (location, i) {
			//	return new google.maps.Marker({
			//		position: location[0],
			//		icon: icon[location[2]],
			//
			//		//icon: {url: '<?////=base_url() . DIR_ICON?>////pin/blue.png'}
			//		title: location[1],
			//		label: {
			//			text: location[1],
			//			color: '#000',
			//			fontSize: '15px'
			//		}
			//		// pixelOffset: new google.maps.Size(100,140)
			//	});
			//});

			jQuery.each(areas, function (i, area) {
				console.log(area);
				if (area !==undefined) {
					console.log(area);
					//markers = area[1].map(function (coverage, i) {
					//		return new google.maps.Marker({
					//			position: coverage[3],
					//			icon: {
					//				url: '<?//=base_url() . DIR_ICON?>//pin/' + coverage[1],
					//				labelOrigin: {x: 20, y: -20}
					//			},
					//			title: coverage[2],
					//			label: {
					//				text: coverage[2],
					//				color: '#000',
					//				fontSize: '15px'
					//			}
					//		})
					//	}
					//);

					jQuery.each(area[1], function (i, coverage) {

						if (coverage[2] !== "") {

							markers = new google.maps.Marker({
								position: coverage[3],
								icon: {
									url: '<?=base_url() . DIR_ICON?>pin/' + coverage[1],
									labelOrigin: {x: 20, y: -20}
								},
								title: coverage[2],
								label: {
									text: coverage[2],
									color: '#000',
									fontSize: '15px'
								}
							});
							markers.setMap(map);

							//POLIGON DRAW
							polygon = new google.maps.Polygon({
								paths: coverage[4],
								strokeColor: coverage[0],
								strokeOpacity: 0.8,
								strokeWeight: 1,
								fillColor: coverage [0],
								fillOpacity: 0.2
							});
							polygon.setMap(map);
						}
						if (coverage[5] !== "") {
							markers = new google.maps.Marker({
								position: coverage[6],
								icon: {
									url: '<?=base_url() . DIR_ICON?>pin/' + coverage[1],
									labelOrigin: {x: 20, y: -20}
								},
								title: coverage[5],
								label: {
									text: coverage[5],
									color: '#000',
									fontSize: '15px'
								}
							});
							markers.setMap(map);

							//POLIGON DRAW
							polygon = new google.maps.Polygon({
								paths: coverage[7],
								strokeColor: coverage[0],
								strokeOpacity: 0.8,
								strokeWeight: 1,
								fillColor: coverage [0],
								fillOpacity: 0.2
							});
							polygon.setMap(map);
						}
						color=coverage[0];
						icon=coverage[1];
						type=coverage[8];
					});
					if (type === 'point'){
						$('#legend').append('<div class="col-md-6 text-center"> <img src="<?=base_url() . DIR_ICON?>pin/'+icon+'" alt="" style="height:30px; margin-right:10px; margin-bottom:0px"><?= $section_name ?> ' +area[0] + '</div>');

					}else{
						$('#legend').append('<div class="col-md-6 text-center"> <span style="display:inline-block; width: 20px;height: 20px; background-color: '+color+'40; border: 2px solid '+color+'bb; margin-right:10px; margin-bottom:-5px"></span> <?= $section_name ?> ' +area[0] + '</div>');
					}
				}
			});

			// Add a marker clusterer to manage the markers.
			var markerCluster = new MarkerClusterer(map, markers,
				{imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});

		}// end init

	</script>
	<!--	<script src="https://unpkg.com/@google/markerclustererplus@4.0.1/dist/markerclustererplus.min.js">-->
	<script src="<?= base_url(DIR_VENDOR . 'markerclusterer/markerclustererplus.min.js') ?>"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2mKD5ZgMQMlX8JwbhpzkyiGdNXvxl6PY&callback=initMap" async defer></script>
<?php endif; ?>