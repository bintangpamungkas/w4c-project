<div class="container">
    <div class="row">

        <div class="col-md-12">

            <div class="form-group g-mb-20 text-center" style="padding: 15px 8px">
                <br>
                <h3><?= lang('register') ?></h3>
                <small class="form-text text-muted g-font-size-default g-mt-10"><?= lang('register_description') ?></small>
                <br>
                <script>
                    $(window).ready(function () {
                        $('#gform').css('width', window.innerWidth-window.innerWidth*2*(10/100));
                    })
                </script>
                <iframe id="<?= $this->agent->is_mobile() ? 'gform' : '' ?>" style="height: <?= $this->agent->is_mobile() ? '1100px' : '1000px' ?>;width: 100%;border: none" src="https://docs.google.com/forms/d/e/1FAIpQLSdEgyu1VY_YXL04WUOYElB5SU5v3pawOice5_Fm3pg8wFf4rA/viewform?embedded=true">Memuat...</iframe>
            </div>

        </div>

    </div>
</div>