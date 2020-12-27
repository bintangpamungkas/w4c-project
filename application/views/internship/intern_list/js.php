<script>
  <?php if ($position != '' || $location != '' || $type != '' || $category != '') { ?>
    $(window).load(function() {
      let count = search();
      console.log(count);
      <?php if ($position == '' && $location == '' && $type == '') { ?>
        if (count > 0) {
          $('#search-message').removeClass('d-block');
          $('#search-message').addClass('d-none');
        }
      <?php } ?>
    })
  <?php } ?>

  /** Show by category */
  function filterByCategory(that) {
    $(that).parent().siblings('div').find('.btn').removeClass('btn-info');
    $(that).parent().siblings('div').find('.btn').addClass('btn-outline-info');
    $(that).removeClass('btn-outline-info');
    $(that).addClass('btn-info');

    var sel = $(that).attr('data-filter');
    $('.job-item').not(sel).fadeOut("slow");
    $('.job-item').filter(sel).hide();
    $('.job-item').filter(sel).fadeIn("slow");

    //change input
    if (sel == '*') {
      $('#inputCategory').val('');
    } else {
      $('#inputCategory').val($(that).html());
    }
    let count = search();
    if (count > 0) {
      $('#search-message').removeClass('d-block');
      $('#search-message').addClass('d-none');
    }

  };

  /** Sorting alphabetical */
  function sorting(that) {
    var sortBy = $(that).val().toLowerCase();
    var mylist = $('.job-list');

    var listitems = mylist.children('.job-item').get();

    listitems.sort(function(a, b) {
      return $(a).find('.job-' + sortBy).html().toUpperCase().localeCompare($(b).find('.job-' + sortBy).html().toUpperCase());
    });
    // console.log(listitems);
    $.each(listitems, function(index, item) {
      mylist.append(item);
    });

  }

  /** Searhing by input */
  function search() {
    var position, location, type, category, filter, list, item, i, correct_count, item_count = 0;
    position = $('#inputPosition').val().toLowerCase().replace("&", "&amp;");
    location = $('#inputLocation').val().toLowerCase();
    type = $('#inputType').val().toLowerCase();
    category = $('#inputCategory').val().toLowerCase();
    // filter = search_key.toUpperCase();
    list = $(".job-list");
    item = list.find(".job-item");
    item.each(function(index, value) {
      correct_count = 0;
      if (position == '') {
        correct_count++;
      } else if (position != '' && $(this).find('.job-title').html().toLowerCase().indexOf(position) > -1) {
        correct_count++;
      }
      if (location == '') {
        correct_count++;
      } else if (location != '' && $(this).find('.job-location').html().toLowerCase().indexOf(location) > -1) {
        correct_count++;
      }
      if (type == '') {
        correct_count++;
      } else if (type != '' && $(this).find('.job-type').html().toLowerCase().indexOf(type) > -1) {
        correct_count++;
      }
      if (category == '') {
        correct_count++;
      } else if (category != '' && $(this).find('.job-category').html().toLowerCase().indexOf(category) > -1) {
        correct_count++;
      }
      if (correct_count == 4) {
        $(this).fadeIn("slow");
        item_count++;
      } else {
        $(this).fadeOut("slow");
      }

    });
    $('#search-message').removeClass('d-none');
    $('#search-message').addClass('d-block');
    $('#search-total').html(item_count);
    if (item_count > 0) {
      $('#search-message').css({
        'background-color': 'rgba(42, 199, 105, 0.15)',
        'color': '#2AC769'
      });
    } else {
      $('#search-message').css({
        'background-color': 'rgba(230, 75, 59, 0.15)',
        'color': 'rgba(230, 75, 59)'
      });
    }
    <?php if ($this->agent->mobile()) : ?>
      $("#modal-mobile-search").modal("hide");
      var inputs = [],
        input = '';
      if ($('#inputPosition') != '') {
        inputs.push($('#inputPosition').val());
      }
      if ($('#inputLocation') != '') {
        inputs.push($('#inputLocation').val());
      }
      if ($('#inputType') != '') {
        inputs.push($('#inputType').val());
      }
      $.each(inputs, function(index, value) {
        // console.log(index+value);
        // console.log(input);
        if (value != '') {
          if (input != '') {
            input = input + ", ";
          }
          input = input + value;
        }
      });

      $('#inputSearch').val(input);
    <?php endif; ?>
    return item_count;
  }

  /** Drop Down Data */
  var positions = [
    <?php foreach ($interns as $job) {
      if($job->status==1){
      echo '"' . $job->title  . '",';
      }
    } ?>
  ];

  var types = [
    <?php foreach ($intern_type as $cat) {
      echo '"' . $cat->name  . '",';
    } ?>
  ];

  <?php
  $locations = [];
  foreach ($interns as $job) {
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

  function reset() {
    $('#inputPosition').val('');
    $('#inputLocation').val('');
    $('#inputType').val('');
    $('#inputCategory').val('');
    $('#inputShort').prop('selectedIndex', 0);
    search();
    $('#search-message').removeClass('d-block');
    $('#search-message').addClass('d-none');
  }
  function close_alert() {
    console.log('close');
    $('#search-message').removeClass('d-block');
    $('#search-message').addClass('d-none');
  }
  
</script>