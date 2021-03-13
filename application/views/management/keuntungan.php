<section class="g-bg-secondary">
  <div id="benefit" style="height: 200px;position: absolute;width: 80%;margin-top: -80px"></div>
  <div class="container g-py-70">
    <div class="text-center g-mb-50">
        <h2 class="g-font-asap g-color-black-dark-v2 g-font-weight-600 text-uppercase ">Keuntungan</h2>
        <hr class="g-width-70 g-mt-10 g-mb-20 g-brd-2 g-brd-blue">
    </div>
    <div class="row">
    <?php foreach ($serviceWasteManagement['keuntungan'] as $valUntung) : ?>
      <?php if ($valUntung['value'] != '') : ?>
        <div class="col-md-6 col-xs-12">
            <div class="row no-gutters g-my-10">
                <div class="col-auto">
                  <img src="https://waste4change.com/official/2.8.assets/img/icons/check-circle.png" alt="check icon" style="width:30px; margin-right: 20px">
                </div>
                <div class="col" style="margin-top:7px"> 
                  <?php echo $valUntung['value'] ?>
                </div>
            </div>
          </div>
      <?php endif; ?>
    <?php endforeach; ?>
    </div>
  </div>
</section>