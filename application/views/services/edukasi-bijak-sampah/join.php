<div class="container">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="form-group g-mb-20 text-center" style="padding: 15px 8px">
                <h5 class=""><?= lang('join') ?></h5>
                <h2 class="text-uppercase"><?= lang($service_id) ?></h2>
                <br>
                <br>
                <script>
                    $(window).ready(function () {
                        $('#gform').css('width', window.innerWidth-window.innerWidth*2*(10/100));
                    })
                </script>
                <iframe id="<?= $this->agent->is_mobile() ? 'gform' : '' ?>" style="height: <?= $this->agent->is_mobile() ? '1100px' : '1200px' ?>;width: 100%;border: none" src="https://docs.google.com/forms/d/e/1FAIpQLSfHydtVVmCEMwPLt59sj2o-pIV_i9WNazWVnsK42bShT4QK9w/viewform?embedded=true">Memuat...</iframe>
            </div>
        </div>
    </div>
</div>