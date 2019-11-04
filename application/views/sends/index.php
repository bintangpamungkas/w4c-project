<div class="container" style="margin-top: 150px">
    <div class="u-shadow-v1-5 g-line-height-2 g-mb-30 bg-white" role="alert">

        <div class="row">

            <div class="col-md-12">

                <div class="form-group g-mb-20 text-center" style="padding: 15px 8px">
                    <br>
                    <h3><?= lang('send_form_title') ?></h3>
                    <small class="form-text text-muted g-font-size-default g-mt-10"><?= lang('send_page_title') ?></small>
                    <br>
                    <script>
                        $(window).ready(function () {
                            $('#gform').css('width', window.innerWidth-window.innerWidth*2*(10/100));
                        })
                    </script>
                    <iframe id="<?= $this->agent->is_mobile() ? 'gform' : '' ?>" style="height: <?= $this->agent->is_mobile() ? '1100px' : '900px' ?>;width: 100%;border: none" src="https://docs.google.com/forms/d/e/1FAIpQLScr7JfqB9XzCUz5NEcTcVDJ0myJA-BBoc6kqknOZ16DVK2Vjg/viewform?embedded=true">Memuat...</iframe>
                </div>




            </div>

        </div>
    </div>
</div>