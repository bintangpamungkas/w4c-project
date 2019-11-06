<!-- Top Bar -->
<div class="u-header__section u-header__section--hidden u-header__section--dark bg-w4c g-transition-0_3">
    <div class="<?= $this->agent->is_mobile() ? '' : 'container' ?>">
        <div class="row flex-column flex-sm-row justify-content-between align-items-center g-font-weight-600 g-color-white g-font-size-12 g-mx-0--lg">

            <?php if(!$this->agent->is_mobile()): ?>
                <div class="col-auto">
                    <ul class="d-md-block list-inline g-line-height-1 g-mx-minus-4 mb-0 hs-menu-initialized hs-menu-horizontal">
                        <?php
                        $nav=services_list_helper();
                        ?>
                        <?php
                        foreach ($nav as $nav):
                            ?>
                            <li class="list-inline-item g-mx-4 <?= $nav['number']==1 ? 'd-none' : '' ?>">|</li>
                            <li class="list-inline-item g-mx-4">
                                <a class="g-color-white g-color-white--hover g-text-underline--none--hover text-uppercase" href="<?= $nav['url'] ?>"><i class="<?= $nav['icon'] ?> mr-1 g-color-white"></i> <?= $nav['caption'] ?></a>
                            </li>
                            <?php
                        endforeach;
                        ?>
                    </ul>
                </div>
            <?php endif; ?>

            <div class="col-auto" style="<?= $this->agent->is_mobile() ? 'width: 100%' : '' ?>">

                <ul id="dropdown-megamenu" class="d-md-block list-inline g-line-height-1 <?= $this->agent->is_mobile() ? '' : 'g-mx-minus-4' ?> mb-0 hs-menu-initialized hs-menu-horizontal">
                    <?php if($this->agent->is_mobile()): ?>
                        <li class="list-inline-item g-mx-4 g-pt-10 g-pb-8 g-pl-10">
                            <a data-target="#globalModal" data-content="#set_language" data-toggle="modal" data-modal-title="<?= lang('choose_language') ?>" class="g-color-white g-color-aqua--hover g-text-underline--none--hover click-modal" style="text-transform: uppercase">
                                <?= !$this->session->userdata('language') || $this->session->userdata('language')=='id' ? '<img src="'.base_url('assets/img/icons/flag_indonesia.png').'" style="height: 13px;margin-bottom: 2px;margin-right: 5px"> id' : '<img src="'.base_url('assets/img/icons/flag_england.png').'" style="height: 13px;margin-bottom: 2px;margin-right: 5px"> en' ?>
                            </a>
                        </li>
                        <li class="list-inline-item g-px-10 pull-right g-pt-10 g-pb-13 g-bg-info m-0">
                            <a href="<?= SEND_YOUR_WASTE_URL.('#join') ?>" class="g-color-white nav-menu-change g-text-underline--none--hover">JOIN NOW</a>
                        </li>
                        <li class="list-inline-item g-mx-4 pull-right g-pt-10 g-pb-13 g-mr-10 d-none">
                            <a href="<?= W4C_URL.('account/register') ?>" class="g-color-white nav-menu-change g-text-underline--none--hover">REGISTER</a>
                        </li>
                    <?php else: ?>
                        <li class="list-inline-item g-mx-4 nav-menu-change g-font-size-25 g-pt-10 g-pb-13 d-none" style="line-height: 0.5">.</li>
                        <li class="list-inline-item g-mx-10 mr-3" style="margin-top: 16px">
                            <a href="<?= W4C_URL.('about') ?>" class="g-color-white nav-menu-change g-text-underline--none--hover"><?= lang('about_us') ?></a>
                        </li>
                        <li class="list-inline-item g-mx-10 mr-3 d-none" style="margin-top: 16px">
                            <a href="<?= W4C_URL.('account/register') ?>" class="g-color-white nav-menu-change g-text-underline--none--hover"><i class="icon-user mr-2"></i> <?= lang('register') ?></a>
                        </li>
                        <li class="list-inline-item g-mx-4 nav-menu-change g-font-size-25 g-pt-10 g-pb-13 d-none" style="line-height: 0.5">.</li>
                        <li class="list-inline-item g-mx-4 g-pt-10 g-pb-13">
                            <a href="<?= $this->session->userdata('language')=='en' ? 'javascript:void()' : site_url('en') ?>" class="nav-menu-change <?= $this->session->userdata('language')=='en' ? 'language-active-light' : '' ?> g-color-white g-text-underline--none--hover" style="text-transform: uppercase">
                                <img src="<?= base_url('assets/img/icons/flag_england.png') ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px"> EN
                            </a>
                        </li>
                        <li class="list-inline-item g-mx-4 nav-menu-change g-pt-10 g-pb-13">/</li>
                        <li class="list-inline-item g-mx-4 g-pt-10 g-pb-13">
                            <a href="<?= !$this->session->userdata('language') || $this->session->userdata('language')=='id' ? 'javascript:void()' : site_url('id') ?>" class="nav-menu-change <?= !$this->session->userdata('language') || $this->session->userdata('language')=='id' ? 'language-active-light' : '' ?> g-color-white g-text-underline--none--hover" style="text-transform: uppercase">
                                <img src="<?= base_url('assets/img/icons/flag_indonesia.png') ?>" style="border: 1px solid rgba(0,0,0,0.1);height: 13px;margin-bottom: 2px"> ID
                            </a>
                        </li>
                    <?php endif; ?>
                </ul>

            </div>

        </div>
    </div>
</div>
<!-- End Top Bar -->
