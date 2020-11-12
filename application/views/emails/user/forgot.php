<?php $this->load->view('emails/templates/assets'); ?>
<?php $this->load->view('emails/templates/header'); ?>
<?php //$activity=$this->input->get('activity'); ?>

  <img class="logo" src="<?php echo base_url(DIR_LOGO.'logo-name.png') ?>" alt="">
  <br>
  <img class="icon" src="<?php echo base_url(DIR_ILLU.'lock.svg') ?>" alt="">
  <div class="title">
    Atur Ulang Kata Sandi
  </div>
  <div class="greeting" style="">

  </div>
  <p>
    Hai, <strong><?php echo ucwords($customer_fullname) ?></strong>. Kamu telah meminta perubahan password. Silahkan klik link ini untuk mengubah password kamu:
  </p>
  <div class="button-action">
    <a href="<?php echo base_url('reset-password/'.$account_key) ?>" class="btn btn-green">Atur Ulang Sekarang</a>
  </div>
  <br>
  <p>
    Jika Anda tidak meminta mengubah katasamdi Anda abaikan email ini.
  </p>

<?php $this->load->view('emails/templates/footer'); ?>
