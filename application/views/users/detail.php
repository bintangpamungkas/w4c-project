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

                    <div class="alert alert-success hidden" id="user_message_block">
                        <span id="user_message"></span>
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                            <small><i class="icon-close"></i></small>
                        </button>
                    </div>

                    <div class="row">

                        <div class="col-md-2">

                            <div class="thumbnail">
                                <button id="btn-choose-filex" type="button" class="hidden btn-social btn-twitter-filled btn-circle" style="position: absolute;right: 25px;margin-top: 10px"><i class="fa fa-image"></i></button>
                                <img class="img-upload" src="<?= $user->photo!='' ? base_url(DIR_IMG.'users/'.$user->photo) : base_url(DIR_IMG.'products/no-image.png') ?>" alt="profile-image" style="height: 153px;width: 153px">
                                <form class="submit_form_image_user" data-url="<?= site_url('User/uploadImage') ?>" enctype="multipart/form-data" method="post" accept-charset="iso-8859-1">
                                    <div class="hidden">
                                        <input name="user_id" value="<?= ($user->user_id) ?>">
                                        <input type="file" id="imgInp" name="image" class="btn btn-primary-filled">
                                        <input id="imageName" class="form-control" readonly placeholder="Img">
                                    </div>
                                    <div class="caption">
                                        <button type="button" id="btn-choose-file" class="btn btn-primary btn-block"><i class="fa fa-image fa-before"></i> Change</button>
                                        <button id="btn-choose" class="hidden btn btn-info-filled btn-block"><i class="fa fa-check-circle fa-before"></i> Save</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-10">
                            <h3>
                                Welcome <span><?= ucwords($user->full_name) ?></span>
                                <span class="pull-right">
                                    <a class="btn btn-sm btn-primary-filled box-to-radius-50" href="#modalEditProfile" data-toggle="modal"><i class="icon-pencil fa-before"></i> Edit Profile</a>
                                </span>
                            </h3>
                            <br>
                            <div class="row">
                                <div class="col-md-6">

                                    <div class="row form-group">
                                        <div class="col-md-4">
                                            <label><i class="icon-user-following fa-before"></i> username</label>
                                        </div>
                                        <div class="col-md-8"><?= ($user->username) ?></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-4">
                                            <label><i class="icon-envelope-open fa-before"></i> email</label>
                                        </div>
                                        <div class="col-md-8"><?= ($user->email) ?></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-4">
                                            <label><i class="icon-phone fa-before"></i> telephone</label>
                                        </div>
                                        <div class="col-md-8"><?= view_telephone($user->telephone, true) ?></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-4">
                                            <label><i class="icon-calendar fa-before"></i> birth</label>
                                        </div>
                                        <div class="col-md-8"><?= view_date($user->birth, false, false, 'id') ?></div>
                                    </div>

                                </div>
                                <div class="col-md-6">

                                    <div class="row form-group">
                                        <div class="col-md-4">
                                            <label><i class="icon-user<?= ($user->gender==1 ? '' : '-female') ?> fa-before"></i> gender</label>
                                        </div>
                                        <div class="col-md-8"><?= ($user->gender==1 ? 'Male' : ($user->gender==2 ? 'Female' : 'Other')) ?></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-4">
                                            <label><i class="icon-arrow-right-circle fa-before"></i> registered at</label>
                                        </div>
                                        <div class="col-md-8"><?= view_date($user->when_register, true, false, 'id') ?></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-4">
                                            <label><i class="icon-tag fa-before"></i> referral code</label>
                                        </div>
                                        <div class="col-md-8"><?= ($user->referral_code) ?></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-4">
                                            <label><i class="icon-check fa-before"></i> is subscribe</label>
                                        </div>
                                        <div class="col-md-8"><?= ($user->is_subscribe==1 ? 'Yes' : 'No') ?></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalEditProfile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content" style="border-radius: 0">
                <div class="modal-body" style="min-height: 200px">

                    <div class="clearfix" style="padding-top: 0">
                        <div class="userProfile" style="padding-top: 0">
                            <div class="innerWrapper no-margin">
                                <form id="contactForm" class="submit_form contact-form-2 no-margin" action="<?= site_url('User/updateProfile') ?>" method="POST" role="form">
                                    <div class="clearfix">
                                        <h4 class="sub-title">Edit Profile</h4>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group hidden">
                                                    <label>user_id</label>
                                                    <input class="form-control" value="<?= $user->user_id ?>" placeholder="user_id" name="user_id">
                                                </div>
                                                <div class="form-group">
                                                    <label>username</label>
                                                    <input class="form-control" value="<?= $user->username ?>" placeholder="username" name="username">
                                                </div>
                                                <div class="form-group">
                                                    <label>full name</label>
                                                    <input class="form-control" value="<?= $user->full_name ?>" placeholder="full_name" required name="full_name">
                                                </div>
                                                <div class="form-group">
                                                    <label>gender</label>
                                                    <select class="form-control" name="gender">
                                                        <option value="1" <?= $user->gender==1 ? 'selected' : '' ?>>Male</option>
                                                        <option value="2" <?= $user->gender==2 ? 'selected' : '' ?>>Female</option>
                                                        <option value="3" <?= $user->gender==3 ? 'selected' : '' ?>>Other</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>telephone</label>
                                                    <input type="number" class="form-control" value="<?= $user->telephone ?>" placeholder="telephone" required name="telephone">
                                                </div>
                                                <div class="form-group">
                                                    <label>birth</label>
                                                    <input type="date" class="form-control" value="<?= $user->birth ?>" placeholder="birth" required name="birth">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix col-md-12" style="margin-bottom: 20px">
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

</section>
