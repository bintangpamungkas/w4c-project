<section class="<?= empty($breadcrumb) ? '' : ($template!='index' ? 'g-mt-60' : 'g-mt-130') ?> g-bg-gray-light-v5">
    <?php
    if(!empty($breadcrumb) && !$this->agent->is_mobile()){
        ?>

        <div class="g-mb-50 g-py-20">
            <div class="container">
                <div class="d-sm-flex text-center">
                    <div class="align-self-center">
                        <h2 class="h3 g-font-weight-300 w-100 g-mb-10 g-mb-0--md">
                            <a onclick="javascript:window.history.back()" class="g-color-black-opacity-0_8 g-cursor-pointer">
                                <i class="icon-arrow-left g-mr-10 g-font-size-20"></i>
                            </a>
                            <?= $is_bilingual==true ? lang($page_heading) : $page_heading ?>
                        </h2>
                    </div>

                    <div class="align-self-center ml-auto">
                        <ul class="u-list-inline">
                            <?php
                            $number=1;
                            foreach ($breadcrumb as $breadcrumb=>$subbreadcrumb):
                                ?>
                                <li class="list-inline-item g-mr-5">
                                    <a class="u-link-v5 g-color-<?= $subbreadcrumb['is_active']==false ? 'info g-color-blue--hover' : 'main cursor-text' ?>" href="<?= $subbreadcrumb['is_active']==true ? 'javascript:void()' : $subbreadcrumb['url'] ?>"><?= $subbreadcrumb['is_active']==true && $is_bilingual==true ? lang($page_heading) : $subbreadcrumb['title'] ?></a>
                                    <i class="g-color-gray-light-v2 g-ml-5 <?= $subbreadcrumb['is_active']==true ? 'd-none' : '' ?>">/</i>
                                </li>
                                <?php
                            endforeach;
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <?php
    }
    ?>
</section>
