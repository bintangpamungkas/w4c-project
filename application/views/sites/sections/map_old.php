
<section id="map" class="g-pt-100 g-pb-100" style="padding-bottom: 0!important;">
    <script>
        var styles =[
            {
                featureType: "poi",
                elementType: "labels",
                stylers: [
                    { visibility: "off" }
                ]
            }
        ];

        var currentLatLng = {lat: -6.31705, lng: 107.0013};

        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 17,
                styles: styles,
                center:currentLatLng
            });
            setMarkers(map);
        }

        var dropPoints = [["Drop Point", -6.31705, 107.0013, "Jl. Alun Alun Utara, Padurenan, Mustikajaya, Kota Bks,"]];

        function setMarkers(map) {
            //MARKER FOT dropPoint
            for (var i = 0; i < dropPoints.length; i++) {
                var dropPoint = dropPoints[i];
                var marker = new google.maps.Marker({
                    position: {lat: dropPoint[1], lng: dropPoint[2]},
                    map: map,
                    title: dropPoint[0],
                });
                var infowindow = new google.maps.InfoWindow();
                var content = "<div style='width:200px;min-height:40px;border-radius:10px'><h3>" + dropPoint[0] + "</h3><p>"+dropPoint[3]+"...</p><a target='_blank' href='https://www.google.com/maps/dir/"+currentLat+","+currentLng+"/"+dropPoint[1]+","+dropPoint[2]+"'>Direction</a></div>"
                google.maps.event.addListener(marker,'click', (function(marker,content,infowindow){
                    return function() {
                        infowindow.setContent(content);
                        infowindow.open(map,marker);
                    };
                })(marker,content,infowindow));

                marker.addListener('click', function() {
                    map.setZoom(19);
                    map.setCenter(marker.getPosition());
                });
            }
        }

    </script>
    <div class="text-center g-mb-50">
        <h2 class="h1 g-color-black g-font-weight-600">DROP POINT</h2>
        <p class="lead">This is where we begin to visualize your napkin sketches and make them into pixels.</p>
    </div>

    <div class="col-md-12" style="position: absolute;margin-top: 76px;display: flex">
        <!-- Box Shadow -->
        <div class="col-md-12">
            <div class="container">
                <div class="u-shadow-v1-5 g-line-height-2 g-pa-20 g-mb-30 bg-white col-md-4" role="alert" style="position: absolute;z-index: 99;box-shadow: 0px -5px 13px 0px rgba(0, 0, 0, 0.2)!important;">
                    <h4 class="g-color-black g-font-weight-600" style="margin-bottom: 15px">Daftar Lokasi</h4>


                    <div class="shortcode-html">
                        <!-- Text Inputs & Textareas -->
                        <form class="g-brd-gray-light-v4">
                            <div class="form-group">
                                <div class="input-group u-input-group-v2 g-rounded-25">
                                    <input id="fullName2" class="form-control u-form-control border-1 g-rounded-left-30 g-px-12 g-py-8" name="full-name" type="text">
                                    <label for="fullName2">Cari Nama / Alamat Drop Point</label>
                                    <div class="input-group-addon border-0 p-0">
                                        <button class="btn u-btn-blue g-rounded-right-30 g-px-12 g-py-8" type="submit" role="button" style="padding-top: 10px!important;padding-bottom: 10px!important;padding-right: 19px!important;">Cari</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="js-scrollbar card-block  u-info-v1-1 g-bg-white-gradient-v1--after g-height-400 g-pa-0" style="height: 330px!important;">
                        <ul class="list-unstyled">
                            <?php
                            $x = 1;
                            $number = 1;

                            while($x <= 6) :
                                ?>
                                <li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20 g-mb-10">
                                    <div class="g-mt-2">
                                        <img class="g-width-50 g-height-50 rounded-circle" src="<?= base_url(DIR_ASSET.'/img-temp/100x100/img17.jpg') ?>" alt="Image Description">
                                    </div>
                                    <div class="align-self-center g-px-10" style="width: 100%">
                                        <span class="u-label u-label--sm g-px-10 pull-right g-color-black-opacity-0_3">10 KM</span>
                                        <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                                            <span class="g-mr-5">Drop Point</span>
                                        </h5>
                                        <small class="m-0">Jl. Bekasi Raya No. 19</small>
                                        <div class="text-right">
                                            <a href="#" class="btn btn-sm u-btn-facebook g-rounded-50">
                                                Petunjuk Arah <i class="fa fa-map-signs ml-1"></i>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <?php
                                $x++;
                            endwhile;
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div  id="map" class="map" style="height: 500px;display: flex;flex-wrap: wrap;"></div>
</section>
<!-- About -->
