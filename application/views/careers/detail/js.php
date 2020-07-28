<script>
  /** Drop Down Data */
  var positions = [
    <?php foreach ($jobs as $job) {
      echo '"' . $job->title  . '",';
    } ?>
  ];

  var types = [
    <?php foreach ($job_type as $cat) {
      echo '"' . $cat->name  . '",';
    } ?>
  ];

  <?php
  $locations = [];
  foreach ($jobs as $job) {
    foreach (array_unique($job->location) as $loc) {
      $locations[] = $loc;
    }
  }
  ?>
  var locations = [
    <?php foreach (array_unique($locations) as $location) {
      echo '"' . $location  . '",';
    } ?>
  ];

  $(function() {
    $("#inputPosition").autocomplete({
      source: positions,
      select: function dropPosition(event, ui) {
        $('#search').attr('disabled', false);
      }
    });
    $("#inputType").autocomplete({
      source: types,
      select: function(event, ui) {
        $('#search').attr('disabled', false);
      }
    });
    $("#inputLocation").autocomplete({
      source: locations,
      select: function(event, ui) {
        $('#search').attr('disabled', false);
      }
    });

  });

  $('#inputPosition').keydown(function(e) {
    if (e.keyCode == 13) {
      e.preventDefault();
      check_autocomplete_input($(this).val(), positions);
    }
    $('#search-button').attr('disabled', true);
  });

  function check_autocomplete_input(input_city, list) {
    let testCase, count_similarity = 0,
      i;
    if (input_city.length !== 0) {
      for (i = 0; i < list.length; i++) {
        testCase = list[i];
        if (input_city === testCase) {
          count_similarity++;
          $('#search-button').attr('disabled', false);
        }
      }
    }
    if (count_similarity > 0) {
      $('#search-input').attr('readonly', true);
      $('#search-button').attr('disabled', true);
      $('#search-form').submit();
    }
  }
  $('#arrow-btn').on('click', function() {
    $(this).html(function(index, value) {
      return value !== '<i class="fa fa-share-alt g-mr-15"></i>' ? '<i class="fa fa-share-alt g-mr-15"></i>' : '<img src="<?= site_url(DIR_IMG . 'icons/arrow-right.svg') ?>" width="24">';
    }).toggleClass('g-font-size-26');
    $('#side-box').toggleClass('g-bg-white');
    $('#sidebar-share').slideToggle();
  });
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
</script>