<!-- Search Bar -->
<section class="g-white g-bg-white u-shadow-v20 g-pt-80">
  <div class="container">
    <!-- <form action=""> -->
    <div class="text-right g-pt-<?= $this->agent->is_mobile() ? '10' : '50' ?>">
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
    <form action="<?= site_url('internship/intern-list') ?>" method="get">
      <div class="row justify-align-center g-pt-50">
        <?php if ($this->agent->is_mobile()) : ?>
          <div class="col">
            <div class="form-group g-m-reset" data-toggle="modal" data-target="#modal-mobile-search">
              <div class="input-group g-brd-primary--focus">
                <div class="input-group-prepend g-brd-right-none">
                  <span class="input-group-text rounded-0 g-bg-white g-color-gray-light-v1 g-brd-right-none g-brd-none--focus"><i class="icon-magnifier"></i></span>
                </div>
                <input class="form-control g-pa-12 g-brd-left-none g-brd-none--focus" type="text" placeholder="<?= $copy->Search . ' ' . $copy->Position . ', ' . $copy->Location . ', '  ?>">
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
                          <input id="inputPosition" class="form-control g-pa-12 g-brd-none--focus" type="text" name="position" value="<?= @$position ?>" placeholder="<?= $copy->Position ?>">
                        </div>
                      </div>
                      <div class="col-12 g-pa-5">
                        <div class="form-group g-ma-0">
                          <input id="inputLocation" class="form-control g-pa-12 g-brd-none--focus" type="text" name="location" value="<?= @$location ?>" placeholder="<?= $copy->Location ?>">
                        </div>
                      </div>
                      <div class="col-12 g-pa-5">
                        <button id="search" class="btn btn-info btn-block g-pa-12 g-rounded-50 g-brd-2"><?= strtoupper($copy->Search) ?></button>
                      </div>
                      <div class="col-12 g-pa-5">
                        <a class="btn btn-outline-info btn-block g-pa-12 g-rounded-50 g-brd-2" href="<?= site_url('internship/intern-list') ?>"><?= strtoupper($copy->ViewInternList) ?></a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- End Modal Search -->
          </div>
        <?php else : ?>
          <div class="col g-px-8">
            <div class="form-group g-ma-0">
              <input id="inputPosition" class="form-control g-pa-12 g-brd-none--focus" name="position" type="text" placeholder="<?= $copy->Position ?>">
            </div>
          </div>
          <div class="col g-px-8">
            <div class="form-group g-ma-0">
              <input id="inputLocation" class="form-control g-pa-12 g-brd-none--focus" name="location" type="text" placeholder="<?= $copy->Location ?>">
            </div>
          </div>
          <div class="col g-px-8">
            <button id="search" onclick="search()" class="btn btn-info btn-block g-pa-12 g-rounded-50 g-brd-2"><?= strtoupper($copy->Search) ?></button>
            <input class="d-none" id="inputCategory" class="form-control g-pa-12" type="text">
          </div>
          <div class="col g-px-8">
            <a href="<?= site_url('internship/intern-list/') ?>" class="btn btn-outline-info btn-block g-pa-12 g-rounded-50 g-brd-2"><?= strtoupper($copy->ViewInternList) ?></a>
          </div>
        <?php endif; ?>
      </div>
    </form>
  </div>
</section>
<!-- End Search Bar -->