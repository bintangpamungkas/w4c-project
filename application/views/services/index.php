<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall g-overflow-hidden" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
    <div class="divimage dzsparallaxer--target w-100" style="height: 130%; background-image: url(<?= base_url('assets/img/bg/sleek_bg_image_black.png') ?>); transform: translate3d(0px, -48.5814px, 0px);"></div>
    <div style="background:radial-gradient(circle farthest-side at 80% 60%, rgba(66,195,120,0.67), rgba(14,105,148,0.92))">
        <div class="container g-pt-195 g-pb-70 text-center">
            <br>
            <div class="g-font-size-<?= $this->agent->is_mobile() ? '25' : '35' ?> g-color-white g-font-weight-600 mb-0 g-line-height-1_2 text-uppercase">
                Get <span class="g-color-aqua">responsible waste management</span><br>in Indonesia with our system
            </div>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-white">
            <div class="g-pt-20 g-color-white-opacity-0_7">
                We help people to get consulted, do campaign, collect, and recycle their waste responsibly<br>through many innovative programs dedicated for sustainability environment
            </div>
        </div>
    </div>
</section>

<?php
$services=[
    [
        '4c_list_title' => 'Feasibility Study',
        '4c_list_category' => 'Consult',
        '4c_list_content' => lang('services_feasibility_study'),
        '4c_list_recomendation' => ['Corporation'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '1',
        '4c_list_id' => 'feasibility',
        '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
        'is_available' => false,
    ],
    [
        '4c_list_title' => '3R Program',
        '4c_list_category' => 'Consult',
        '4c_list_content' => lang('services_3r'),
        '4c_list_recomendation' => ['Corporation'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '2',
        '4c_list_id' => '3r',
        '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
        'is_available' => true,
    ],
    [
        '4c_list_title' => 'Event Waste Management',
        '4c_list_category' => 'Campaign',
        '4c_list_content' => lang('services_event_waste_management'),
        '4c_list_recomendation' => ['Event Organizer'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '3',
        '4c_list_id' => 'event',
        '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
        'is_available' => true,
    ],
    [
        '4c_list_title' => 'Edukasi Bijak Sampah (EDUBIS)',
        '4c_list_category' => 'Campaign',
        '4c_list_content' => lang('services_edubis'),
        '4c_list_recomendation' => ['Management', 'Staff'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '4',
        '4c_list_id' => 'edubis',
        '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
        'is_available' => false,
    ],
    [
        '4c_list_title' => 'Akademi Bijak Sampah (AKABIS)',
        '4c_list_category' => 'Campaign',
        '4c_list_content' => lang('services_akabis'),
        '4c_list_recomendation' => ['Company Champion Team', 'Environmental Agent Candidate', 'Government Employee'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '5',
        '4c_list_id' => 'akabis',
        '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
        'is_available' => false,
    ],
    [
        '4c_list_title' => 'Commercial Waste Management',
        '4c_list_category' => 'Collect',
        '4c_list_content' => lang('services_commercial_waste_management'),
        '4c_list_recomendation' => ['Corporation'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '6',
        '4c_list_id' => 'commercial',
        '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
        'is_available' => true,
    ],
    [
        '4c_list_title' => 'Residential Waste Management',
        '4c_list_category' => 'Collect',
        '4c_list_content' => lang('services_residential_waste_management'),
        '4c_list_recomendation' => ['Residential Developer'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '7',
        '4c_list_id' => 'residential',
        '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
        'is_available' => true,
    ],
    [
        '4c_list_title' => 'Inorganic Recycle Management',
        '4c_list_category' => 'Create',
        '4c_list_content' => lang('services_inorganic_recycle_management'),
        '4c_list_recomendation' => ['General'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '8',
        '4c_list_id' => 'inorganic',
        '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
        'is_available' => false,
    ],
    [
        '4c_list_title' => 'Organic Waste Composting',
        '4c_list_category' => 'Create',
        '4c_list_content' => lang('services_organic_composting'),
        '4c_list_recomendation' => ['General'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '9',
        '4c_list_id' => 'organic',
        '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
        'is_available' => true,
    ],
    [
        '4c_list_title' => 'Send Your Waste',
        '4c_list_category' => 'Campaign',
        '4c_list_content' => lang('services_send_your_waste_corp'),
        '4c_list_recomendation' => ['Individual'],
        '4c_list_url' => SEND_YOUR_WASTE_URL,
        '4c_list_number' => '10',
        '4c_list_id' => 'syw',
        '4c_list_image' => 'Marijuana-USPS.jpg',
        'is_available' => false,
    ],
    [
        '4c_list_title' => 'Drop Box',
        '4c_list_category' => 'Campaign',
        '4c_list_content' => lang('services_dropbox_corp'),
        '4c_list_recomendation' => ['Individual'],
        '4c_list_url' => DROPBOX_URL,
        '4c_list_number' => '11',
        '4c_list_id' => 'db',
        '4c_list_image' => 'dropbox_image.jpg',
        'is_available' => false,
    ],
    [
        '4c_list_title' => 'Personal Waste Management',
        '4c_list_category' => 'Campaign',
        '4c_list_content' => lang('services_personal_waste_management'),
        '4c_list_recomendation' => ['Individual'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '12',
        '4c_list_id' => 'personal',
        '4c_list_image' => 'dropbox_image.jpg',
        'is_available' => true,
    ],
    [
        '4c_list_title' => 'Cleaning Service Education',
        '4c_list_category' => 'Collect',
        '4c_list_content' => lang('services_cleaning_service_education'),
        '4c_list_recomendation' => ['Corporation'],
        '4c_list_url' => W4C_URL.('join'),
        '4c_list_number' => '13',
        '4c_list_id' => 'cleaning',
        '4c_list_image' => 'W4C_RPM_area_pemilahan_2x.jpg',
        'is_available' => true,
    ],
];

foreach ($services as $service):
?>

<section class="<?= $service['4c_list_number']%2==0 ? 'g-bg-secondary' : '' ?> <?= $service['is_available']==false ? 'd-none' : '' ?>">

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
