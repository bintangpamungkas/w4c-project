

<div class="shortcode-html" id="footer">
    <!-- Footer -->
    <footer class="g-color-white-opacity-0_8 g-bg-img-hero g-pt-60" style="background: radial-gradient(circle farthest-side at 70% -10%, rgba(21, 189, 119, 1), rgba(11, 141, 192, 1));">
        <div class="container g-mb-60">
            <div class="row">

                <div class="col-lg-4 col-md-6 g-mb-40 g-mb-0--lg <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                    <div class="u-heading-v2-3--bottom g-brd-white-opacity-0_8 g-mb-20">
                        <h2 class="u-heading-v2__title h6 text-uppercase mb-0 font-weight-bold"><?= lang('nav_contact_a') ?></h2>
                    </div>

                    <address class="mb-0">
                        <div class="g-mb-20">
                            <p class="mb-10"><a class="g-color-white-opacity-0_8" target="_blank" href="https://goo.gl/maps/h16wzCy2htA2"><?= OFFICIAL_ADDRESS ?></a></p>
                            <p class="g-mb-10"><?= OFFICIAL_TELEPHONE ?></p>
                            <p class="mb-0">
                                <a class="g-color-white-opacity-0_8" href="mailto:<?= OFFICIAL_MAIL ?>"><?= OFFICIAL_MAIL ?></a>
                            </p>
                        </div>
                    </address>

                </div>
                <!-- End Footer Content -->

                <!-- Footer Content -->
                <div class="col-lg-3 col-md-6 g-mb-40 g-mb-0--lg <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                    <div class="u-heading-v2-3--bottom g-brd-white-opacity-0_8 g-mb-20">
                        <h2 class="u-heading-v2__title h6 text-uppercase mb-0 font-weight-bold"><?= lang('useful_link') ?></h2>
                    </div>

                    <ul class="list-unstyled">
                        <li class="g-mb-5">
                            <i class="fa fa-angle-right g-mr-5"></i>
                            <a class="g-color-white-opacity-0_8" href="<?= SEND_YOUR_WASTE_URL ?>">Send Your Waste</a>
                        </li>
                        <li class="g-mb-5">
                            <i class="fa fa-angle-right g-mr-5"></i>
                            <a class="g-color-white-opacity-0_8" href="<?= DROPBOX_URL ?>">DropBox</a>
                        </li>
                        <li class="g-mb-5">
                            <i class="fa fa-angle-right g-mr-5"></i>
                            <a class="g-color-white-opacity-0_8" href="<?= W4C_URL.('about') ?>"><?= lang('about_us') ?></a>
                        </li>
                        <li class="g-mb-5">
                            <i class="fa fa-angle-right g-mr-5"></i>
                            <a class="g-color-white-opacity-0_8" href="<?= W4C_URL.('account/register') ?>"><?= lang('register') ?></a>
                        </li>
                        <li class="g-mb-5">
                            <i class="fa fa-angle-right g-mr-5"></i>
                            <a class="g-color-white-opacity-0_8" href="<?= W4C_URL.('join') ?>"><?= ucwords(strtolower(lang('join_title'))) ?></a>
                        </li>
                        <li class="g-mb-5">
                            <i class="fa fa-angle-right g-mr-5"></i>
                            <a target="_blank" class="g-color-white-opacity-0_8" href="http://waste4change.com/impactful-career-waste4change/"><?= ucwords(strtolower(lang('career'))) ?></a>
                        </li>
                    </ul>
                </div>
                <!-- End Footer Content -->

                <!-- Footer Content -->
                <div class="col-lg-4 col-md-6 g-mb-40 g-mb-0--lg <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                    <div class="u-heading-v2-3--bottom g-brd-white-opacity-0_8 g-mb-20">
                        <h2 class="u-heading-v2__title h6 text-uppercase mb-0 font-weight-bold"><?= lang('social_media') ?></h2>
                    </div>

                    <ul class="list-inline mb-0">
                        <li class="list-inline-item g-mr-10">
                            <a class="u-icon-v3 u-icon-size--xs g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 rounded" href="https://facebook.com/waste4change" target="_blank">
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>
                        <li class="list-inline-item g-mr-10">
                            <a class="u-icon-v3 u-icon-size--xs g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 rounded" href="https://instagram.com/waste4change" target="_blank">
                                <i class="fa fa-instagram"></i>
                            </a>
                        </li>
                        <li class="list-inline-item g-mr-10">
                            <a class="u-icon-v3 u-icon-size--xs g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 rounded" href="https://twitter.com/waste4change" target="_blank">
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li class="list-inline-item g-mr-10">
                            <a class="u-icon-v3 u-icon-size--xs g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 rounded" href="https://www.youtube.com/channel/UCmyjlUYRfBiYEWDRcsd5raQ" target="_blank">
                                <i class="fa fa-youtube"></i>
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Footer Content -->
                <div class="col-lg-3 d-none col-md-6 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>">
                    <div class="u-heading-v2-3--bottom g-brd-white-opacity-0_8 g-mb-20">
                        <h2 class="u-heading-v2__title h6 text-uppercase mb-0 font-weight-bold">KEEP IN TOUCH</h2>
                    </div>

                    <div class="g-mb-30 d-none">
                        <p>Subscribe to our newsletter and stay up to date with the latest news</p>
                        <div class="input-group border-0 g-rounded-30">
                            <input class="form-control border-0 g-rounded-left-30 g-px-12 g-py-8" type="email" placeholder="Email address">
                            <div class="input-group-addon border-0 p-0">
                                <button class="btn u-btn-primary g-rounded-right-30 g-px-12 g-py-8" type="submit" role="button">Subscribe</button>
                            </div>
                        </div>
                    </div>

                    <p>Social Media</p>
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item g-mr-10">
                            <a class="u-icon-v3 u-icon-size--xs g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 rounded" href="https://facebook.com/waste4change" target="_blank">
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>
                        <li class="list-inline-item g-mr-10">
                            <a class="u-icon-v3 u-icon-size--xs g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 rounded" href="https://instagram.com/waste4change" target="_blank">
                                <i class="fa fa-instagram"></i>
                            </a>
                        </li>
                        <li class="list-inline-item g-mr-10">
                            <a class="u-icon-v3 u-icon-size--xs g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 rounded" href="https://twitter.com/waste4change" target="_blank">
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li class="list-inline-item g-mr-10">
                            <a class="u-icon-v3 u-icon-size--xs g-bg-white-opacity-0_1 g-bg-white-opacity-0_2--hover g-color-white-opacity-0_6 rounded" href="https://www.youtube.com/channel/UCmyjlUYRfBiYEWDRcsd5raQ" target="_blank">
                                <i class="fa fa-youtube"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- End Footer Content -->
            </div>
        </div>

        <!-- Copyright Footer -->
        <div class="g-bg-black-opacity-0_1 g-color-white-opacity-0_8 text-center g-py-20">
            <div class="container">
                <small class="g-font-size-default g-mr-10 g-mb-10 g-mb-0--md">2018 - All Rights Reserved
                    <a class="g-color-white-opacity-0_8" href="#">Waste4Change</a>
                </small>
            </div>
        </div>
        <!-- End Copyright Footer -->
    </footer>
    <!-- End Footer -->
</div>


<a class="js-go-to u-go-to-v1" href="#" data-type="fixed" data-position='{
     "bottom": 15,
     "right": 15
   }' data-offset-top="400" data-compensation="#js-header" data-show-effect="zoomIn">
    <i class="hs-icon hs-icon-arrow-top"></i>
</a>