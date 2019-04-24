<?php $this->load->view('emails/templates/assets'); ?>
<?php $this->load->view('emails/templates/header'); ?>
<?php //$activity=$this->input->get('activity'); ?>

<div class="content">
    <?php
    if($activity=='checkout'){
        ?>
        <div class="greeting" style="">
            <h2>Hai, <strong><?= ucwords($customer_fullname) ?></strong></h2>
        </div>
        <div class="text-center">
            Terimakasih telah berbelanja di Merchant Sampah Muda
            <br>
            <br>
            Selangkah lagi, pesananmu akan bisa Kamu dapatkan
            <br>
            <br>
            Berikut adalah daftar pesanan kamu :
        </div>
        <div>
            <br>
            <br>
            <?= $bill ?>
            <br>
            <br>
        </div>
        <div class="text-center">

            Pilih metode pembayaran kemudian konfirmasi pesananmu melalui tombol berikut ini :

            <div class="button-action">
                <a href="<?= site_url('cart/payment') ?>" class="btn btn-sampahmuda">Lihat Transaksi</a>
            </div>

        </div>
        <?php
    }else if($activity=='finish'){
        ?>
        <div class="greeting" style="">
            <h2>Hai, <strong><?= ucwords($customer_fullname) ?></strong></h2>
        </div>
        <div class="text-center">
            Terimakasih telah berbelanja di Merchant Sampah Muda
            <br>
            <br>
            Pesanan belanja kamu berhasil terkirim. Pesananmu akan segera diproses oleh Sistem
            <br>
            <br>
            Berikut adalah daftar pesanan kamu :
        </div>
        <div>
            <br>
            <br>
            <?= $bill ?>
            <br>
            <br>
        </div>
        <div class="text-center">

            Kamu bisa melihat informasi pesananmu melalui tombol berikut ini

            <div class="button-action">
                <a href="<?= site_url('order/detail/'.$activity_id) ?>" class="btn btn-sampahmuda">Lihat Transaksi</a>
            </div>

        </div>
        <?php
    }else if($activity=='confirm_order'){
        ?>
        <div class="greeting" style="">
            <h2>Hai, <strong><?= ucwords($customer_fullname) ?></strong></h2>
        </div>
        <div class="text-center">
            Pesanan belanja kamu telah berhasil diproses oleh Sistem
            <br>
            <br>
            Berikut adalah daftar pesanan kamu :
        </div>
        <div>
            <br>
            <br>
            <?= $bill ?>
            <br>
            <br>
        </div>
        <div class="text-center">

            Kamu bisa melihat informasi pesananmu melalui tombol berikut ini

            <div class="button-action">
                <a href="<?= site_url('order/detail/'.$activity_id) ?>" class="btn btn-sampahmuda">Lihat Transaksi</a>
            </div>

        </div>
        <?php
    }
    ?>
</div>

<?php $this->load->view('emails/templates/footer'); ?>
