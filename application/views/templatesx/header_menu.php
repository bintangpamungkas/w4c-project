
<header id="js-header" class="u-header u-header--sticky-top u-header--change-appearance" data-header-fix-moment="100">
    <div id="navigation-block" class="navbar-toggle-btn u-header__section u-header__section--dark g-transition-0_3 g-py-10" data-header-fix-moment-exclude="pb-10 g-color-white" data-header-fix-moment-classes="g-bg-white u-shadow-v18 g-py-0">
        <nav class="navbar navbar-expand-lg u-navbar u-navbar--inline-submenu--lg">
            <div class="container">
                <!-- Responsive Toggle Button -->
                <button class="navbar-toggler navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-top-3 g-right-0" type="button" aria-label="Toggle navigation" aria-expanded="false" aria-controls="navBar" data-toggle="collapse" data-target="#navBar">
              <span class="hamburger g-pa-0 hamburger--slider">
            <span class="hamburger-box">
              <span class="hamburger-inner"></span>
              </span>
              </span>
                </button>
                <!-- End Responsive Toggle Button -->
                <!-- Logo -->
                <a href="<?= site_url('../official') ?>" class="navbar-brand">
                    <img src="<?= base_url('assets/img/logo/logo-W4C_179_web.png') ?>" alt="Image Description" style="height: 39px">
                </a>
                <!-- End Logo -->

                <!-- Navigation -->
                <div class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg" id="navBar">
                    <ul class="navbar-nav text-uppercase g-font-weight-600 ml-auto">
                        <?php
                        $nav=[
                            [
                                'title' => 'SOLUTIONS',
                                'number' => '1',
                                'url' => '#mega-menu-1',
                                'type' => 'mega-menu',
                                'menu' => [
                                    [
                                        'title' => 'SERVICE',
                                        'url' => '',
                                    ],
                                    [
                                        'title' => 'SERVICE',
                                        'url' => '',
                                    ],
                                ],
                            ],
                            [
                                'title' => 'ABOUT',
                                'number' => '2',
                                'url' => W4C_URL.'about',
                                'type' => '',
                                'menu' => '',
                            ],
                            [
                                'title' => 'BLOG',
                                'number' => '3',
                                'url' => 'http://waste4change.com/blog',
                                'type' => '',
                                'menu' => '',
                            ],
                        ];
                        foreach ($nav as $nav): ?>
                        <li class="nav-item <?= $nav['type']=='mega-menu' ? 'dropdown' : '' ?> g-mx-20--lg">
                            <a href="<?= $nav['url'] ?>" class="nav-link <?= $nav['type']=='mega-menu' ? 'dropdown' : '' ?> px-0" <?= $nav['type']=='mega-menu' ? 'id="nav-link-1" aria-haspopup="true" aria-expanded="false" aria-controls="section-home-submenu" data-toggle="dropdown" data-appear-speed="200" data-appear-easing="linear"' : '' ?>>
                                <?= $nav['title'] ?>
                                <?php if($nav['type']=='mega-menu'): ?>
                                <i class="hs-icon hs-icon-arrow-bottom g-font-size-11 g-ml-7"></i>
                                <?php endif; ?>
                            </a>
                            <?php
                            if($nav['type']=='mega-menu'): ?>
                                <div class="dropdown-menu">
                                    <?php foreach ($nav['menu'] as $menu): ?>
                                        <?= $menu['title'] ?>
                                    <?php endforeach; ?>
                                </div>
                            <?php endif; ?>
                        </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
                <!-- End Navigation -->
            </div>
        </nav>
    </div>
</header>