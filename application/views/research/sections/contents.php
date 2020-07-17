<?php foreach ($researchs as $research) : ?>
    <!-- Content -->
    <div class="row g-mb-50">
        <div class="col-md-4">
            <img class="w-100" src="<?= $research['banner']['thumb_image'][$lang]; ?>" alt="Image Description">
        </div>

        <div class="col-md-8">
            <a href="<?= site_url('research/' . $research['slug']) ?>">
                <h2 class="g-font-asap g-mb-20 g-font-size-26 g-color-info g-font-weight-600<?= $this->agent->is_mobile() ? ' g-mt-20' : '' ?>">
                    <?= $research['title'][$lang] ?>
                </h2>
            </a>
            <p class="g-font-size-14">
                <span class="g-mr-40"><?= lang('category') ?> : <i class="g-color-black"><?= $research['category'][$lang] ?></i></span>
            </p>
            <p class="g-font-size-14">
                <span class="g-mr-40"><?= lang('release-date') ?> : <i class="g-color-black"><?= $research['file']['release'][$lang] ?></i></span>
            </p>
            <p class="g-font-size-16 g-mb-20 g-mt-20 text-left">
                <?= $research['content'][$lang]['overview'] ?>
            </p>
            <a href="<?= site_url('research/' . $research['slug']) ?>" class="btn btn-info <?= $this->agent->is_mobile() ? 'btn-block' : '' ?> g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-px-30 g-py-9 g-mt-10"><?= lang('learn-more') ?></a>
        </div>
    </div>
    <!-- End Content -->
<?php endforeach; ?>

<?php if (count($researchs) > 5) : ?>
    <div class=" <?= $this->agent->is_mobile() ? 'g-mt-50 ' : 'g-mt-80 g-mb-50 ' ?>text-center">
        <a class="u-link-v5 g-color-blue g-color-main--hover" href="#">
            Load More Contents
        </a>
    </div>
<?php endif ?>