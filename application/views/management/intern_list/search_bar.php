<!-- Search Bar -->
<section class="g-white g-bg-white u-shadow-v20 g-pt-80">
  <div class="container">
    <div class="">

      <div class="row no-gutters g-pt-<?= $this->agent->is_mobile() ? '10' : '50' ?>">
        <?php if (!$this->agent->is_mobile()) : ?>
          <div class="col">
            <div class="g-font-asap g-color-black text-uppercase g-font-weight-600 g-font-size-24 g-mb-10 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>"><?= $copy->InternList ?></div>
            <hr class="g-width-70 g-mt-20 g-mb-0 g-ml-0 g-brd-2 w4c-brd-blue">
          </div>
        <?php endif; ?>
      <div class="col text-right ">
        <?php foreach ($breadcrumb as $bread) : ?>
          <?php if ($bread['active'] != true) : ?>
            <a class="w4c-color-blue g-text-transform-none" href="<?= site_url($bread['url']) ?>">
              <?php echo $bread['title'] ?>
            </a>
            <i class="g-color-black fa fa-angle-right g-mx-10"></i>
          <?php else : ?>
            <span class="g-color-black"><?php echo $bread['title'] ?> </span>
          <?php endif; ?>
        <?php endforeach; ?>
      </div>
    </div>
    

      <div class="row justify-align-center <?= ($this->agent->is_mobile()) ? ' g-pt-40' : ' g-py-30' ?>">
        <?php if ($this->agent->is_mobile()) : ?>
          <div class="col">
            <div class="form-group g-m-reset" data-toggle="modal" data-target="#modal-mobile-search">
              <div class="input-group g-brd-primary--focus">
                <div class="input-group-prepend g-brd-right-none">
                  <span class="input-group-text rounded-0 g-bg-white g-color-gray-light-v1 g-brd-right-none g-brd-none--focus"><i class="icon-magnifier"></i></span>
                </div>
                <input id="inputSearch" class="form-control g-pa-12 g-brd-left-none g-brd-none--focus" type="text" placeholder="<?= $copy->Search . ' ' . $copy->Position . ', ' . $copy->Location  ?>">
              </div>
            </div>
            <style> 
              .ui-autocomplete {
                position: absolute;
                top: 0;
                left: 0;
                z-index: 1510 !important;
              }
            </style>

            <?php if($this->agent->is_mobile()) : ?>
            <div class="col mx-auto mt-5">
              <div class="g-font-asap g-color-black text-uppercase g-font-weight-600 g-font-size-24 <?= $this->agent->is_mobile() ? 'text-center' : '' ?>"><?= $copy->InternList ?></div>
              <hr class="g-width-70 mx-auto text-center g-brd-2 w4c-brd-blue" style="margin-top:2px!important">
            </div>
            <?php endif; ?>

            <!-- Modal Search -->
            <div id="modal-mobile-search" class="modal text-center g-font-asap g-px-0 g-mx-10">
              <div class="modal-dialog modal-lg">
                <div class="modal-content g-py-20">
                  <button type="button" class="close text-right g-font-size-18 g-px-10 g-mt-0" data-dismiss="modal" aria-label="Close">
                    <i class="hs-icon hs-icon-close g-color-black g-font-weight-900 g-font-size-20"></i>
                  </button>
                  <div id="modal-box">
                    <div class="row g-mt-20 g-px-30">
                      <div class="col-12 g-pa-5">
                        <div class="form-group g-ma-0">
                          <input id="inputPosition" class="form-control g-pa-12 g-brd-none--focus" type="text" value="<?= @$position ?>" placeholder="<?= $copy->Position ?>">
                        </div>
                      </div>
                      <div class="col-12 g-pa-5">
                        <div class="form-group g-ma-0">
                          <input id="inputLocation" class="form-control g-pa-12 g-brd-none--focus" type="text" value="<?= @$location ?>" placeholder="<?= $copy->Location ?>">
                        </div>
                      </div>
                      <div class="col-12 g-pa-5 d-none">
                        <div class="form-group g-ma-0">
                          <input id="inputType" class="form-control g-pa-12 g-brd-none--focus" type="text" value="<?= @$type ?>" placeholder="<?= $copy->Type ?>">
                        </div>
                      </div>
                      <div class="col-12 g-pa-5">
                        <button id="search" onclick="search()" class="btn btn-info btn-block g-pa-12 g-rounded-50 g-brd-2"><?= strtoupper($copy->Search) ?></button>
                        <input class="d-none" id="inputCategory" class="form-control g-pa-12" type="text" value="<?= @$category ?>">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- End Modal Search -->
          </div>
          <div class="col-12 <?= $this->agent->is_mobile() ? ' g-px-15 g-pt-10' : ' g-px-5' ?>">
            <div id="search-message" class="<?= $this->agent->is_mobile() ? '' : ' '; ?>alert alert-dismissible fade show g-font-weight-500 g-mb-0 g-px-20 g-py-15 d-none" role="alert">
              <div class="close g-font-size-16 g-mt-6 g-mr-20 g-pt-10 g-font-weight-900" onclick="reset()">
                Reset
              </div>
              <div class="close g-font-size-16 g-mt-5 g-pt-10 g-font-weight-400" onclick="close_alert()">
                <span>x</span>
              </div>
              <span id="search-total">0</span> Search result found
            </div>
          </div>
        <?php else : ?>
          <div class="col g-px-8">
            <div class="form-group g-ma-0">
              <input id="inputPosition" class="form-control g-pa-12 g-brd-none--focus" type="text" value="<?= @$position ?>" placeholder="<?= $copy->Position ?>">
            </div>
          </div>
          <div class="col g-px-8">
            <div class="form-group g-ma-0">
              <input id="inputLocation" class="form-control g-pa-12 g-brd-none--focus" type="text" value="<?= @$location ?>" placeholder="<?= $copy->Location ?>">
            </div>
          </div>
          <div class="col g-px-8 d-none">
            <div class="form-group g-ma-0">
              <input id="inputType" class="form-control g-pa-12 g-brd-none--focus" type="text" value="<?= @$type ?>" placeholder="<?= $copy->Type ?>">
            </div>
          </div>
          <div class="col g-px-8">
            <button id="search" onclick="search()" class="btn btn-info btn-block g-pa-12 g-rounded-50 g-brd-2"><?= strtoupper($copy->Search) ?></button>
            <input class="d-none" id="inputCategory" class="form-control g-pa-12" type="text" value="<?= @$category ?>">
          </div>
          <div class="col g-px-8">
            <button class="btn btn-outline-info btn-block g-pa-12 g-rounded-50 g-brd-2"><?= strtoupper($copy->ViewInternList) ?></button>
          </div>
        <?php endif; ?>
      </div>
    </div>
  </div>
</section>
<!-- End Search Bar -->