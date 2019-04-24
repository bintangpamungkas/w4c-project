<?php
$this->load->view('templates/breadcrumb');
echo $this->session->flashdata('user_message');
?>
<section class="mainContent clearfix userProfile">
    <div class="container">
        <?php
        $this->load->view('users/menu');
        ?>
        <div class="row">
            <div class="col-xs-12">
                <div class="innerWrapper">
                    <div class="orderBox userProfile">

                        <?php
                        if(count($addresses)==0){
                            ?>
                            <div class="media text-center">
                                <br>
                                <br>
                                <i class="icon-location-pin" style="font-size: 100px;color: rgba(0,0,0,0.1)"></i>
                                <br>

                                <br>
                                <p class="text-muted no-margin">You have no address</p>
                                <br>
                                <br>
                                <a data-toggle="modal" href="#modalAddress" class="addAddress   btn btn-primary box-to-radius-50"><i class="fa fa-plus-circle fa-before"></i> Tambah Alamat</a>
                            </div>
                            <?php
                        }else{
                            ?>

                            <h4>
                                <a data-toggle="modal" href="#modalAddress" class="addAddress pull-right btn btn-primary-filled box-to-radius-50"><i class="fa fa-plus-circle fa-before"></i> Tambah Alamat</a>
                                My Address
                            </h4>
                            <br>
                            <div class="table-responsive">
                                <table class="table" id="address-list">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nama Alamat</th>
                                        <th>Alamat</th>
                                        <th>Kota</th>
                                        <th class="text-right">Opsi</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    $number=1;
                                    foreach ($addresses as $address) {
                                        ?>
                                        <tr>
                                            <td><?= $number++ ?></td>
                                            <td><?= ucwords($address->address_name) ?></td>
                                            <td><?= ucwords($address->address) ?></td>
                                            <td><?= ucwords($address->city) ?></td>
                                            <td class="text-right">
                                                <button
                                                        data-address_id="<?= $address->address_id ?>"
                                                        data-address="<?= $address->address ?>"
                                                        data-kelurahan_id="<?= $address->kelurahan_id ?>"
                                                        data-kecamatan_id="<?= $address->kecamatan_id ?>"
                                                        data-city_id="<?= $address->city_id ?>"
                                                        data-province_id="<?= $address->province_id ?>"
                                                        data-address_name="<?= $address->address_name ?>"
                                                        data-toggle="modal" href="#modalAddress" class="editAddress btn-social btn-info-filled btn-circle"><i class="icon-pencil"></i></button>
                                                <button data-url="<?= site_url('user/deleteAddress') ?>" data-address_id="<?= $address->address_id ?>" type="button" class="btn-remove-address-list btn-social btn-pinterest-filled btn-circle"><i class="icon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <?php
                                    }
                                    ?>
                                    </tbody>
                                </table>
                            </div>






                            <?php
                        }
                        ?>

                    </div>
                </div>
            </div>
        </div>
</section>

<div class="modal fade" id="modalAddress" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content" style="border-radius: 0">
            <div class="modal-body" style="min-height: 200px">

                <script>
                    $(document).on('click', '.editAddress', function(){
                        $('#contactForm').attr('action', '<?= site_url('User/updateAddress') ?>');
                        $('.submit_form_button').html('Perbarui');
                        $('.form_title').html('Perbarui');
                        $('#form_address_id').val($(this).data('address_id'));
                        $('#form_address').val($(this).data('address'));
                        //$('#form_kelurahan_id').val($(this).data('kelurahan_id'));
                        //$('#form_kecamatan_id').val($(this).data('kecamatan_id'));
                        //$('#form_city_id').val($(this).data('city_id'));
                        //$('#form_province_id').val($(this).data('province_id'));
                        $('#form_address_name').val($(this).data('address_name'));

                        var province_id=$(this).data('province_id');
                        var city_id=$(this).data('city_id');
                        var kecamatan_id=$(this).data('kecamatan_id');
                        var kelurahan_id=$(this).data('kelurahan_id');

                        $('#option_kelurahan').html('<option>Loading ...</option>');
                        $('#option_kecamatan').html('<option>Loading ...</option>');
                        $('#option_city').html('<option>Loading ...</option>');
                        $('#option_province').html('<option>Loading ...</option>');

                        //alert(province_id+' - '+city_id+' - '+kecamatan_id+' - '+kelurahan_id);

                        $.ajax({
                            type: "POST",
                            url: '<?= site_url('Location/getKelurahan') ?>',
                            data: {'id': kecamatan_id, 'kelurahan_id': kelurahan_id},
                            cache:false,
                            success:
                                function(data){
                                    //alert(data);

                                    $('#option_kelurahan').html(data);
                                }
                        });

                        $.ajax({
                            type: "POST",
                            url: '<?= site_url('Location/getKecamatan') ?>',
                            data: {'id': city_id, 'kecamatan_id': kecamatan_id},
                            cache:false,
                            success:
                                function(data){
                                    //alert(data);

                                    $('#option_kecamatan').html(data);
                                }
                        });

                        $.ajax({
                            type: "POST",
                            url: '<?= site_url('Location/getCity') ?>',
                            data: {'id': province_id, 'city_id': city_id},
                            cache:false,
                            success:
                                function(data){
                                    //alert(data);

                                    $('#option_city').html(data);
                                }
                        });

                        $.ajax({
                            type: "POST",
                            url: '<?= site_url('Location/getProvince') ?>',
                            data: {'id': province_id},
                            cache:false,
                            success:
                                function(data){
                                    //alert(data);

                                    $('#option_province').html(data);
                                }
                        });

                    });

                    $(document).on('click', '.addAddress', function(){
                        var province_id=$(this).data('province_id');

                        $.ajax({
                            type: "POST",
                            url: '<?= site_url('Location/getProvince') ?>',
                            data: {'id': province_id},
                            cache:false,
                            success:
                                function(data){
                                    //alert(data);

                                    $('#option_province').html(data);
                                }
                        });

                        $('#contactForm').attr('action', '<?= site_url('User/addAddress') ?>');
                        $('.submit_form_button').html('Tambah');
                        $('.form_title').html('Tambah');
                        $('input').val('');
                        $('textarea').val('');
                        $('select').html('<option>-- pilih --</option>');
                    })
                </script>

                <div class="clearfix" style="padding-top: 0">
                    <div class="userProfile" style="padding-top: 0">
                        <div class="innerWrapper no-margin">
                            <form id="contactForm" class="submit_form contact-form-2 no-margin" method="POST" role="form">
                                <div class="clearfix">
                                    <h4 class="sub-title"><span class="form_title"></span> Alamat</h4>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <input type="hidden" id="form_address_id" name="address_id">
                                                        <label>province</label>
                                                        <select id="option_province" class="option_id form-control" name="province_id" data-target="option_city" data-url="<?= site_url('Location/getCity') ?>" required>
                                                            <option value="null">-- select --</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>city</label>
                                                        <select id="option_city" class="option_location option_id form-control" name="city_id" data-target="option_kecamatan" data-url="<?= site_url('Location/getKecamatan') ?>" required>
                                                            <option value="null">-- select --</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>kecamatan</label>
                                                        <select id="option_kecamatan" class="option_location option_id form-control" name="kecamatan_id" data-target="option_kelurahan" data-url="<?= site_url('Location/getKelurahan') ?>" required>
                                                            <option value="null">-- select --</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>kelurahan</label>
                                                        <select id="option_kelurahan" class="option_get_schedule option_location form-control" name="kelurahan_id" data-url="<?= site_url('SM_Agent/getSchedules') ?>" required>
                                                            <option value="null">-- select --</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>address name</label>
                                                <input id="form_address_name" type="text" class="form-control" placeholder="Address Name" required="" name="address_name">
                                            </div>
                                            <div class="form-group">
                                                <label>address</label>
                                                <textarea id="form_address" class="form-control" name="address" placeholder="address" required style="height: 153px!important;"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix col-md-6 col-md-offset-3" style="margin-bottom: 20px">
                                        <div class="col-md-6">
                                            <a data-dismiss="modal" class="btn btn-block btn-lg btn-default-filled btn-pill no-text-transform">Batal</a>
                                        </div>
                                        <div class="col-md-6">
                                            <button class="submit_form_button btn btn-block btn-lg btn-primary-filled btn-pill no-text-transform">Perbarui</button>
                                        </div>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>