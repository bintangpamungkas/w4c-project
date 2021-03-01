<?php if (!empty($service->service_map_url)) : ?>
	<!-- Promo Block -->
	<div id="<?= $section_slug ?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
	<section class="g-bg-secondary  <?= $this->agent->is_mobile() ? 'g-pt-50 g-pb-0' : 'g-pt-70' ?>">
		<div class="text-center mb-2">
			<h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase <?= $this->agent->is_mobile() ? 'g-font-size-25' : '' ?>"><?= $section_name ?></h2>
			<hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
		</div>
		<div>
		    <?php if ($service_id == 'personal-waste-management') : ?>
    		    <style>
                    .search-box-location {
                        box-sizing: border-box;
                        -moz-box-sizing: border-box;
                        outline: none;
                        background: #FFFFFF;
                        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
                        margin: 22px 0 0 -538px;
                        min-width: 512px;
                        max-width: 512px;
                    }
            
                    .search-box-location .search-box {
                        padding: 15px 15px 15px 30px;
                        display: flex;
                        align-items: center;
                        justify-content: space-between;
                    }
            
                    .search-box-location .search-box .search-icon {
                        min-width: 24px;
                        min-height: 24px;
                        max-width: 24px;
                        max-height: 24px;
                    }
            
                    .search-box-location .search-box .search-input {
                        border: none;
                        outline: none;
                        font-style: normal;
                        font-weight: normal;
                        font-size: 18px;
                        line-height: 25px;
                        margin-left: 20px;
                        margin-right: 10px;
                        width: 100%;
                        font-family: "Open Sans", Helvetica, Arial, sans-serif;
                    }
            
                    .search-box-location .search-box .search-btn {
                        /*background: #17A2B8;*/
                        /*border: 1px solid #17A2B8;*/
                        /*box-sizing: border-box;*/
                        /*border-radius: 40px;*/
                        /*color: #ffffff;*/
                        /*padding: 13px 30px;*/
                        /*align-items: center;*/
                        /*text-align: center;*/
                        /*color: #FFFFFF;*/
                    }
            
                    .search-box-location .search-box-btn {
                        padding: 15px 15px 15px 30px;
                        align-items: center;
                        justify-content: start;
                        min-height: 69px;
                        display: none;
                        cursor:pointer;
                    }
            
                    .search-box-location .search-box-btn .search-icon {
                        min-width: 24px;
                        min-height: 24px;
                        max-width: 24px;
                        max-height: 24px;
                    }
            
                    .search-box-location .search-box-btn .search-placeholder {
                        border: none;
                        outline: none;
                        font-style: normal;
                        font-weight: normal;
                        font-size: 18px;
                        line-height: 25px;
                        margin-left: 20px;
                        margin-right: 10px;
                        width: 100%;
                        color: rgba(0, 0, 0, 0.3);
                        font-family: "Open Sans", Helvetica, Arial, sans-serif;
                    }
            
                    .search-box-location .result-box .my-location {
                        padding: 15px 15px 15px 30px;
                        display: flex;
                        align-items: center;
                        justify-content: start;
                        cursor: pointer;
                    }
            
                    .search-box-location .result-box .my-location span {
                        margin-left: 19.5px;
                        font-style: normal;
                        font-weight: normal;
                        font-size: 18px;
                        line-height: 25px;
                        color: #17A2B8;
                        -webkit-touch-callout: none;
                        /* iOS Safari */
                        -webkit-user-select: none;
                        /* Safari */
                        -khtml-user-select: none;
                        /* Konqueror HTML */
                        -moz-user-select: none;
                        /* Old versions of Firefox */
                        -ms-user-select: none;
                        /* Internet Explorer/Edge */
                        user-select: none;
                        /* Non-prefixed version, currently supported by Chrome, Edge, Opera and Firefox */
                        font-family: "Open Sans", Helvetica, Arial, sans-serif;
                    }
            
                    .search-box-location .result-box .result-list .result {
                        display: flex;
                        align-items: center;
                        justify-content: start;
                        padding-top: 15px;
                        border-bottom: 1px solid rgba(0, 0, 0, 0.1);
                        padding: 15px 15px 15px 30px;
                        cursor: pointer;
                        border-top: 1px solid #fefefe;
                        transition: all .3s;
                    }
            
                    .search-box-location .result-box .result-list .result:hover {
                        background: #fefefe;
                    }
            
                    .search-box-location .result-box .result-list .result img {
                        width: 20px;
                        height: 27.5px;
                    }
            
                    .search-box-location .result-box .result-list .result .location-group-name {
                        margin-left: 28px;
                    }
            
                    .search-box-location .result-box .result-list .result .location-group-name .location-name {
                        font-style: normal;
                        font-weight: bold;
                        font-size: 16px;
                        line-height: 20px;
                        color: #000000;
                        margin: 0;
                        font-family: "Open Sans", Helvetica, Arial, sans-serif;
                    }
            
                    .search-box-location .result-box .result-list .result .location-group-name .location-detail {
                        font-style: normal;
                        font-weight: normal;
                        font-size: 12px;
                        line-height: 16px;
                        color: rgba(0, 0, 0, 0.5);
                        margin-bottom: 0;
                        margin-top: 4px;
                        font-family: "Open Sans", Helvetica, Arial, sans-serif;
                    }
            
                    @media (max-width: 1110px) {
                        #search-box-location {                
                            margin-left: 0px;
                            max-width:auto;
                        }
                    }
            
                    @media (max-width: 811px) {
                        .search-box-location .search-box {
                            display: none;
                        }
            
                        .search-box-location .search-box-btn {
                            display: flex;
                        }
                    }
            
                    @media (max-width: 540px) {
                        #search-box-location {
                            min-width:auto;
                            max-width:auto;
                            width:90%;
                            margin-left:15px;
                            margin-right:15px;
                        }
                    }
                </style>
    		    <div id="map_overlay" onclick="$('#map').css('pointer-events','auto')" style="background:transparent;position:relative;width: 100%;height: 600px; top:600px;margin-top: -600px;"></div>
		        <div id="map" style="width: 100%; height: 600px; position: relative; overflow: hidden;pointer-events: none;"></div>
		        <div class="search-box-location" id="search-box-location">
                    <div class="search-box">
                        <img src="<?= site_url('2.8.assets/img/icons/map-pwm/search_icon.png') ?>" alt="" class="search-icon">
                        <input type="text" placeholder="Cari Lokasi Anda" class="search-input" id="search-input" autocomplete="off">
                        <a href="javascript:void(0);" class="btn btn-info g-color-white g-brd-white-opacity-0_2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 search-btn" id="check-location">Cek</a>
                        <input type="hidden" id="coordinate-latlng">
                    </div>
                    <div class="search-box-btn" onclick="openWindowPwm();">
                        <img src="<?= site_url('2.8.assets/img/icons/map-pwm/search_icon.png') ?>" alt="" class="search-icon">
                        <span class="search-placeholder">Cari Lokasi Anda</span>
                    </div>
                    <div class="result-box" id="result-box" style="display: none;">
                        <div class="my-location" id="my-location">
                            <img src="<?= site_url('2.8.assets/img/icons/map-pwm/my_location_icon.png') ?>" alt="" />
                            <span>Gunakan lokasi saat ini</span>
                        </div>
                        <div class="result-list" id="result-list"></div>
                    </div>
                </div>
    			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBl7xJcqEfcaQFuSHMtub_lTQiYMSFjH6I&libraries=places&callback=initMap&language=id&region=ID" async defer></script>
    			<script>
                    var map = null;
                    var iconBaseMarker = "<?= site_url('2.8.assets/img/icons/map-pwm/marker.svg') ?>";
                    var baseMarker;
                    const citymap = {
                        tangsel: {
                            center: {
                                lat: -6.297667,
                                lng: 106.723128
                            },
                            radius: 7500,
                            style: {
                                strokeColor: "#f57c00",
                                strokeOpacity: 1,
                                strokeWeight: 1,
                                fillColor: "#f57c00",
                                fillOpacity: 0.1,
                            }
                        },
                        jaksel: {
                            center: {
                                lat: -6.243756,
                                lng: 106.828861
                            },
                            radius: 7500,
                            style: {
                                strokeColor: "#9c27b0",
                                strokeOpacity: 1,
                                strokeWeight: 1,
                                fillColor: "#9c27b0",
                                fillOpacity: 0.1,
                            }
                        },
                        jaksel2: {
                            center: {
                                lat: -6.351035,
                                lng: 106.8353876
                            },
                            radius: 7500,
                            style: {
                                strokeColor: "#a30202",
                                strokeOpacity: 1,
                                strokeWeight: 1,
                                fillColor: "#a30202",
                                fillOpacity: 0.1,
                            }
                        },
                        bekasi: {
                            center: {
                                lat: -6.316684,
                                lng: 107.001018
                            },
                            radius: 7500,
                            style: {
                                strokeColor: "#0288d1",
                                strokeOpacity: 1,
                                strokeWeight: 1,
                                fillColor: "#0288d1",
                                fillOpacity: 0.1,
                            }
                        },
                        jektim: {
                            center: {
                                lat: -6.219384,
                                lng: 106.924875
                            },
                            radius: 7500,
                            style: {
                                strokeColor: "#4d4040",
                                strokeOpacity: 1,
                                strokeWeight: 1,
                                fillColor: "#4d4040",
                                fillOpacity: 0.1,
                            }
                        },
                        jakbar: {
                            center: {
                                lat: -6.183766,
                                lng: 106.779264
                            },
                            radius: 7500,
                            style: {
                                strokeColor: "#0dba10",
                                strokeOpacity: 1,
                                strokeWeight: 1,
                                fillColor: "#0dba10",
                                fillOpacity: 0.1,
                            }
                        },
                        jakut: {
                            center: {
                                lat: -6.126404,
                                lng: 106.884666
                            },
                            radius: 7500,
                            style: {
                                strokeColor: "#ff4f4f",
                                strokeOpacity: 1,
                                strokeWeight: 1,
                                fillColor: "#ff4f4f",
                                fillOpacity: 0.1,
                            }
                        },
                    };
                
                    function initMap() {
                        var idMap = document.getElementById("map");
                        var indonesia = new google.maps.LatLng(-6.176279, 106.8250734);
                        map = new google.maps.Map(idMap, {
                            center: indonesia,
                            zoom: 11,
                            zoomControl: false,
                            mapTypeControl: false,
                            scaleControl: false,
                            streetViewControl: false,
                            rotateControl: false,
                            fullscreenControl: false,
                            gestureHandling: "cooperative",
                        });
                        
                        baseMarker = new google.maps.Marker({
                            map: map,
                            icon: iconBaseMarker,
                            animation: google.maps.Animation.DROP,
                            draggable: false
                        });
                        
                        for (const city in citymap) {
                            const cityCircle = new google.maps.Circle({
                                map,
                                strokeColor: citymap[city].style.strokeColor,
                                strokeOpacity: citymap[city].style.strokeOpacity,
                                strokeWeight: citymap[city].style.strokeWeight,
                                fillColor: citymap[city].style.fillColor,
                                fillOpacity: citymap[city].style.fillOpacity,
                                center: citymap[city].center,
                                radius: citymap[city].radius,
            
                            });
            
                            new google.maps.Marker({
                                position: citymap[city].center,
                                map: map,
                                icon: {
                                    url:'data:image/svg+xml;charset=utf-8,' + encodeURIComponent ('<svg width="23" height="24" viewBox="0 0 53 54" fill="none" xmlns="http://www.w3.org/2000/svg"><circle cx="26.3847" cy="26.9999" r="25.0956" fill="'+citymap[city].style.fillColor+'" stroke="white" stroke-width="2"/><path d="M39.7911 28.6171H37.2062V37.8931C37.2062 38.5811 36.9062 39.4391 35.6602 39.4391H29.4761V30.1631H23.2921V39.4391H17.1081C15.862 39.4391 15.5621 38.5811 15.5621 37.8931V28.6171H12.9771C12.0526 28.6171 12.2505 28.1162 12.8844 27.4607L25.2895 15.0431C25.591 14.7309 25.9868 14.5763 26.3841 14.5608C26.7814 14.5763 27.1772 14.7293 27.4787 15.0431L39.8823 27.4591C40.5177 28.1162 40.7156 28.6171 39.7911 28.6171Z" fill="white"/></svg>'),
                                    anchor: new google.maps.Point(12.5, 12.5),
                                    scaledSize: new google.maps.Size(25, 25)
                                },
                                draggable: false
                            });
                        }
                        
                        initSearchControl(map);
                        
                        getMyLocation = function() {
                            if (navigator.geolocation) {
                                navigator.geolocation.getCurrentPosition(
                                    function(position) {
                                        var pos = {
                                            lat: position.coords.latitude,
                                            lng: position.coords.longitude
                                        };
            
                                        map.setCenter(pos);
                                        baseMarker.setPosition(pos);
                                        map.getCenter();
                                        $('#coordinate-latlng').val(pos.lat + ',' + pos.lng);
                                    },
                                    function() {
                                        console.log('Geolocation service failed.');
                                    }
                                );
                            } else {
                                console.log('Your browser doesn\'t support geolocation.');
                            }
                        };
            
                        $('#my-location').on('click', function() {
                            $('#search-input').val('Lokasi Saya Saat Ini');
                            $('#result-box').hide();
                            $('#result-list').empty();
                            getMyLocation();
                        });
                    }
                    
                    function initSearchControl(map) {
                        var searchBox = document.getElementById('search-box-location');
                        var searchinput = document.getElementById('search-input');
            
                        map.controls[google.maps.ControlPosition.TOP_CENTER].push(searchBox);
                    }
                    
                    function geocodeAddrs(geocoder, resultsMap, title, address, callback) {
                        geocoder.geocode({
                            'address': address
                        }, function(results, status) {
                            if (status === 'OK') {
                                if (results[0].geometry.viewport) {
                                    resultsMap.fitBounds(results[0].geometry.viewport);
                                } else {
                                    resultsMap.setCenter(results[0].geometry.location);
                                    resultsMap.setZoom(17);
                                }
            
                                var center = resultsMap.getCenter();
                                baseMarker.setPosition(center);
                                
                                if (typeof callback == 'function') {
                                    callback(results[0]);
                                }
                            } else {
                                console.log('Geocode was not successful for the following reason: ' + status);
                            }
                        });
                    }
                    
                    function setSearch(object) {
                        var mainText = $(object).data('main-text');
                        var description = $(object).data('description');
            
                        $('#search-input').val(mainText);
                        $('#result-box').hide();
                        $('#result-list').empty();

                        geocodeAddrs(new google.maps.Geocoder, map, mainText, description, function(result) {
                            var getLat = result.geometry.location.lat(); // kordinat lat
                            var getLng = result.geometry.location.lng(); // kordinat lng
                            
                            $('#coordinate-latlng').val(getLat + ',' + getLng);
                        });
                    }
                    
                    var displaySuggestions = function(predictions, status) {
                        if (status != google.maps.places.PlacesServiceStatus.OK) {
                            return;
                        }
            
                        $('#result-list').empty();
                        predictions.forEach(function(prediction) {
                            $(`<div class="result" data-main-text="` + prediction.structured_formatting.main_text + `" data-description="` + prediction.description + `" onclick="setSearch(this)">
                                <img src="<?= site_url('2.8.assets/img/icons/map-pwm/icon_location_grey.svg') ?>" alt="">
                                <div class="location-group-name">
                                    <h6 class="location-name">` + prediction.structured_formatting.main_text + `</h6>
                                    <p class="location-detail">` + prediction.description + `</p>
                                </div>
                            </div>`).appendTo('#result-list');
                        });
                    }
                    
                    $('#search-input').on('keyup', function(e) {
                        if (this.value.length >= 1) {
                            var value = this.value;
                            var search = new google.maps.places.AutocompleteService().getQueryPredictions({
                                input: value
                            }, displaySuggestions);
                        } else if (this.value.length === 0) {
                            $('#result-list').empty();
                        }
                    });
                    
                    $('#search-input').on('focus', function(e) {
                        $('#result-box').show();
                        $('#search-box-location').on('mouseleave', function (e) {
                            $('#result-box').show();    
                        });
                        if (this.value.length >= 1) {
                            var value = this.value;
                            if(value == "Lokasi Saya Saat Ini") {
                                $('#search-input').val('');   
                                return;
                            }
                            var search = new google.maps.places.AutocompleteService().getQueryPredictions({
                                input: value
                            }, displaySuggestions);
                        } else if (this.value.length === 0) {
                            $('#result-list').empty();
                        }
                    });
                    
                    $('#search-input').on('blur', function(e) {
                        $('#search-box-location').on('mouseleave', function (e) {
                            $('#result-box').hide();    
                        });
                    });
                    
                    $('#check-location').on('click', function(e) {
                        e.preventDefault();
                        var data = $('#coordinate-latlng').val();
                        var baseUrl = "https://personal.waste4change.com/?redirect=location&<?= $query_from_url ?>&check=true&data=" + data;
                        
                        window.location = baseUrl;
                    });
                    
                    function openWindowPwm() {
                        var baseUrl = "https://personal.waste4change.com/?redirect=location&<?= $query_from_url ?>";
                        window.location = baseUrl;
                    }
                </script>
		    <?php else : ?>
    			<div id="map_overlay" onclick="$('#map').css('pointer-events','auto')" style="background:transparent;position:relative;width: 100%;height: 600px; top:600px;margin-top: -600px;"></div>
    			<iframe id="map" src="<?= $service->service_map_url ?>" style="width: 100%; height: 600px; position: relative; overflow: hidden;margin-bottom: -8px;pointer-events: none;"></iframe>
			<?php endif; ?>
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
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #17a2b840; border: 2px solid #17a2b8bb; margin: <?= $this->agent->is_mobile() ? '3px 5px 0px 5px' : '0 5px -5px 5px' ?>"></span>
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #4e41412e; border: 2px solid #4d4040; margin: <?= $this->agent->is_mobile() ? '3px 16px 0px 5px' : '0 5px -5px 5px' ?>"></span>
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #0dba102b; border: 2px solid #0dba10; margin: <?= $this->agent->is_mobile() ? '3px 16px 0px 5px' : '0 5px -5px 5px' ?>"></span>
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #ff4f4f2e; border: 2px solid #ff4f4f; margin: <?= $this->agent->is_mobile() ? '3px 16px 0px 5px' : '0 5px -5px 5px' ?>"></span>
								<span style="display:inline-block; <?= $this->agent->is_mobile() ? 'width: 15px;height: 15px' : 'width: 20px;height: 20px' ?>; background-color: #a302022e; border: 2px solid #a30202; margin: <?= $this->agent->is_mobile() ? '3px 16px 0px 5px' : '0 16px -5px 5px' ?>"></span>
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
								<img src="<?= base_url() . DIR_ICON ?>pin/google-home-blue.png" alt="home blue pin" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:0px; margin-bottom:0">
								<svg width="23" height="24" viewBox="0 0 53 54" fill="none" xmlns="http://www.w3.org/2000/svg" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; width:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:0px; margin-bottom:0;vertical-align:middle;"><circle cx="26.3847" cy="26.9999" r="25.0956" fill="#4d4040" stroke="white" stroke-width="2"/><path d="M39.7911 28.6171H37.2062V37.8931C37.2062 38.5811 36.9062 39.4391 35.6602 39.4391H29.4761V30.1631H23.2921V39.4391H17.1081C15.862 39.4391 15.5621 38.5811 15.5621 37.8931V28.6171H12.9771C12.0526 28.6171 12.2505 28.1162 12.8844 27.4607L25.2895 15.0431C25.591 14.7309 25.9868 14.5763 26.3841 14.5608C26.7814 14.5763 27.1772 14.7293 27.4787 15.0431L39.8823 27.4591C40.5177 28.1162 40.7156 28.6171 39.7911 28.6171Z" fill="white"/></svg>
								<svg width="23" height="24" viewBox="0 0 53 54" fill="none" xmlns="http://www.w3.org/2000/svg" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; width:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:0px; margin-bottom:0;vertical-align:middle;"><circle cx="26.3847" cy="26.9999" r="25.0956" fill="#0dba10" stroke="white" stroke-width="2"/><path d="M39.7911 28.6171H37.2062V37.8931C37.2062 38.5811 36.9062 39.4391 35.6602 39.4391H29.4761V30.1631H23.2921V39.4391H17.1081C15.862 39.4391 15.5621 38.5811 15.5621 37.8931V28.6171H12.9771C12.0526 28.6171 12.2505 28.1162 12.8844 27.4607L25.2895 15.0431C25.591 14.7309 25.9868 14.5763 26.3841 14.5608C26.7814 14.5763 27.1772 14.7293 27.4787 15.0431L39.8823 27.4591C40.5177 28.1162 40.7156 28.6171 39.7911 28.6171Z" fill="white"/></svg>
								<svg width="23" height="24" viewBox="0 0 53 54" fill="none" xmlns="http://www.w3.org/2000/svg" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; width:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:0px; margin-bottom:0;vertical-align:middle;"><circle cx="26.3847" cy="26.9999" r="25.0956" fill="#ff4f4f" stroke="white" stroke-width="2"/><path d="M39.7911 28.6171H37.2062V37.8931C37.2062 38.5811 36.9062 39.4391 35.6602 39.4391H29.4761V30.1631H23.2921V39.4391H17.1081C15.862 39.4391 15.5621 38.5811 15.5621 37.8931V28.6171H12.9771C12.0526 28.6171 12.2505 28.1162 12.8844 27.4607L25.2895 15.0431C25.591 14.7309 25.9868 14.5763 26.3841 14.5608C26.7814 14.5763 27.1772 14.7293 27.4787 15.0431L39.8823 27.4591C40.5177 28.1162 40.7156 28.6171 39.7911 28.6171Z" fill="white"/></svg>
								<svg width="23" height="24" viewBox="0 0 53 54" fill="none" xmlns="http://www.w3.org/2000/svg" style="height:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; width:<?= $this->agent->is_mobile() ? '25px' : '30px' ?>; margin-right:10px; margin-bottom:0;vertical-align:middle;"><circle cx="26.3847" cy="26.9999" r="25.0956" fill="#a30202" stroke="white" stroke-width="2"/><path d="M39.7911 28.6171H37.2062V37.8931C37.2062 38.5811 36.9062 39.4391 35.6602 39.4391H29.4761V30.1631H23.2921V39.4391H17.1081C15.862 39.4391 15.5621 38.5811 15.5621 37.8931V28.6171H12.9771C12.0526 28.6171 12.2505 28.1162 12.8844 27.4607L25.2895 15.0431C25.591 14.7309 25.9868 14.5763 26.3841 14.5608C26.7814 14.5763 27.1772 14.7293 27.4787 15.0431L39.8823 27.4591C40.5177 28.1162 40.7156 28.6171 39.7911 28.6171Z" fill="white"/></svg>
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