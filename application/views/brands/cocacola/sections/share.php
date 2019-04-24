
<section class="g-bg-white g-pa-30">

    <div id="share" style="height: 10px;position: absolute;width: 80%;margin-top: -170px"></div>

    <div class="container">
        <div class="row">
            <div class="col-md-6 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                <h3 style="margin-bottom: 0;padding-top: 20px">
                    <?= lang('share_title') ?>
                </h3>
                <small class="text-muted">
                    <?= lang('share_subtitle') ?>
                </small>
            </div>
            <div class="col-md-6">
                <div class="<?= $this->agent->is_mobile() ? 'text-center' : 'text-right' ?> pt-4">

                    <?php
                    $social=share_social_media();
                    foreach ($social as $social):
                        ?>
                        <a title="Share on <?= $social['social_name'] ?>" target="_blank" class="<?= $social['social_color'] ?> u-icon-v2 g-rounded-50x g-mr-15 g-mb-15" href="<?= $social['social_url'] ?> <?= site_url() ?>">
                            <i class="<?= $social['social_icon'] ?>"></i>
                        </a>
                        <?php
                    endforeach;
                    ?>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- End About -->
