<?php $this->load->view('emails/templates/assets'); ?>
<?php $this->load->view('emails/templates/header'); ?>

<div class="content">
	<?php
		if ($activity == 'register') {
			?>
			<div class="greeting" style="">
				<h2>Hai, <strong><?= ucwords($customer_fullname) ?></strong></h2>
			</div>
			<div class="text-center">
				Terimakasih telah mendaftar di Sampah Muda
				<br>
				<br>
				<?= APP_NAME ?> membantu membuat sampahmu jadi lebih bernilai dan bermanfaat. Kamu dapat menjual sampahmu untuk membeli berbagai macam e-voucher seperti pulsa, token listrik hingga topup saldo go-pay.
			</div>
			<div class="text-center">
				<div class="image-icon">
					<img src="<?= base_url('assets/img/sampahmuda/welcome.png') ?>">
				</div>
			</div>
			<div class="text-center">

				<div class="button-action">
					<a style="margin-bottom: 15px" href="<?= site_url('collect/add') ?>" class="btn btn-md btn-block btn-sampahmuda">Jual Sampah</a>
					<a href="<?= site_url('trashpoint') ?>">Lihat E-Voucher</a>
				</div>

			</div>
			<?php
		} else if ($activity == 'agent') {
			?>
			<div class="greeting" style="">
				<h2>Hai, <strong><?= ucwords($customer_fullname) ?></strong></h2>
			</div>
			<div class="text-center">
				Terimakasih telah mendaftar sebagai agen di Sampah Muda
				<br>
				<br>
				Tim Kami akan segera menghubungimu untuk melakukan verifikasi lebih lanjut mengenai pengajuan Kamu untuk menjadi agen <?= APP_NAME ?>
			</div>
			<div class="text-center">
				<div class="image-icon">
					<img src="<?= base_url('assets/img/sampahmuda/welcome.png') ?>">
				</div>
			</div>
			
			<?php
		} else if ($activity == 'subscribe') {
			?>
			<div class="text-center">
				Terimakasih telah berlangganan informasi di Sampah Muda
				<br>
				<br>
				Kamu akan mendapatkan informasi terbaru seputar layanan dan promo dari Sampah Muda
			</div>
			<div class="text-center">
				<div class="image-icon">
					<img src="<?= base_url('assets/img/sampahmuda/welcome.png') ?>">
				</div>
			</div>
			<div class="text-center">
				Kamu bisa menonaktifkan layanan ini dengan mengklik link di bawah ini

				<div class="button-action">
					<a href="<?= site_url('') ?>" class="">Nonaktifkan</a>
				</div>

			</div>
			<?php
		} else if ($activity == 'reset_password') {
			?>
			<div class="greeting" style="">
				<h2>Hai, <strong><?= ucwords($customer_fullname) ?></strong></h2>
			</div>
			<div class="text-center">
				Kamu mendapatkan email ini karena ada permintaan reset password dari akunmu
			</div>
			<div class="text-center">
				<div class="image-icon">
					<img src="<?= base_url('assets/img/sampahmuda/welcome.png') ?>">
				</div>
			</div>
			<div class="text-center">
				Klik tombol di bawah ini untuk me reset password kamu

				<div class="button-action">
					<a href="<?= site_url('account/reset_password/' . $account_key) ?>" class="btn btn-sampahmuda">Reset Password</a>
				</div>

			</div>
			<?php
		} else if ($activity == 'update') {
			?>
			<div class="greeting" style="">
				<h2>Hai, <strong><?= ucwords($customer_fullname) ?></strong></h2>
			</div>
			<div class="text-center">
				Kamu mendapatkan email ini karena ada perubahan informasi akun Kamu di <?= APP_NAME ?>
				<br>
				<br>
				<small>Aktivitas :</small>
				<br>
				<strong><?= ucwords($user_activity) ?></strong>
			</div>
			<div class="text-center">
				<div class="image-icon">
					<img src="<?= base_url('assets/img/sampahmuda/welcome.png') ?>">
				</div>
			</div>
			<?php
		}
	?>
</div>

<?php $this->load->view('emails/templates/footer'); ?>
