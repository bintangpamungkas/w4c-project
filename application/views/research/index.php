<?php
$get = false;
if (isset($_GET['cat'])) {
    $get = true;
}
?>

<section class="<?= $this->agent->is_mobile() ? 'g-pt-70' : 'g-pt-100'; ?> g-pb-40">

    <section class="container">
        <!-- Heading -->
        <div class="row d-flex justify-content-between">
            <div class="<?= $this->agent->is_mobile() ? 'col-10' : 'col-6'; ?> u-heading-v2-1">
                <h4 class="<?= $this->agent->is_mobile() ? 'g-font-size-12' : 'g-font-size-18'; ?>"><?= APP_NAME; ?></h4>
                <h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : 'g-font-size-35'; ?>" style="margin-top: -10px;"><?= lang('research_heading_title'); ?></h2>
            </div>

            <div class="<?= $this->agent->is_mobile() ? 'col-2' : 'col-6'; ?> text-right <?= $this->agent->is_mobile() ? 'align-self-center' : 'align-self-end'; ?>">
                <?php if (!$this->agent->is_mobile()) : ?>
                    <div class="row">
                        <div class="col-md-6">
                            <!-- Text Input with Both Appended Icon -->
                            <div class="form-group g-mb-20">
                                <div class="g-brd-primary--focus">
                                    <select id="search-category" class="form-control rounded-0">
                                        <option value="<?= site_url('research') ?>"><?= lang('all-categories') ?></option>
                                        <?php for ($i = 0; $i < count($researchs); $i++) : ?>
                                            <?php if ($i > 0 && $researchs[$i]['category'][$lang] == $researchs[$i - 1]['category'][$lang]) : ?>
                                                <?php continue; ?>
                                            <?php endif; ?>
                                            <option <?= ($researchs[$i]['category'][$lang] == ($get ? $_GET['cat'] : '')) ? 'selected' : '' ?> value="<?= site_url('research?cat=' . htmlentities($researchs[$i]['category'][$lang])) ?>"><?= $researchs[$i]['category'][$lang] ?></option>
                                        <?php endfor; ?>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group g-mb-20">
                                <div class="input-group g-brd-primary--focus">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text rounded-0 g-bg-white g-color-gray-light-v1"><i class="icon-magnifier"></i></span>
                                    </div>
                                    <input id="search" class="form-control border-left-0 rounded-0 px-0" type="text" placeholder="<?= lang('search') ?>">
                                </div>
                                <!-- End Text Input with Both Appended Icon -->
                            </div>
                            <ul class="list-unstyled g-bg-white text-left" id="result" style="overflow-x: auto; width: max-content; right: 14px; z-index: 1;"></ul>
                        </div>
                    </div>
                <?php else : ?>
                    <div class="g-color-black-light-v1">
                        <i class="icon-magnifier g-font-size-24 g-mr-10"></i>
                    </div>
                <?php endif; ?>
            </div>
        </div>
        <!-- End Heading -->
    </section>

    <section class="<?= $this->agent->is_mobile() ? 'fluid-container' : 'container'; ?>">
        <?php
        $this->load->view('research/sections/carousel');
        ?>
    </section>

    <section class="container g-mb-30 g-mt-45">
        <!-- Heading -->
        <div class="row d-flex">
            <div class="col-md-9 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                <div class="u-heading-v2-1">
                    <h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-24' : ''; ?>"><?= lang('research_latest_publication') ?></h2>
                    <hr class="g-width-120 g-mb-20 g-brd-2 g-brd-blue <?= $this->agent->is_mobile() ? 'g-mt-20' : 'g-mt-10 g-mx-0'; ?>">
                </div>
            </div>

            <div class="col-md-3 align-self-center">
                <!-- Text Input with Both Appended Icon -->
                <div class="form-group <?= $this->agent->is_mobile() ? 'g-mb-10' : 'g-mb-20' ?>">
                    <div class="g-brd-primary--focus">
                        <select class="orderBy form-control rounded-0">
                            <option value="<?= site_url('research') ?>"><?= lang('sort-by') ?></option>
                            <option <?= $order == 'date' ? 'selected' : '' ?> value="<?= site_url('research?o=date') ?>"><?= lang('date') ?></option>
                            <option <?= $order == 'title' ? 'selected' : '' ?> value="<?= site_url('research?o=title') ?>"><?= lang('title') ?></option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Heading -->

        <div id="content">
            <?php
            if (!$get) {
                $this->load->view('research/sections/contents');
            }
            ?>
        </div>

    </section>

</section>

<script>
    $('select.orderBy').on('change', function() {
        document.location = $(this).val();
    });

    $(document).ready(function() {
        <?php if ($get) : ?>
            getJsonData('<?= $_GET['cat'] ?>');
        <?php endif; ?>

        $.ajaxSetup({
            cache: false
        });

        $('#search').keyup(function() {
            $('#result').html('');
            $('#state').val('');
            var searchField = $('#search').val();
            var expression = new RegExp(searchField, "i");

            if (searchField !== '') {
                getJsonData(expression);
            }
        });

        $('#search-category').on('change', function() {
            window.location = $(this).val();
        });

        function getJsonData(expression) {
            $.getJSON('<?= site_url(DIR_STATIC_DB . 'research.json') ?>', function(data) {
                $.each(data, function(key, value) {
                    <?php if (!$get) : ?>
                        if (value.title.<?= $lang ?>.search(expression) != -1 || value.keyword.<?= $lang ?>.search(expression) != -1) {
                            appendResult(value);
                        }
                    <?php else : ?>
                        if (value.category.<?= $lang ?>.search(expression) != -1) {
                            loadContent(value);
                        }
                    <?php endif; ?>
                });
            });
        }

        function loadContent(value) {
            $('#content').append(`<div class="row g-mb-50">
        <div class="col-md-4">
            <img class="w-100" src="` + value.banner.thumb_image + `" alt="Image Description">
        </div>

        <div class="col-md-8">
            <a href="<?= site_url('research/') ?>` + value.slug + `">
                <h2 class="g-font-asap g-mb-20 g-font-size-26 g-color-info g-font-weight-600<?= $this->agent->is_mobile() ? ' g-mt-20' : '' ?>">
                    ` + value.title.<?= $lang ?> + `
                </h2>
            </a>
            <p class="g-font-size-14">
                <span class="g-mr-40"><?= lang('category') ?> : <i class="g-color-blue">` + value.category.<?= $lang ?> + `</i></span>
            </p>
            <p class="g-font-size-14">
                <span class="g-mr-40"><?= lang('release-date') ?> : <i class="g-color-blue">` + value.file.release.<?= $lang ?> + `</i></span>
            </p>
            <p class="g-font-size-16 g-mb-20 g-mt-20">
                ` + value.content.<?= $lang ?>.overview + `
            </p>
            <a href="<?= site_url('research/') ?>` + value.slug + `" class="btn btn-info <?= $this->agent->is_mobile() ? 'btn-block' : '' ?> g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mt-10"><?= lang('learn-more') ?></a>
        </div>
    </div>`);
        }

        function appendResult(value) {
            $('#result').append(`<li class="d-flex justify-content-start g-brd-around g-brd-gray-light-v4 g-pa-20" data-href="<?= site_url('research/') ?>` + value.slug + `">
                    <div class="g-pos-rel g-mr-5">
                        <img class="g-width-50 g-height-50 rounded" src="` + value.banner.thumb_image + `" alt="` + value.title.<?= $lang ?> + `">
                    </div>

                    <div class="align-self-center g-px-10">
                        <h5 class="h6 g-font-weight-600 g-color-black g-mb-3">
                            <span class="g-mr-5">` + value.category.<?= $lang ?> + `</span>
                        </h5>
                        <p class="m-0">` + value.title.<?= $lang ?> + `</p>
                    </div>
            </li>`);
        }

        $('#result').on('click', 'li', function() {
            document.location = $(this).data('href');
        });
    });
</script>