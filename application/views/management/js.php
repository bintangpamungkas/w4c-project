<link rel="stylesheet" type="text/css" href="https://waste4change.com/official/2.8.assets/vendor/owl-carousel/owl.carousel.css" media="screen">

<script src="https://waste4change.com/official/2.8.assets/vendor/owl-carousel/owl.carousel.js"></script>
<script>
	/** Drop Down Data */
	var positions = [
		<?php foreach ($jobs as $job) {
		 if($job->status==1){
      echo '"' . $job->title  . '",';
      }
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

    $(window).ready(function () {
        var element_id = '#our-armada-carousel';
        $(element_id).owlCarousel({
            loop: true,
            margin: 10,
            dots: true,
            nav: true,
            autoplay: true,
            autoplayTimeout: 2000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 1
                },
                1000: {
                    items: 3
                }
            },
            navText: ['<i class="fa fa-angle-left g-color-gray-light-v1 nav-arrow-left" aria-hidden="true" style="transform: scale(2)"></i>', '<i class="fa fa-angle-right g-color-gray-light-v1 nav-arrow-right" aria-hidden="true" style="transform: scale(2)"></i>']
        });

        //$('#waste-carousel .owl-item').attr('style', 'width: 289px;margin-right: 0px;');
        $(element_id + ' .owl-controls').attr('style', 'margin-top: 30px;');
        var screen_display = $(element_id).width();
        // console.log(screen_display);
        var margin_side = (screen_display - screen_display * (9.5) / 100) / 2;
        //console.log('screen : '+screen_display+'nav : '+screen_display*//0/100+'batas : '+margin_side);
                        $(element_id+' .owl-nav').attr('style', 'position: absolute;top: 0px;margin-top: 430px;width: 12.9%;right: '+margin_side+'px;')                });


  var card = $("#card_subscriber");
  var button = $("#button_subscriber");
  var close = $(".close_button");
  var icon_newsletter = $(".icon_newsletter");
  var close_pwm = $(".close");
  var subs = $('.subs');
 

   close.on("click", function(){
      $(".icon_newsletter").attr("src", "https://waste4change.com/official/2.8.assets/img/icons/subs_email.png");
      button.show();
      card.hide();
  });

  button.on("click", function() {
    card.toggle();
    if ($("#card_subscriber").css("display") == "block" ) {
        $(".icon_newsletter").attr("src", "https://waste4change.com/official/2.8.assets/img/icons/subs.png");
        $("#exampleModal").attr("aria-hidden","true");
        $("#exampleModal").modal("hide");
    } else {
        $(".icon_newsletter").attr("src", "https://waste4change.com/official/2.8.assets/img/icons/subs_email.png");
        $("#exampleModal").modal("hide");
    }
  });

  subs.on("click", function() {
    card.hide();
  });

  $('.close_modal').on("click", function(){
		card.hide();
		$(".icon_newsletter").attr("src", "https://waste4change.com/official/2.8.assets/img/icons/subs_email.png");
	});

  (function ($) {
    window.fnames = new Array();
    window.ftypes = new Array();
    fnames[0] = "EMAIL";
    ftypes[0] = "email";
    fnames[1] = "FNAME";
    ftypes[1] = "text";
    fnames[3] = "CITY";
    ftypes[3] = "text";
    fnames[4] = "OCCUPATION";
    ftypes[4] = "text";
  })(jQuery);
  var $mcj = jQuery.noConflict(true);
  var success = $("mce-success-response")
  if (success.css('display') == 'block')
  {
     document.getElementById("mce-success-response").innerHTML = "Paragraph changed!";
  } else {
    // false
  }

</script>