<?php if (!empty($records)): ?>
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
	</section>
	<!-- End Promo Block -->
	<script>


		<?php
		//		print_r($second_records);
		//		if (!empty($second_records)) {
		//
		//			echo 'var second_locations = [';
		//			foreach ($second_records as $record) {
		//				if (!empty($record->city_coordinate)) {
		//					$coor = explode(',', $record->city_coordinate);
		//					echo '[{lat:' . $coor[0] . ',lng:' . $coor[1] . '},"' . $record->city_name . '"],';
		//				}
		//				if ($record->city_name == 'Seluruh Kota di Indonesia') {
		//					echo '[{lat:1.5901668,lng:117.8198982},"' . $record->city_name . '"],';
		//					$seluruh_indonesia = true;
		//				}
		//			}
		//		}
		//		echo '];';
		echo 'var areas = [';
		foreach ($areas as $area) {
			echo '["' . $area->service_coverage_name . '","' . $area->service_coverage_color . '",[' . $area->service_coverage_area . ']],';
		}
		echo '];';


		echo 'var locations = [';
		$seluruh_indonesia = false;
		foreach ($records as $record) {
			if (!empty($record->city_coordinate)) {
				$coor = explode(',', $record->city_coordinate);
				echo '[{lat:' . $coor[0] . ',lng:' . $coor[1] . '},"' . $record->city_name . '","blue"],';
			}
			if ($record->city_name == 'Seluruh Kota di Indonesia') {
				echo '[{lat:1.5901668,lng:117.8198982},"' . $record->city_name . '","blue"],';
				$seluruh_indonesia = true;
			}
		}
		if (!empty($second_records)) {

			foreach ($second_records as $record) {
				if (!empty($record->city_coordinate)) {
					$coor = explode(',', $record->city_coordinate);
					echo '[{lat:' . $coor[0] . ',lng:' . $coor[1] . '},"' . $record->city_name . '","green"],';
				}
			}
		}

		echo '];';

		if ($seluruh_indonesia == true) {
			echo 'var seluruh_indonesia=true;';
		} else {
			echo 'var seluruh_indonesia=false;';
		}
		?>
		if (typeof second_locations !== 'undefined') {
			console.log('not empty');
		}
		var icon = {
			blue: {
				url: '<?=base_url() . DIR_ICON?>pin/icon-pin2.png',
				labelOrigin: {x: 20, y: -10}

			},
			green: {
				url: '<?=base_url() . DIR_ICON?>pin/icon-pin1.png',
				labelOrigin: {x: 20, y: -10}

			},
		};
		var polygon, i;

		function initMap() {
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom: 5.35,
				center: {lat: -2, lng: 117}
			});

			// Add some markers to the map.
			// Note: The code uses the JavaScript Array.prototype.map() method to
			// create an array of markers based on a given "locations" array.
			// The map() method here has nothing to do with the Google Maps API.
			var markers = locations.map(function (location, i) {
				return new google.maps.Marker({
					position: location[0],
					icon: icon[location[2]],

					//icon: {url: '<?//=base_url() . DIR_ICON?>//pin/blue.png'}
					title: location[1],
					label: {
						text: location[1],
						color: '#000',
						fontSize: '15px'
					}
					// pixelOffset: new google.maps.Size(100,140)
				});
			});

			// Add a marker clusterer to manage the markers.
			var markerCluster = new MarkerClusterer(map, markers,
				{imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});

			jQuery.each(areas, function (i, area) {
				polygon = new google.maps.Polygon({
					paths: area['2'],
					strokeColor: area[1],
					strokeOpacity: 0.8,
					strokeWeight: 1,
					fillColor: area['1'],
					fillOpacity: 0.2
				});
				polygon.setMap(map);
			});


			if (seluruh_indonesia == true) {

				var indonesia = [

					{lng: -253.5956955, lat: -6.0229472},
					{lng: -253.6372375, lat: -6.0395048},
					{lng: -253.6555481, lat: -6.0832044},
					{lng: -253.6066716, lat: -6.1648826},
					{lng: -253.6149037, lat: -6.2740378},
					{lng: -253.5764874, lat: -6.402266},
					{lng: -253.5737434, lat: -6.530462},
					{lng: -253.6011836, lat: -6.5850036},
					{lng: -253.5923767, lat: -6.638236},
					{lng: -253.5334978, lat: -6.6613517},
					{lng: -253.4182491, lat: -6.6368126},
					{lng: -253.3752594, lat: -6.6313592},
					{lng: -253.3148911, lat: -6.6722576},
					{lng: -253.2270825, lat: -6.6967951},
					{lng: -253.1365299, lat: -6.6886161},
					{lng: -253.0926256, lat: -6.6395392},
					{lng: -253.0871376, lat: -6.5959112},
					{lng: -253.0075611, lat: -6.5950023},
					{lng: -252.9362166, lat: -6.5895485},
					{lng: -252.8868243, lat: -6.5731868},
					{lng: -252.8456641, lat: -6.5159167},
					{lng: -252.7825517, lat: -6.5077347},
					{lng: -252.780304, lat: -6.41857},
					{lng: -252.7720642, lat: -6.3184834},
					{lng: -252.7112072, lat: -6.2458416},
					{lng: -252.7112072, lat: -6.1667021},
					{lng: -252.7505381, lat: -6.1121162},
					{lng: -252.8529815, lat: -6.0720829},
					{lng: -252.8913977, lat: -6.0092976},
					{lng: -252.9043579, lat: -5.9803226},
					{lng: -252.8988648, lat: -5.9448102},
					{lng: -252.9901824, lat: -5.9219321},
					{lng: -252.9929264, lat: -5.9437748},
					{lng: -252.9826355, lat: -5.9816884},
					{lng: -253.0121345, lat: -6.0229472},
					{lng: -252.9846943, lat: -6.085731},
					{lng: -253.1054311, lat: -6.1075671},
					{lng: -253.2014717, lat: -6.1348609},
					{lng: -253.2755602, lat: -6.0802718},
					{lng: -253.2879639, lat: -6.0436018},
					{lng: -253.309021, lat: -6.024027},
					{lng: -253.3534241, lat: -6.012646},
					{lng: -253.41156, lat: -6.0340421},
					{lng: -253.4614563, lat: -6.0194746},
					{lng: -253.4841055, lat: -6.0338667},
					{lng: -253.5145569, lat: -6.0426913},
					{lng: -253.5499619, lat: -6.0420561},
					{lng: -253.5938662, lat: -6.0202173}
				];

				//init polygon
				polygon = new google.maps.Polygon({
					paths: indonesia,
					strokeColor: '#FF0000',
					strokeOpacity: 0.1,
					strokeWeight: 0,
					fillColor: '#FF0000',
					fillOpacity: 0.1
				});
				polygon.setMap(map);
			}// end if seluruh indonesia
		}// end init

	</script>
	<!--	<script src="https://unpkg.com/@google/markerclustererplus@4.0.1/dist/markerclustererplus.min.js">-->
	<script src="<?= base_url(DIR_VENDOR . 'markerclusterer/markerclustererplus.min.js') ?>"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2mKD5ZgMQMlX8JwbhpzkyiGdNXvxl6PY&callback=initMap" async defer></script>
<?php endif; ?>