<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
    <div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/sleek_bg_image_black.png') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
    <div style="background:radial-gradient(circle farthest-side at 80% 60%, rgba(66,195,120,0.67), rgba(14,105,148,0.92))">
        <div class="container g-pt-195 g-pb-70 text-center">
            <br>
            <div class="g-font-size-<?= $this->agent->is_mobile() ? '25' : '35' ?> g-color-white g-font-weight-600 mb-0 g-line-height-1_2">
                LET'S <span class="g-color-aqua">BE THE LEADER</span> TO TAKE REAL ACTION ON<br>WASTE & SUSTAINABILITY EFFORT
            </div>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-white">
            <div class="g-pt-20 g-color-white-opacity-0_7">
                Increasing Waste Segregation & Responsible Waste Management at Source with Your Brand
            </div>
        </div>
    </div>
</section>

<?php
$services=[
    [
        '4c_list_title' => 'Brand Sustainability Page',
        '4c_list_category' => 'Campaign',
        '4c_list_content' => 'We create a page to showcase company’s products and sustainability efforts and it will be promoted in our social media and all of our communication channels',
        '4c_list_recomendation' => ['Individual'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '1',
        '4c_list_id' => 'brand',
        '4c_list_image' => '1_ty7VB1e7-A7R03DxZ7KV5w.png',
    ],
    [
        '4c_list_title' => 'Send Your Waste',
        '4c_list_category' => 'Campaign',
        '4c_list_content' => 'Send Your Waste is Waste4Changes recycling program to serve people who want to recycle their waste but doesnt know where to put their recyclables.',
        '4c_list_recomendation' => ['Individual'],
        '4c_list_url' => SEND_YOUR_WASTE_URL,
        '4c_list_number' => '2',
        '4c_list_id' => 'syw',
        '4c_list_image' => 'Marijuana-USPS.jpg',
    ],
    [
        '4c_list_title' => 'Drop Box',
        '4c_list_category' => 'Campaign',
        '4c_list_content' => 'Drop Box is a packaging waste collection service in which consumers can voluntarily submit their waste to the nearest dropping box',
        '4c_list_recomendation' => ['Individual'],
        '4c_list_url' => DROPBOX_URL,
        '4c_list_number' => '3',
        '4c_list_id' => 'db',
        '4c_list_image' => 'dropbox_image.jpg',
    ],
    [
        '4c_list_title' => 'Lucky Draw',
        '4c_list_category' => 'Campaign',
        '4c_list_content' => 'Drop Box is a packaging waste collection service in which consumers can voluntarily submit their waste to the nearest dropping box',
        '4c_list_recomendation' => ['Individual'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '4',
        '4c_list_id' => 'db',
        '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
    ],
    [
        '4c_list_title' => 'Reverse Distribution',
        '4c_list_category' => 'Campaign',
        '4c_list_content' => 'Drop Box is a packaging waste collection service in which consumers can voluntarily submit their waste to the nearest dropping box',
        '4c_list_recomendation' => ['Individual'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '5',
        '4c_list_id' => 'db',
        '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
    ],
];

foreach ($services as $service):
?>

<section class="<?= $service['4c_list_number']%2==0 ? 'g-bg-secondary' : '' ?>">

    <div id="<?= $service['4c_list_id'] ?>" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>

    <div class="container g-pt-100 g-pb-70">
        <div class="row">
            <div class="col-md-6 g-mb-30 <?= $service['4c_list_number']%2==0 ? 'order-md-2' : 'order-md-1' ?>">
                <div class="g-ml-50">
                    <div class="mb-2">
                        <div class="d-inline-block g-width-30 g-height-2 g-pos-rel g-top-minus-4 g-bg-info mr-2"></div>
                        <span class="g-color-gray-dark-v3 g-font-weight-600 g-font-size-12 text-uppercase"><?= $service['4c_list_category'] ?></span>
                    </div>

                    <div class="mb-5">
                        <h2 class="<?= $this->agent->is_mobile() ? 'h4' : 'h1' ?> g-color-black g-font-weight-600 g-mb-35">
                            <?= $service['4c_list_title'] ?>
                        </h2>
                        <p><?= $service['4c_list_content'] ?></p>
                        <div class="g-mb-10 g-mt-10">
                            <div class="m-0"><small class="g-mr-10">Recomended for</small>
                                <?php
                                foreach ($service['4c_list_recomendation'] as $recomendation):
                                    ?>
                                    <span class="u-label u-label--sm g-bg-yellow g-rounded-20 g-px-10 g-mb-5"><?= $recomendation ?></span>
                                    <?php
                                endforeach;
                                ?>
                            </div>
                        </div>
                    </div>
                    <a target="_blank" class="btn btn-info g-font-size-default text-uppercase g-rounded-50 g-py-12 g-px-30" href="<?= $service['4c_list_url'] ?>">JOIN NOW</a>
                </div>
            </div>

            <div class="col-lg-6 g-mb-30 <?= $service['4c_list_number']%2==0 ? 'order-md-1' : 'order-md-2' ?>">
                <img class="img-fluid w-100 mb-4" src="<?= base_url('assets/img/bg/'.$service['4c_list_image']) ?>" alt="Image Description">
            </div>
        </div>
    </div>
</section>

<?php
endforeach;

$this->load->view('sites/sections/cta');
?>
