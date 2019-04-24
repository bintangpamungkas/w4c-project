<?php $this->load->view('emails/templates/assets'); ?>
<?php $this->load->view('emails/templates/header'); ?>
<?php //$activity=$this->input->get('activity'); ?>

<div class="content">
    <?php
    if($activity=='pay_collect'){
        ?>
        <div class="greeting" style="">
            <h2>Hai, <strong><?= ucwords($customer_fullname) ?></strong></h2>
        </div>
        <div class="text-center">
            Saldo Trash Pay Kamu berhasil ditambahkan melalui hasil penjualan sampah terpilahmu
        </div>
        <div class="text-center">
            <div class="image-icon">
                <img src="<?= base_url('assets/img/sampahmuda/welcome.png') ?>">
            </div>
        </div>
        <div class="text-center">
            Kamu bisa melihat informasi transaksi melalui tombol di bawah ini
            <br>

            <div style="display: inline-flex;">

                <div class="button-action" style="margin-right: 5px">
                    <a href="#" class="btn btn-grey btn-block">Lihat Riwayat</a>
                </div>

                <div class="button-action" style="margin-left: 5px">
                    <a href="#" class="btn btn-sampahmuda btn-block">Lihat Transaksi</a>
                </div>

            </div>
        </div>
        <?php
    }
    ?>
</div>

<?php $this->load->view('emails/templates/footer'); ?>
