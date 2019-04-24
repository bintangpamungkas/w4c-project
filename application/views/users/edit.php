<?php
$this->load->view('templates/breadcrumb');
?>
<section class="mainContent clearfix userProfile" style="background-color: white!important;">
    <div class="container">
        <br>

        <div class="row">

            <div class="col-md-12">
                <div class="userProfile">
                    <form id="contactForm" class="submit_form contact-form-2 no-margin" action="<?= site_url('User/updateProfile') ?>" method="POST" role="form">
                        <div class="clearfix">
                            <div class="row">
                                <div class="col-xs-6">
                                    <div class="form-group hidden">
                                        <label>user_id</label>
                                        <input class="form-control" value="<?= $user->user_id ?>" placeholder="user_id" name="user_id">
                                    </div>
                                    <div class="form-group hidden">
                                        <label>username</label>
                                        <input class="form-control" value="<?= $user->username ?>" placeholder="username" name="username">
                                    </div>
                                    <div class="form-group">
                                        <label>nama lengkap</label>
                                        <input class="form-control" value="<?= $user->full_name ?>" placeholder="nama lengkap" required name="full_name">
                                    </div>
                                    <div class="form-group">
                                        <label>jenis kelamin</label>
                                        <select class="form-control" name="gender">
                                            <option value="1" <?= $user->gender==1 ? 'selected' : '' ?>>Male</option>
                                            <option value="2" <?= $user->gender==2 ? 'selected' : '' ?>>Female</option>
                                            <option value="3" <?= $user->gender==3 ? 'selected' : '' ?>>Other</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <div class="form-group">
                                        <label>telephone</label>
                                        <input type="number" class="form-control" value="<?= $user->telephone ?>" placeholder="telephone" required name="telephone">
                                    </div>
                                    <div class="form-group">
                                        <label>tanggal lahir</label>
                                        <input type="date" class="form-control" value="<?= $user->birth ?>" placeholder="birth" required name="birth">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <button class="submit_form_button btn btn-lg btn-primary-filled box-to-radius-50 no-text-transform pull-right">Simpan</button>
                                </div>
                            </div>
                            <br>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</section>