<!-- card -->
<section style="background-color:#FAFAFA!important" class="<?= $this->agent->is_mobile() ? 'g-pt-80 g-pb-50' : 'g-bg-white g-pb-50 g-pt-80' ?>">
    <div class="<?= $this->agent->is_mobile() ? '' : 'container' ?>">
        <div class="row mx-auto" style="margin-top:-30px">
            <div class="col-md-6 mt-2">
                <div class="card mx-auto " style="width: <?= $this->agent->is_mobile() ? '100%' : '70%' ?>;height: 450px;box-shadow: 0 .125rem .25rem rgba(0,0,0,.075)!important;">
                    <img height="220px" src="<?= get_image(DIR_BG . 'internship/' . $copy->card_batch2->image) ?>" alt="<?= $copy->card_batch2->image ?>" style="width:100%; object-fit:cover;margin-left: auto; margin-right: auto;">
                    <div class="card-body ml-2">
                        <div class="g-font-asap g-color-black text-uppercase text-left g-font-weight-600 g-font-size-24 g-mb-10"><?= $copy->card_batch2->title ?></div>
                        <hr class="g-width-70 g-mt-10 g-mb-10 g-brd-2 w4c-brd-blue ml-1" style="width: 170px!important">
                        <p class="card-text g-font-asap g-color-black g-font-weight-600"><?= $copy->card_batch2->subtitle ?></p>
                        <p ><i class="fa fa-calendar-o mr-2" style="color:#17A2B8"></i><?= $copy->card_batch2->time ?></p>
                        <p ><i class="fa fa-user-circle-o mr-2" style="color:#17A2B8"></i><?= $copy->card_batch2->person ?></p>
                        <a href="#" class="btn btn-default g-color-white g-brd-2 g-brd-white-opacity-0_2 g-font-size-12 text-uppercase  g-rounded-50 g-width-190 g-height-35" style="background-color:#898989;z-index: 5;margin-top:-720px;font-weight: 700;width:161px;margin-left:<?= $this->agent->is_mobile() ? '140px' : '170px' ?>"><?= $copy->card_batch2->info ?></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mt-<?= $this->agent->is_mobile() ? '5': '2'?>">
                <div class="card mx-auto " style="width: <?= $this->agent->is_mobile() ? '100%' : '70%' ?>;height:450px;box-shadow: 0 .125rem .25rem rgba(0,0,0,.075)!important;">
                    <img height="220px" src="<?= get_image(DIR_BG . 'internship/' . $copy->card_batch1->image) ?>" alt="<?= $copy->card_batch1->image ?>" style="width:100%; object-fit:cover;margin-left: auto; margin-right: auto;">
                    <div class="card-body ml-2">
                        <div class="g-font-asap g-color-black text-uppercase text-left g-font-weight-600 g-font-size-24 g-mb-10"><?= $copy->card_batch1->title ?></div>
                        <hr class="g-width-70 g-mt-10 g-mb-10 g-brd-2 w4c-brd-blue ml-1" style="width: 170px!important">
                        <p><i class="fa fa-calendar-o mr-2" style="color:#17A2B8"></i><?= $copy->card_batch1->time ?></p>
                        <p style="color:#17A2B8"><?= $copy->card_batch1->subtitle ?></p>
                        <div  class="remind-me text-<?= $this->agent->is_mobile() ? 'center' : 'left' ?>">
                            <a href="https://docs.google.com/forms/d/e/1FAIpQLScxaQ4EkQ0pYM5uDc_8OcM27zRHymUKzrDODAD6jChIwPJ7AA/viewform?usp=sf_link" class="btn btn-info g-color-white g-brd-2 g-brd-white-opacity-0_2 g-font-size-15 g-rounded-50 g-width-200 g-height-40"><?= $copy->card_batch1->button ?></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end card -->