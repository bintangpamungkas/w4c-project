<div class="row hidden">
    <div class="col-xs-12">
        <div class="btn-group" role="group" aria-label="...">
            <a href="<?= site_url('user/me') ?>" class="radius-50 btn btn-default <?= uri_string()=='user/me' ? 'active' : '' ?>"><i class="icon-user" aria-hidden="true"></i>Profile</a>
            <a href="<?= site_url('user/address') ?>" class="radius-50 btn btn-default <?= $this->uri->segment(1)=='user' && $this->uri->segment(2)=='address' ? 'active' : '' ?>"><i class="icon-location-pin" aria-hidden="true"></i>My Address</a>
            <a href="<?= site_url('order') ?>" class="radius-50 btn btn-default <?= $this->uri->segment(1)=='order' ? 'active' : '' ?>"><i class="icon-basket" aria-hidden="true"></i>Orders</a>
            <a href="<?= site_url('wallet') ?>" class="radius-50 btn btn-default <?= $this->uri->segment(1)=='wallet' ? 'active' : '' ?>"><i class="icon-wallet" aria-hidden="true"></i>Trash Pay</a>
            <a href="<?= site_url('collect') ?>" class="radius-50 btn btn-default <?= $this->uri->segment(1)=='collect' ? 'active' : '' ?>"><i class="icon-bag" aria-hidden="true"></i>Collects</a>
        </div>
    </div>

    <?php
    if($login_user->status<1){
    ?>
    <div class="clearfix">
        <div class="col-md-12">
            <div class="alert alert-warning">
                <div class="clearfix">
                    <h6 class="pull-left" style="margin-bottom: 0">
                        <i class="icon-info fa-before"></i>
                        Akun Kamu belum teraktivasi. Klik link di samping untuk mengirim aktivasi ke Email Kamu
                    </h6>
                    <span>
                    <a href="<?= site_url('account/sendActivationEmail') ?>" class="btn btn-xs btn-warning-filled pull-right">Aktivasi</a>
                </span>
                </div>
            </div>
        </div>
    </div>
<?php
}
?>
</div>
