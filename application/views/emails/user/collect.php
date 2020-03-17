<?php $this->load->view('emails/templates/assets'); ?>
<?php $this->load->view('emails/templates/header'); ?>
<?php //$activity=$this->input->get('activity'); ?>

<div class="content">
    <?php
    if($activity=='post'){
        ?>
        <div class="greeting" style="">
            <h2>Hai, <strong><?= ucwords($customer_fullname) ?></strong></h2>
        </div>
        <div class="text-center">
            Terimakasih sudah memilah sampahmu
            <br>
            <br>
            Agen terdekat kami akan segera menghubungimu
        </div>
        <div class="text-center">
            <div class="image-icon">
                <img src="<?= base_url(DIR_IMG.'sampahmuda/welcome.png') ?>">
            </div>
        </div>
        <div class="text-center" style="margin-bottom: 20px">
            <div>
                Kode Penjualan :
            </div>
            <br>
            <button style="font-size: 20px;font-weight: 700;background-color: #e9e9e9;padding: 10px 20px;border: none">
                <?= PREFIX_ID.$activity_id ?>
            </button>
        </div>
        <div class="text-center">
            Kamu bisa melihat informasi permintaan penjualan sampahmu melalui tombol berikut ini

            <div class="button-action">
                <a href="<?= site_url('collect/detail/'.$activity_id) ?>" class="btn btn-sampahmuda">Lihat Transaksi</a>
            </div>

        </div>
        <?php
    }else if($activity=='recommendation'){
        ?>
        <div class="greeting" style="">
            <h2>Hai, <strong><?= ucwords($customer_fullname) ?></strong></h2>
        </div>
        <div class="text-center">
            Terimakasih telah bersedia menjadi bagian dari pahlawan lingkungan dengan mengirimkan rekomendasi layanan Sampah Muda untuk lokasimu
            <br>
            <br>
            <small>Lokasi Rekomendasi : </small>
            <br>
            <strong><?= ucwords($location) ?></strong>
        </div>
        <div class="text-center">
            <div class="image-icon">
                <img src="<?= base_url(DIR_IMG.'sampahmuda/welcome.png') ?>">
            </div>
        </div>
        <div class="text-center">
            Kami akan memberikanmu informasi seputar perkembangan layanan Sampah Muda di lokasimu

        </div>
        <?php
    }else if($activity=='confirm'){
        ?>
        <div class="greeting" style="">
            <h2>Hai, <strong><?= ucwords($customer_fullname) ?></strong></h2>
        </div>
        <div class="text-center">
            Agen Sampah Muda telah mengkonfirmasi permintaan penjemputan sampahmu
            <br>
            <br>
            <small>Nama Agen</small>
            <br>
            <strong><?= ucwords($customer_fullname) ?></strong>
        </div>
        <div class="text-center">
            <div class="image-icon">
                <img src="<?= base_url(DIR_IMG.'sampahmuda/welcome.png') ?>">
            </div>
        </div>
        <div class="text-center" style="margin-bottom: 20px">
            <div>
                Kode Penjualan :
            </div>
            <br>
            <button style="font-size: 20px;font-weight: 700;background-color: #e9e9e9;padding: 10px 20px;border: none">
                <?= PREFIX_ID.$activity_id ?>
            </button>
        </div>
        <div class="text-center">
            Kamu bisa melihat informasi permintaan penjemputan sampahmu melalui tombol berikut ini

            <div class="button-action">
                <a href="#" class="btn btn-sampahmuda">Lihat Transaksi</a>
            </div>

        </div>
        <?php
    }
    ?>
</div>

<?php $this->load->view('emails/templates/footer'); ?>
