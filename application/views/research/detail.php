<?php foreach ($researchs as $research) : ?>
  <?php if ($research['slug'] == $slug) : ?>
    <div class="<?= $this->agent->is_mobile() ? 'g-pt-70' : 'g-pt-100'; ?> g-pb-40 g-font-asap">
      <div class="container <?= $this->agent->is_mobile() ? '' : 'border-bottom '; ?>g-pt-20 g-pb-30 g-mb-20">
        <div class="row">
          <?php if ($this->agent->is_mobile()) : ?>
            <div class="col-sm-4 align-self-top g-mb-20">
              <ul class="u-list-inline">
                <?php foreach ($breadcrumb as $bread) : ?>
                  <?php if ($bread['active'] != true) : ?>
                    <a class="g-font-color-w4c-1 g-text-transform-none" href="<?= $bread['url'] ?>">
                      <?= $bread['title'] ?>
                    </a>
                    <i class="fa fa-angle-right g-mx-10"></i>
                  <?php else : ?>
                    <span class="g-color-black"><?= $bread['title'] ?> </span>
                  <?php endif; ?>
                <?php endforeach; ?>
              </ul>
            </div>
          <?php endif; ?>

          <div class="col-sm-8">
            <h2 class="h3 g-font-weight-700 w-100 g-font-color-w4c-1">
              <?= $research['title'][$lang] ?>
            </h2>
          </div>

          <?php if (!$this->agent->is_mobile()) : ?>
            <div class="col-sm-4 align-self-top text-right">
              <ul class="u-list-inline">
                <?php foreach ($breadcrumb as $bread) : ?>
                  <?php if ($bread['active'] != true) : ?>
                    <a class="g-font-color-w4c-1 g-text-transform-none" href="<?= $bread['url'] ?>">
                      <?= $bread['title'] ?>
                    </a>
                    <i class="fa fa-angle-right g-mx-10"></i>
                  <?php else : ?>
                    <span class="g-color-black"><?= $bread['title'] ?> </span>
                  <?php endif; ?>
                <?php endforeach; ?>
              </ul>
            </div>
          <?php endif; ?>
        </div>
      </div>

      <!-- Research Detail -->
      <section class="container g-mt-10">
        <article class="row mx-0">
          <iframe class="col-sm-4 px-0 <?= $this->agent->is_mobile() ? '' : 'g-mt-35' ?>" src="<?= $research['file']['links']['preview'][$lang] ?>" width="100%" height="<?= $this->agent->is_mobile() ? '400' : '515' ?>" frameborder="0" scrolling="no" style="border:none; overflow: hidden;"></iframe>

          <div class="<?= $this->agent->is_mobile() ? 'g-pt-20' : 'col-sm-8 g-pl-45 g-pr-0 g-py-30' ?>">
            <h3 class="g-color-black g-font-weight-600 g-font-size-23 g-mb-25">
              <?= $copy->research_overview ?>
            </h3>

            <p class="g-font-size-14 g-mb-20"><?= $copy->category ?> : <i class="g-color-black"><?= $research['category'][$lang] ?></i></p>

            <p class="g-font-size-16 g-mb-30 text-left">
              <?= $research['content'][$lang]['detail'] ?>
            </p>

            <?php if (!$this->agent->is_mobile()) : ?>
              <div class="row">
                <div class="col-sm-4 align-item-center">
                  <h3 class="g-color-black g-font-weight-600 g-font-size-23 g-mb-30">
                    <?= $copy->share ?>
                  </h3>
                </div>

                <div class="col-sm-8 text-right">
                  <a class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover g-mr-10" href="https://wa.me/?text=<?= $research['hidden_title'][$lang] ?> - <?= site_url('research/' . $research['slug']) ?>" target="_blank">
                    <i class="fa fa-whatsapp"></i>
                  </a>
                  <a class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover g-mr-10" href="https://facebook.com/sharer/sharer.php?display=page&u=<?= site_url('research/' . $research['slug']) ?>" target="_blank">
                    <i class="fa fa-facebook"></i>
                  </a>
                  <a class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover g-mr-10" href="http://twitter.com/share?text=<?= $research['hidden_title'][$lang] ?>&url=<?= site_url('research/' . $research['slug']) ?>&via=<?= APP_NAME ?>" target="_blank">
                    <i class="fa fa-twitter"></i>
                  </a>
                  <a class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover g-mr-10" href="https://www.linkedin.com/sharing/share-offsite/?url=<?= site_url('research/' . $research['slug']) ?>" target="_blank">
                    <i class="fa fa-linkedin"></i>
                  </a>
                  <a id="copyLink" class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover g-mr-10 g-text-rotate" href="<?= site_url('research/' . $research['slug']) ?>" data-toggle="tooltip" data-placement="top" title="Copy Link">
                    <i class="fa fa-link"></i>
                  </a>
                </div>
              </div>
            <?php else : ?>
              <div id="side-box" class="g-px-10 g-bg-info g-bg-white" style="display: block; position: fixed; top: 140px; right: 0; z-index: 999;">
                <div class="g-px-10 g-pb-5 g-pt-5">
                  <a id="arrow-btn" class="g-font-size-23">
                    <img src="<?= site_url(DIR_IMG . 'icons/arrow-right.svg') ?>" width="24">
                  </a>
                </div>

                <div id="sidebar-share">
                  <div class="g-mt-10 g-mb-10">
                    <a class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover g-mr-10" href="https://wa.me/?text=<?= $research['hidden_title'][$lang] ?> - <?= site_url('research/' . $research['slug']) ?>" target="_blank">
                      <i class="fa fa-whatsapp"></i>
                    </a>
                  </div>
                  <div class="g-mb-10">
                    <a class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover" href="https://facebook.com/sharer/sharer.php?display=page&u=<?= site_url('research/' . $research['slug']) ?>" target="_blank">
                      <i class="fa fa-facebook"></i>
                    </a>
                  </div>
                  <div class="g-mb-10">
                    <a class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover" href="http://twitter.com/share?text=<?= $research['hidden_title'][$lang] ?>&url=<?= site_url('research/' . $research['slug']) ?>&via=<?= APP_NAME ?>" target="_blank">
                      <i class="fa fa-twitter"></i>
                    </a>
                  </div>
                  <div class="g-mb-10">
                    <a class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover g-mr-10" href="https://www.linkedin.com/sharing/share-offsite/?url=<?= site_url('research/' . $research['slug']) ?>" target="_blank">
                      <i class="fa fa-linkedin"></i>
                    </a>
                  </div>
                  <div class="g-mb-10">
                    <a id="copyLink" class="u-icon-v3 g-social-icon g-rounded-50x g-color-white--hover g-text-rotate" href="<?= site_url('research/' . $research['slug']) ?>" data-toggle="tooltip" data-placement="top" title="Copy Link">
                      <i class="fa fa-link"></i>
                    </a>
                  </div>
                </div>
              </div>
            <?php endif; ?>


            <h3 class="g-color-black g-font-weight-600 g-font-size-23 g-mb-30">
              <?= $copy->download ?>
            </h3>

            <p class="g-font-size-16 g-mt-minus-20">
              <?= $copy->release_date ?> : <span class="g-color-black"><?= $research['file']['release'][$lang] ?></span>
            </p>

            <p class="g-font-size-16 <?= $this->agent->is_mobile() ? 'g-mt-minus-10' : '' ?>">
              <span class="<?= $this->agent->is_mobile() ? 'g-mr-20' : 'g-mr-40' ?>"><?= $copy->file_type ?> : <span class="g-color-black"><?= $research['file']['type'] ?></span></span>
              <span class="g-mr-40"><?= $copy->total_pages ?> : <span class="g-color-black"><?= $research['file']['pages'][$lang] ?></span></span>
              <span class="<?= $this->agent->is_mobile() ? 'g-mr-20' : 'g-mr-40' ?>"><?= $copy->file_size ?> : <span class="g-color-black"><?= $research['file']['size'] ?></span></span>
            </p>
            <div class="row">
              <div class="col-md-4 col-xs-6">
                <button class="btn btn-info btn-block g-color-white g-brd-2 g-font-size-13 g-rounded-50 g-px-60 g-py-9 g-mt-10" data-toggle="modal" data-target="#modal-form">
                  <?= $copy->download_file ?>
                </button>
              </div>
            </div>
          </div>
        </article>
      </section>
      <!-- End Research Detail -->
      <?= $this->agent->is_mobile() ? '<hr>' : '' ?>

      <?php if (!empty($research['infographic']) && $research['infographic']['status'] == true) : ?>
        <!-- Infographic -->
        <?php
        if ($this->agent->is_mobile()) {
          $platform = 'mobile';
        } else {
          $platform = 'desktop';
        }
        ?>
        <section class="container g-mt-40">
          <article class="row mx-0">
            <div class="col-sm-4 px-0 <?= $this->agent->is_mobile() ? '' : 'g-mt-35' ?>" style="position:relative">
              <iframe src="<?= $research['infographic']['file'][$platform]['preview'][$lang] ?>" width="100%" height="<?= $this->agent->is_mobile() ? '200' : '265' ?>" frameborder="0" scrolling="no" style="pointer-events: none;border:none; overflow: hidden;"></iframe>
              <img src="<?= base_url(DIR_ICON . 'zoom.png') ?>" alt="" data-toggle="modal" data-target="#modal-infographic" style="height: 50px; position: absolute; top: calc(50% - 25px); left: calc(50% - 25px);">
            </div>
            <div class="<?= $this->agent->is_mobile() ? 'g-pt-20' : 'col-sm-8 g-pl-45 g-pr-0 g-py-30' ?>">
              <h3 class="g-color-black g-font-weight-600 g-font-size-23 g-mb-25">
                <?= $research['title'][$lang] . ' : ' . $copy->infographic;  ?>
              </h3>

              <p class="g-font-size-16 g-mb-30 text-left">
                <?= $copy->download_bellow ?>
              </p>

              <div class="row">
                <div class="col-md-4 col-12">
                  <a class="btn btn-outline-info btn-block g-brd-2 g-font-size-13 g-rounded-50 g-px-60 g-py-9 g-mt-10 w4c-color-blue g-color-white--hover g-color-white--active" href="<?= $research['infographic']['file'][$platform]['download']['id'] ?>">
                    <?= $copy->id_version ?>
                  </a>
                </div>
                <div class="col-6"> </div>
                <div class="col-md-4 col-12">
                  <a class="btn btn-outline-info btn-block g-brd-2 g-font-size-13 g-rounded-50 g-px-60 g-py-9 g-mt-10 w4c-color-blue g-color-white--hover g-color-white--active" href="<?= $research['infographic']['file'][$platform]['download']['en'] ?>">
                    <?= $copy->en_version ?>
                  </a>
                </div>
              </div>
              <br>
            </div>
          </article>
        </section>
        <div id="modal-infographic" class="modal text-center g-font-asap <?= $this->agent->is_mobile() ? 'g-px-0 g-mx-10' : 'g-px-20' ?>" tabindex="-1" role="dialog">
          <div class="modal-dialog modal-lg">
            <div class="modal-content g-pa-0">
              <div id="modal-box" style="position:relative">
                <button type="button" class="close g-pr-10 text-right g-font-size-18 g-mt-minus-10" data-dismiss="modal" aria-label="Close" style="position:absolute;top:40px;right:20px">
            <i class="hs-icon hs-icon-close g-color-black g-font-weight-900"></i>
          </button>
                <iframe class="w-100 g-mt-0" src="<?= $research['infographic']['file'][$platform]['preview'][$lang] ?>" height="<?= $this->agent->is_mobile() ? '640' : '1080' ?>" scrolling="no" frameborder="0" marginheight="0" marginwidth="0">Memuat…</iframe>
              </div>
            </div>
          </div>
        </div>
      <?php endif; ?>

      <!-- End Infographic -->
    </div>

    <div id="modal-form" class="modal text-center g-font-asap <?= $this->agent->is_mobile() ? 'g-px-0 g-mx-10' : 'g-px-20' ?>" tabindex="-1" role="dialog">
      <div class="modal-dialog modal-lg">
        <div class="modal-content g-py-20">
          <button type="button" class="close g-pr-10 text-right g-font-size-18 g-mt-minus-10" data-dismiss="modal" aria-label="Close">
            <i class="hs-icon hs-icon-close g-color-black g-font-weight-900"></i>
          </button>
          <h4 class="modal-title g-mt-minus-10 g-mb-10 g-color-black g-font-weight-900 <?= $this->agent->is_mobile() ? 'g-font-size-16' : 'g-font-size-24' ?>">Get Research Publication File</h4>
          <p class="modal-lead-title <?= $this->agent->is_mobile() ? 'g-font-size-10' : '' ?>">Let me know who are you first, so we can always keep in touch</p>

          <div id="modal-box">
            <iframe id="gform" class="w-100 <?= $this->agent->is_mobile() ? 'g-mt-0' : 'g-mt-40' ?>" src="https://docs.google.com/forms/d/e/1FAIpQLSfXxGKIjxm7sGSYuvL3kIHIZCAjEq4JX8wsSNHFpWEEtQYOcg/viewform?embedded=true&entry.861721459=<?= $research['prefilled_form'] ?>" height="<?= $this->agent->is_mobile() ? '2330' : '1930' ?>" scrolling="no" frameborder="0" marginheight="0" marginwidth="0">Memuat…</iframe>
            <!-- <iframe id="gform" class="w-100 <?= $this->agent->is_mobile() ? 'g-mt-0' : 'g-mt-40' ?>" src="https://docs.google.com/forms/d/e/1FAIpQLScKIUfNydP95BDhaWWWO6UvOq28FAl9ZpSRWgx4rZjs208djw/viewform?embedded=true&entry.861721459=<?= $research['prefilled_form'] ?>" height="<?= $this->agent->is_mobile() ? '2330' : '1930' ?>" scrolling="no" frameborder="0" marginheight="0" marginwidth="0">Memuat…</iframe> -->
          </div>
        </div>
      </div>
    </div>



    <script type="text/javascript">
      var loadGForm = 0;

      $('#gform').on('load', function() {
        loadGForm++;
        console.log('load gForm ', loadGForm);
        if (loadGForm > 1) {
          $('.modal-content .modal-title').text('Thank You for Fill the Form');
          $('.modal-content .modal-lead-title').text('You can download the document below');
          $('#modal-form .modal-dialog .modal-content #modal-box').addClass('g-px-40').html(`
        <div class="row g-bg-lightblue g-py-40 g-mt-10 text-center rounded justify-content-center">
            <div class="col-md-5 <?= $this->agent->is_mobile() ? 'g-mb-10 g-px-50' : '' ?>">
                <p><img width="32" height="32" src="<?= site_url(DIR_IMG . 'icons/flag_england.png') ?>" alt=""> <span class="g-ml-10 <?= $this->agent->is_mobile() ? 'g-font-size-12' : 'g-font-size-14' ?>">English Version</span></p>
                <a class="btn btn-outline-info btn-block g-brd-2 g-font-size-13 g-rounded-50  g-px-30 g-py-9" href="<?= $research['file']['links']['download']['en'] ?>">
                    Download <i class="g-ml-10 icon-cloud-download"></i>
                </a>
            </div>

            <div class="col-md-5 <?= $this->agent->is_mobile() ? 'g-mt-10 g-px-50' : '' ?>">
                <p><img width="32" height="32" src="<?= site_url(DIR_IMG . 'icons/flag_indonesia.png') ?>" alt=""> <span class="g-ml-10 <?= $this->agent->is_mobile() ? 'g-font-size-12' : 'g-font-size-14' ?>">Indonesian Version</span></p>
                <a class="btn btn-outline-info btn-block g-brd-2 g-font-size-13 g-rounded-50  g-px-30 g-py-9" href="<?= $research['file']['links']['download']['id'] ?>">
                    Download <i class="g-ml-10 icon-cloud-download"></i>
                </a>
            </div>
        </div>
        `);
        }
      });
    </script>

    <script>
      $(document).ready(function() {
        $('#copyLink').on('click', function() {
          event.preventDefault();
          var $temp = $("<input>");
          $("body").append($temp);
          $temp.val($(this).attr('href')).select();
          document.execCommand("copy");
          $(this).tooltip('hide')
            .attr('data-original-title', 'Copied!')
            .tooltip('show');
          $temp.remove();
        });
        

        $('#copyLink').on('mouseout', function() {
          $(this).attr('data-original-title', 'Copy Link')
            .tooltip('hide');
        });

        $('#arrow-btn').on('click', function() {
          $(this).html(function(index, value) {
            return value !== '<i class="fa fa-share-alt"></i>' ? '<i class="fa fa-share-alt"></i>' : '<img src="<?= site_url(DIR_IMG . 'icons/arrow-right.svg') ?>" width="24">';
          }).toggleClass('g-font-size-26');
          $('#side-box').toggleClass('g-bg-white');
          $('#sidebar-share').slideToggle();
        });

        $('.popup').click(function(event) {
          var width = 575,
            height = 400,
            left = ($(window).width() - width) / 2,
            top = ($(window).height() - height) / 2,
            url = this.href,
            opts = 'status=1' +
            ',width=' + width +
            ',height=' + height +
            ',top=' + top +
            ',left=' + left;

          window.open(url, 'twitter', opts);

          return false;
        });
        $('#arrow-btn').click();

      });
    </script>
  <?php endif; ?>
<?php endforeach; ?>