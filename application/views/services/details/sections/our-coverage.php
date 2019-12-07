<!-- Promo Block -->
<section class="g-bg-secondary">
	<div class="text-center g-mb-50">
		<h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-25' : '' ?>"><?= strtoupper(lang('benefit')) ?></h2>
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
        ['The Green Corner', -6.27748, 106.82763, 'Jl. Pejaten Barat No.71, RT.8/RW.8, Pejaten Bar., Ps. Minggu, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12510', 'Dina (081999051980)', 'praise'], ['Kenobi Space', -6.25526, 106.81065, 'Gedung Colony Lantai 6, Jalan Kemang Raya No.6, RT.14/RW.1, Bangka, Mampang Prapatan, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12730', 'Ipin (085810494902)', 'praise'], ['Block 71', -6.22752, 106.83353, 'Ariobimo Sentral, Kota Jakarta Selatan, RT.9/RW.4, Kuningan Timur, SetiaBudi, Jakarta, 12950', 'Ersan (087883462811)', 'praise'], ['Gordi HQ', -6.28411, 106.81173, 'Jl. Jeruk Purut Dalam No.25, RT.6/RW.3, Cilandak Tim., Ps. Minggu, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12560', 'Surya (08111477999)', 'praise'], ['Pocut Dara Resto', -6.23563, 106.80111, 'Jl. Raya Pasar Minggu No.Kav. 30, RT.1/RW.7, Pancoran, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12780', 'Isra (081297443450)', 'praise'], ['Coworkinc Space', -6.256812, 106.8107024, 'Jl. Kemang I No.7, Bangka, Mampang Prpt., Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12730', 'Danti (0818112688)', 'praise'], ['Innovation Room - Talent Hub', -6.2365, 106.83055, 'RT.5/RW.4, Kuningan Tim., Kecamatan Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12950', 'Pak Robby (082298284738)', 'praise'], ['GPIB Menara Iman', -6.22542, 106.91456, 'Gereja GPIB Menara Iman, Kompleks PTB Blok F2 Jalan Lingkar Timur 1, RT.8/RW.4, Duren Sawit, Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta.', 'Pak Bayu (08179181200)', 'praise']];

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
            zoom: 11,
            center: new google.maps.LatLng(-6.2067018, 106.9624472),
            mapTypeId: google.maps.MapTypeId.ROADMAP
        });
        //Define icon
        var infowindow = new google.maps.InfoWindow();
        var marker, i;

        for (i = 0; i < locations.length; i++) {
            marker = new google.maps.Marker({
                position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                map: map,
                icon: icons[locations[i][5]],
                // shape: shape,
            });

            google.maps.event.addListener(marker, 'click', (function (marker, i) {
                return function () {
                    infowindow.setContent('<h5>' + locations[i][0] + '</h5><p>' + locations[i][3] + '</p><p>Kontak : ' + locations[i][4] + '</p>');
                    infowindow.open(map, marker);
                    // console.log('open');
                }
            })(marker, i));
        }
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2mKD5ZgMQMlX8JwbhpzkyiGdNXvxl6PY&callback=initMap" async defer></script>
