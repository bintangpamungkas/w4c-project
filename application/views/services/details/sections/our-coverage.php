<?php if (!empty($coverages)): ?>

	<!-- Promo Block -->
	<section class="g-bg-secondary">
		<div id="<?= $section_slug ?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>

		<div class="text-center g-mb-50">
			<h2 class="g-font-asap g-color-black g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-25' : '' ?>"><?= $section_name ?></h2>
			<hr class="g-width-30 g-my-5 g-brd-2 g-brd-blue">
		</div>
		<div class="">
			<div id="map" style="width: 100%; height: 600px; position: relative; overflow: hidden;"></div>
			<!--		<iframe src="https://www.google.com/maps/d/embed?mid=1aSFRCFpHVBExx47pzwfwgMobooOb_a-Y" style="width: 100%;height: 600px"></iframe>-->
		</div>
	</section>
	<!-- End Promo Block -->
	<script type="text/javascript">
      var locations = [
				<?php
				foreach ($coverages as $coverage) {
//					echo '["' . $coverage->service_coverage_city . '",' . $coverage->service_coverage_coordinate . ',[' . $coverage->service_coverage_area . ']],';
				echo '["' . $coverage->service_coverage_city . '",' . $coverage->service_coverage_coordinate . '],';
				
				}
				?>
      ];

      var icons = {
          praise: {
              url: '<?=base_url() . DIR_ICON?>pin/blue.png'
          },
          coke: {
              url: '<?=base_url() . DIR_ICON?>pin/blue.png'
          },
          sd: {
              url: 'https://mt.googleapis.com/vt/icon/name=icons/onion/SHARED-mymaps-container-bg_4x.png,icons/onion/SHARED-mymaps-container_4x.png,icons/onion/1885-treasure-chest_4x.png&amp;highlight=ff000000,0F9D58&amp;scale=2.0'
          }
      };

      function initMap() {
          //Define maps spec
          var map = new google.maps.Map(document.getElementById('map'), {
              // zoom: 5.15,
              // center: new google.maps.LatLng(-2.2289239,117.9211634),
              mapTypeId: google.maps.MapTypeId.ROADMAP
          });
          //Define icon
          var infowindow = new google.maps.InfoWindow();
          var bounds = new google.maps.LatLngBounds();
          var marker, polygon, i;

          for (i = 0; i < locations.length; i++) {
              //init polygon
              // polygon = new google.maps.Polygon({
              //     paths: locations[i][3],
              //     strokeColor: '#FF0000',
              //     strokeOpacity: 0.3,
              //     strokeWeight: 1.5,
              //     fillColor: '#FF0000',
              //     fillOpacity: 0.1
              // });
              // polygon.setMap(map);

              //create marter
              marker = new google.maps.Marker({
                  position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                  map: map,
                  icon: icons['praise'],
                  // shape: shape,
              });

              //extend the bounds to include each marker's position
              bounds.extend(marker.position);

              //create info window when marker click
              google.maps.event.addListener(marker, 'click', (function (marker, i) {
                  return function () {
                      infowindow.setContent('<h5>' + locations[i][0] + '</h5>');
                      infowindow.open(map, marker);
                      // console.log('open');
                  }
              })(marker, i));

              //now fit the map to the newly inclusive bounds
              map.fitBounds(bounds);
              // console.log(locations[i][0]);
              // geocodeAddress(myGeocoder,locations[i][0]);

          }
      }

      // function initMap() {
      //     var myGeocoder = new google.maps.Geocoder;
      //     $('#form_search_city_submit').click(function() {
      //         $(this).parent().addClass('u-has-disable');
      //         $(this).html('MENCARI...');
      //     });
      // }

      //CHANGE ADDRESS TO LAT LNG
      function geocodeAddress(geocoder, address) {
          // var location = $('input[name=location]');
          geocoder.geocode({'address': address}, function (results, status) {
              // $('#form_search_city_submit').html('CARI LOKASI');
              if (status === 'OK') {
                  // console.log(results);
                  console.log(address);
                  console.log(results[0].geometry.location.lat() + ',' + results[0].geometry.location.lng());
                  //location.val(results[0].geometry.location.lat()+','+results[0].geometry.location.lng());
                  //$('#form_search_city').attr('action', "<?php //echo site_url('send/receiver') ?>//?city="+address+"&location="+results[0].geometry.location.lat()+','+results[0].geometry.location.lng()).submit();
                  //$('#form_search_city').submit();
              } else {
                  // alert('Tidak berhasil menemukan lokasi. Coba lagi... ');
                  console.log(status);
                  // $('#form_search_city_submit').html('CARI LOKASI');
                  // $('input[name=city]').parent().removeClass('u-has-disable');
              }
          });
      }
	</script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2mKD5ZgMQMlX8JwbhpzkyiGdNXvxl6PY&callback=initMap" async defer></script>
<?php endif; ?>