<div class="modal fade" id="modalCart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="border-radius: 0">
            <div class="modal-body" style="min-height: 200px">
                <div class="clearfix text-center" style="padding-top: 0">
                    <div class="userProfile" style="padding-top: 0">
                        <div class="innerWrapper text-center no-margin no-border no-padding">
                            <div class="clearfix">
                                <div id="addCart" class="modal_content hidden">
                                    <i class="icon-basket-loaded" style="font-size: 150px;color: #f1f1f1"></i>
                                    <br>
                                    <br>
                                    <h3>Whoa!</h3>
                                    <p style="margin-bottom: 10px">Barang pilihanmu berhasil ditambahkan dalam keranjang</p>
                                    <br>
                                    <div class="clearfix col-md-12" style="margin-bottom: 20px">
                                        <div class="col-md-6 col-xs-6">
                                            <a data-dismiss="modal" class="btn btn-block btn-lg btn-primary-filled btn-pill no-text-transform">Lanjut Belanja</a>
                                        </div>
                                        <div class="col-md-6 col-xs-6">
                                            <a href="<?= site_url('cart') ?>" class="btn btn-block btn-lg btn-default-filled btn-pill no-text-transform">Ke Keranjang Belanja</a>
                                        </div>
                                    </div>
                                </div>
                                <div id="updateCart" class="modal_content hidden">
                                    <i class="icon-basket-loaded" style="font-size: 150px;color: #f1f1f1"></i>
                                    <br>
                                    <br>
                                    <h3>Whoa!</h3>
                                    <p style="margin-bottom: 10px">Keranjang belanjamu berhasil diperbarui</p>
                                    <br>
                                    <div class="clearfix col-md-12" style="margin-bottom: 20px">
                                        <div class="col-md-4 col-md-offset-4 col-xs-12">
                                            <a data-dismiss="modal" class="btn btn-block btn-lg btn-primary-filled btn-pill no-text-transform">Lanjut Belanja</a>
                                        </div>
                                    </div>
                                </div>
                                <div id="removeCart" class="modal_content hidden">
                                    <i class="icon-basket-loaded" style="font-size: 150px;color: #f1f1f1"></i>
                                    <br>
                                    <br>
                                    <h3>Whoa!</h3>
                                    <p style="margin-bottom: 10px">Keranjang belanjamu berhasil diperbarui</p>
                                    <br>
                                    <div class="clearfix col-md-12" style="margin-bottom: 20px">
                                        <div class="col-md-4 col-md-offset-4 col-xs-12">
                                            <a data-dismiss="modal" class="btn btn-block btn-lg btn-primary-filled box-to-radius-50 no-text-transform">Lanjut Belanja</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <button type="button" class="close hidden" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </div>
    </div>
    <div class="close-modal"></div>
</div>

<div class="modal animated fadeIn" id="loginAlert" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog animated fadeInDownBig" role="document">
        <div class="modal-content round-xs">
            <div class="modal-body" style="min-height: 200px">
                <div class="clearfix text-center" style="padding-top: 0">
                    <div class="userProfile" style="padding-top: 0">
                        <div class="innerWrapper text-center no-margin no-padding no-border">
                            <div class="row">
                                <div class="col-xs-12 col-md-8 col-md-offset-2" style="padding: 30px 30px 15px 30px">
                                    <i class="icon-user" style="font-size: 50px"></i>
                                    <br>
                                    <br>
                                    <h3>Oops!</h3>
                                    <p style="margin-bottom: 10px">Kamu belum masuk ke akun Kamu</p>
                                    <p style="margin-bottom: 10px">
                                        Yuk masuk dulu untuk bisa menjelajahi berbagai manfaat di <?= APPNAME ?>
                                    </p>
                                </div>
                                <div class="clearfix col-md-8 col-md-offset-2 col-xs-10 col-xs-offset-1">
                                    <div class="row" style="margin-bottom: 15px">
                                        <div class="col-md-6 col-xs-12" style="margin-bottom: 10px">
                                            <a <?= uri_string()=='account/sign' ? 'data-dismiss="modal"' : 'href="'.site_url('account/sign?'.uri_string()).'"' ?> class="btn btn-block btn-lg btn-primary-filled box-to-radius-50 no-text-transform">Masuk</a>
                                        </div>
                                        <div class="col-md-6 col-xs-12">
                                            <a href="<?= site_url('collect/add') ?>" class="btn btn-block btn-lg btn-default box-to-radius-50 no-text-transform">Jual sampah dulu aja</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="close-modal"></div>
</div>

<div class="modal fade" id="modalGlobalAlert" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content round-xs">
            <div class="modal-body" style="min-height: 200px">
                <div class="clearfix text-center" style="padding-top: 0">
                    <div class="userProfile" style="padding-top: 0">
                        <div class="innerWrapper text-center no-margin no-padding no-border">
                            <div class="clearfix">
                                <i id="alert_icon" style="font-size: 80px;color: #f1f1f1"></i>
                                <br>
                                <br>
                                <h3 id="alert_title"></h3>
                                <p id="alert_content" style="margin-bottom: 10px"></p>
                                <br>
                                <div class="clearfix col-md-6 col-md-offset-3">
                                    <div class="col-md-12">
                                        <a id="button-dismiss" style="margin-bottom: 10px" data-dismiss="modal" class="btn hidden btn-block btn-lg btn-primary-filled box-to-radius-50 no-text-transform">Oke</a>
                                        <a id="button-redirect" style="margin-bottom: 10px" class="btn hidden btn-block btn-lg btn-primary-filled box-to-radius-50 no-text-transform">Oke</a>
                                    </div>
                                </div>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>

                <button type="button" class="close hidden" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </div>
    </div>
    <div class="close-modal"></div>
</div>


<div class="modal fade" id="modalWelcome" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content round-xs bg-grey">
            <div class="modal-body" style="min-height: 200px">
                <div class="clearfix text-center" style="padding-top: 0">

                    <h4 style="margin: 10px 0">Yuk coba dan jelajahi</h4>

                    <div class="row">
                        <div class="col-xs-12 col-md-8 col-md-offset-2">
                            <div class="row">
                                <div class="col-xs-6" style="padding-right: 7.5px">
                                    <div class="clearfix" style="margin-top: 15px">
                                        <a href="<?= site_url('collect/add') ?>">
                                            <div class="bg-white" style="padding: 20px;border-radius: 5px;-webkit-box-shadow: 0.05px 0.05px 10px 0.05px rgba(0,0,0,0.1);box-shadow: 0.05px 0.05px 10px 0.05px rgba(0,0,0,0.1);">
                                                <i class="icon-refresh text-success" style="font-size: 35px"></i>
                                                <div class="text-muted" style="padding-top: 10px;font-size: 12px;">Jual Sampah</div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-xs-6" style="padding-left: 7.5px">
                                    <div class="clearfix" style="margin-top: 15px">
                                        <span class="badge bg-red" style="font-size: 8px;position: absolute;margin-top: -5px;margin-left: <?= $this->agent->is_mobile() ? '40px' : '66px' ?>;">
                                            Baru
                                        </span>
                                        <a href="<?= site_url('trashpoint') ?>">
                                            <div class="bg-white" style="padding: 20px;border-radius: 5px;-webkit-box-shadow: 0.05px 0.05px 10px 0.05px rgba(0,0,0,0.1);box-shadow: 0.05px 0.05px 10px 0.05px rgba(0,0,0,0.1);">
                                                <i class="icon-wallet text-success" style="font-size: 35px"></i>
                                                <div class="text-muted" style="padding-top: 10px;font-size: 12px;">Trash Point</div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-xs-6" style="padding-right: 7.5px">
                                    <div class="clearfix" style="margin-top: 15px">
                                        <a onclick="buttonAlert('Fitur ini akan segera datang')">
                                            <div class="bg-white" style="padding: 20px;border-radius: 5px;-webkit-box-shadow: 0.05px 0.05px 10px 0.05px rgba(0,0,0,0.1);box-shadow: 0.05px 0.05px 10px 0.05px rgba(0,0,0,0.1);">
                                                <i class="icon-location-pin text-success" style="font-size: 35px"></i>
                                                <div class="text-muted" style="padding-top: 10px;font-size: 12px;">Cari Lokasi</div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-xs-6" style="padding-left: 7.5px">
                                    <div class="clearfix" style="margin-top: 15px">
                                        <a onclick="buttonAlert('Fitur ini akan segera datang')">
                                            <div class="bg-white" style="padding: 20px;border-radius: 5px;-webkit-box-shadow: 0.05px 0.05px 10px 0.05px rgba(0,0,0,0.1);box-shadow: 0.05px 0.05px 10px 0.05px rgba(0,0,0,0.1);">
                                                <i class="icon-calculator text-success" style="font-size: 35px"></i>
                                                <div class="text-muted" style="padding-top: 10px;font-size: 12px;">Hitung Sampah</div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div style="margin: 25px 0">Mau tau info tips kelola sampah?</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-8 col-md-offset-2">
                            <div class="row">
                                <div class="col-xs-6 col-xs-offset-3" style="padding-left: 7.5px">
                                    <a href="#" class="btn btn-block btn-primary-filled box-to-radius-50">Yuk Cari Tau</a>
                                </div>
                            </div>
                            <br>
                        </div>
                    </div>

                </div>

                <button type="button" class="close hidden" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </div>
    </div>
    <div class="close-modal"></div>
</div>