<?php
$get = false;
if (isset($_GET['cat'])) {
    $get = true;
    $cat = $_GET['cat'];
    $search = $_GET['search'];
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
                    <form id="search-form" class="g-mb-10" action="<?= site_url('research'); ?>" method="get">
                        <div class="row">
                            <div class="col-md-5">
                                <select name="cat" class="form-control rounded-0 g-box-shadow-none" style="border:1px solid #bbb; border-radius:0">
                                    <option value="all"><?= lang('all-categories') ?></option>
                                    <?php for ($i = 0; $i < count($researchs); $i++) : ?>
                                        <?php if ($i > 0 && $researchs[$i]['category'][$lang] == $researchs[$i - 1]['category'][$lang]) : ?>
                                            <?php continue; ?>
                                        <?php endif; ?>
                                        <option <?= ($researchs[$i]['category'][$lang] == ($get ? $_GET['cat'] : '')) ? 'selected' : '' ?> value="<?= $researchs[$i]['category'][$lang] ?>">
                                            <?= $researchs[$i]['category'][$lang] ?>
                                        </option>
                                    <?php endfor; ?>
                                </select>
                            </div>

                            <div class="col-md-7">
                                <div class="input-group pull-right">
                                    <input id="input-search" class="form-control rounded-0 g-box-shadow-none<?= $get ? ' border-right-0' : '' ?>" type="text" name="search" value="<?= $get ? $_GET['search'] : '' ?>" style="border:1px solid #bbb; border-radius:0;" placeholder="Search.." autocomplete="off">
                                    <div class="input-group-prepend">
                                        <?php if ($get) : ?>
                                            <span class="input-reset input-group-text rounded-0 g-bg-white g-color-gray-light-v1 border-left-0" style="cursor: pointer;">
                                                <i class="fa fa-times"></i>
                                            </span>
                                        <?php endif; ?>
                                    </div>
                                    <div class="input-group-prepend" style="z-index: 1;">
                                        <button type="submit" class="btn btn-info rounded-0 g-color-white" style="border:1px solid #bbb; margin-left: 10px; cursor: pointer;">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                <?php else : ?>
                    <div id="mobile-search" class="g-color-black-light-v1" data-toggle="modal" data-target="#modal-mobile-search">
                        <i class="icon-magnifier g-font-size-24 g-mr-10"></i>
                    </div>

                    <div id="modal-mobile-search" class="modal text-center g-font-asap <?= $this->agent->is_mobile() ? 'g-px-0 g-mx-10' : 'g-px-20' ?>" tabindex="-1" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content g-py-20">
                                <button type="button" class="close g-pr-10 text-right g-font-size-18 g-mt-minus-10" data-dismiss="modal" aria-label="Close">
                                    <i class="hs-icon hs-icon-close g-color-black g-font-weight-900"></i>
                                </button>

                                <div id="modal-box">
                                    <form id="search-form" class="g-mb-10" action="<?= site_url('research'); ?>" method="get">
                                        <div class="row g-mt-20 g-px-30">
                                            <div class="col-12 g-mb-20">
                                                <select name="cat" class="form-control rounded-0 g-box-shadow-none" style="border:1px solid #bbb; border-radius:0">
                                                    <option value="all"><?= lang('all-categories') ?></option>
                                                    <?php for ($i = 0; $i < count($researchs); $i++) : ?>
                                                        <?php if ($i > 0 && $researchs[$i]['category'][$lang] == $researchs[$i - 1]['category'][$lang]) : ?>
                                                            <?php continue; ?>
                                                        <?php endif; ?>
                                                        <option <?= ($researchs[$i]['category'][$lang] == ($get ? $_GET['cat'] : '')) ? 'selected' : '' ?> value="<?= $researchs[$i]['category'][$lang] ?>">
                                                            <?= $researchs[$i]['category'][$lang] ?>
                                                        </option>
                                                    <?php endfor; ?>
                                                </select>
                                            </div>

                                            <div class="col-12 g-mb-20">
                                                <div class="input-group pull-right">
                                                    <div class="input-group-prepend" style="z-index: 1; margin-right: -29px;">
                                                        <span class="input-group-text rounded-0 g-bg-white g-color-gray-light-v1 border-right-0" style="border:1px solid #bbb;">
                                                            <i class="fa fa-search"></i>
                                                        </span>
                                                    </div>
                                                    <input class="form-control rounded-0 g-box-shadow-none g-pl-30" type="text" name="search" value="<?= $get ? $_GET['search'] : '' ?>" style="border:1px solid #bbb; border-radius:0" placeholder="Search.." autocomplete="off">
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <button class="btn btn-info btn-block g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9">Search</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </div>
        <!-- End Heading -->
    </section>

    <?php if (!$get) : ?>
        <!-- <section class="<?= $this->agent->is_mobile() ? 'fluid-container' : 'container'; ?>"> -->
        <?php
        // $this->load->view('research/sections/carousel');
        ?>
        <!-- </section> -->
    <?php else : ?>
        <section class="container<?= $this->agent->is_mobile() ? ' g-mt-minus-20 g-mb-minus-20 ' : ' '; ?>">
            <div class="<?= $this->agent->is_mobile() ? 'g-py-20 ' : ' '; ?>alert alert-error alert-dismissible fade show g-mt-30 g-font-weight-500" role="alert" style="background-color: rgba(230, 75, 59, 0.15); color: rgba(230, 75, 59);">
                <button type="button" class="input-reset close g-font-size-16 g-mt-5 g-pt-10 g-font-weight-400" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">
                        Reset
                    </span>
                </button>
                <span id="search-total">0</span> Search result found
            </div>
        </section>
    <?php endif ?>

    <section class="container g-mb-30 g-mt-45">
        <!-- Heading -->
        <div class="row d-flex">
            <div class="col-md-9 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                <div class="u-heading-v2-1">
                    <h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-24' : ''; ?>"><?= lang('research_latest_publication') ?></h2>
                    <hr class="g-width-120 g-mb-20 g-brd-2 <?= $this->agent->is_mobile() ? 'g-mt-20' : 'g-mt-10 g-mx-0'; ?>" style="border-color: #17A2B8;">
                </div>
            </div>

            <div class="col-md-3 align-self-center">
                <!-- Text Input with Both Appended Icon -->
                <div class="form-group <?= $this->agent->is_mobile() ? 'g-mb-10' : 'g-mb-20' ?>">
                    <div class="g-brd-primary--focus">
                        <select class="orderBy form-control rounded-0 g-box-shadow-none" style="border:1px solid #bbb; border-radius:0">
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
        var searchTotal = 0;
        <?php if ($get) : ?>
            getJsonData('<?= $_GET['search'] ?>');
        <?php endif; ?>

        $.ajaxSetup({
            cache: false
        });

        $('.input-reset').on('click', function() {
            $('#input-search').val('').focus();
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
                <?php if ($get) : ?>
                    $.each(data, function(key, value) {
                        if (value.title.<?= $lang ?>.toLowerCase().search(expression.toLowerCase().trim()) != -1 || value.keyword.<?= $lang ?>.toLowerCase().search(expression.toLowerCase().trim()) != -1) {
                            searchTotal += 1;
                            $("#search-total").text(searchTotal).parent().css({
                                "background-color": "rgba(42, 199, 105, 0.15)",
                                "color": "rgba(42, 199, 105)"
                            });
                            loadContent(value);
                        }
                    });
                <?php endif ?>
            })
        }

        function loadContent(value) {
            $('#content').append(`<div class="row g-mb-50">
        <div class="col-md-4">
            <img class="w-100" src="` + value.banner.thumb_image.<?= $lang ?> + `" alt="Image Description">
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