<?php
function get_lang($slug)
{
	$ci =& get_instance();
	$ci->load->database();
	$ci->load->library('session');

	if (empty($ci->session->userdata('language'))) {
		$lang = 'id';
	} else {
		$lang = $ci->session->userdata('language');
	}

	$ci->db->select('dictionary_content');
	$ci->db->where('dictionary_slug', $slug);
	$ci->db->where('language_code', $lang);
	$database = $ci->db->get('dictionary')->row();
	if (empty($database)) {
		if (empty(lang($slug))) {
			return $slug;
//        return 'Lorem Ipsum...';
		} else {
			return lang($slug);
		}
	} else {
		return $database->dictionary_content;
	}
}

function get_image($image, $replace = null)
{
	if (strpos($image, 'http') !== false) {
		$directory = $image;
	} else {
		$directory = base_url($image);
	}

	$url = $directory;
	$url = trim($url); // Get rid of any accidental whitespace
	$parsed = parse_url($url); // analyse the URL
	if (isset($parsed['scheme']) && strtolower($parsed['scheme']) == 'https') {
		// If it is https, change it to http
		$url = 'https://' . substr($url, 8);
	}

	if (@getimagesize($url)) {
		return $url;
	} else {
		if ($replace != null) {
			if (file_exists($replace)) {
				return $replace;
			} else {
				return base_url(DIR_IMG.'error/1x2.png');
			}
		} else {
			return base_url(DIR_IMG.'error/1x2.png');
		}
	}
}

function view_range_date($start, $end = null, $lang)
{
	if (empty($lang) || $lang == 'id') {
		$day_type = 'd';
	} else {
		$day_type = 'jS';
	}
	if ($end === null) {
		return date($day_type, strtotime($start)) . ' ' . strftime('%B %Y', strtotime($start));
	} else {
		$start_day = date($day_type, strtotime($start));
		$start_month = strftime('%B', strtotime($start));
		$start_year = date('Y', strtotime($start));
		$end_day = date($day_type, strtotime($end));
		$end_month = strftime('%B', strtotime($end));
		$end_year = date('Y', strtotime($end));
		if ($start_year === $end_year) {
			if ($start_month === $end_month) {
				return $start_day . ' - ' . $end_day . ' ' . $end_month . ' ' . $end_year;
			} else {
				return $start_day . ' ' . $end_month . ' - ' . $end_day . ' ' . $end_month . ' ' . $end_year;
			}
		} else {
			return $start_day . ' ' . $end_month . ' ' . $end_year . ' - ' . $end_day . ' ' . $end_month . ' ' . $end_year;
		}
	}
}

function view_sort_name($pretext, $limit_char = null, $limit_word = null)
{
	$text = str_replace('-', ' ', $pretext);
	if (strlen($text) <= ($limit_word * 7)) {
		return $pretext;
	}
	$word_section = explode("(", $text);
	if (empty($word_section[1])) {
		$words = explode(" ", $word_section[0]);

		$acronym = "";
		$postacronym = "";

		if ($limit_word != null && $limit_char != null) {

			if (count($words) < $limit_word) {
				$postacronym .= $pretext;
			} else {
				$char_per_limit_word = 0;
				for ($i = 0; $i <= $limit_word; $i++) {
					$char_per_limit_word += strlen($words[$i]);
				}
				if ((strlen($word_section[0])) <= $limit_char) {
					return (strlen($word_section[0])) . ' <=limit_char';
					$postacronym .= $pretext;

//					for ($i = 0; $i < $limit_word; $i++) {
//						$acronym .= $words[$i][0];
//					}
				} else if ($char_per_limit_word + ($limit_word - 1) < $limit_char) {
//					for ($i = 0; $i < $limit_word; $i++) {
//						$acronym .= $words[$i][0];
//					}
					$postacronym .= $pretext;

					return $char_per_limit_word + ($limit_word - 1) . 'limit_word kata <= limit_char';
				} else {
//					return 'panjang kombinasi';
					for ($i = 0; $i <= $limit_word; $i++) {
						$acronym .= $words[$i][0];
					}
					for ($i = $limit_word + 1; $i < count($words); $i++) {
						$postacronym .= ' ' . $words[$i];
					}
//					$acronym .= $word_section[0];

				}
			}

		} else {
			$postacronym .= $pretext;
		}
		return strtoupper($acronym) . $postacronym;
	} else {
		return $pretext;
	}
}

function get_url($url)
{
	if (strpos($url, 'http') !== false) {
		$directory = $url;
	} else {
		$directory = HOST.$url;
	}
	return $directory;
}

function limit_char($x, $length, $dot = true)
{
	if (strlen($x) <= $length) {
		echo $x;
	} else {
		if ($dot == true) {
			$y = substr($x, 0, $length) . '...';
		} else {
			$y = substr($x, 0, $length);
		}
		echo $y;
	}
}

function limit_word($x, $length, $delimiter = null)
{
	$j = 0;
	if ($delimiter != null) {
		$text = explode($delimiter, $x);
	} else {
		$text = explode(" ", $x);
	}
	for ($i = 0; $i < $length; $i++) {
		if (!empty($text[$i])) {
			echo $text[$i] . $delimiter . " ";
			$j++;
		}
	}
	if (!empty($text[$length])) {
		echo "...";
	}
}

function does_url_exists($url)
{
	$ch = curl_init($url);
	curl_setopt($ch, CURLOPT_NOBODY, true);
	curl_exec($ch);
	$code = curl_getinfo($ch, CURLINFO_HTTP_CODE);

	if ($code == 200) {
		$status = true;
	} else {
		$status = false;
	}
	curl_close($ch);
	return $status;
}

function view_date($date, $with_time = NULL, $as_month = NULL, $region = null, $with_day = null)
{
	$month = array(1 =>
		'Januari',
		'Februari',
		'Maret',
		'April',
		'Mei',
		'Juni',
		'Juli',
		'Agustus',
		'September',
		'Oktober',
		'November',
		'Desember'
	);


	if ($date == '' || $date == null || $date == '0000-00-00' || $date == '0000-00-00 00:00:00') {

		return '-';

	} else {


		$split = explode('-', $date);

		$segment_date = explode(' ', $split[2]);


		if ($region == 'id') {

			$month_regional = $month[(int)$split[1]];
			$day_regional = ucwords(lang(strtolower(date('l', strtotime($date)))));

		} else {

			$day_regional = ucwords(date('l', strtotime($date)));

			if ($as_month) {

				$month_regional = date('F', strtotime($split[1]));

			} else {

				$month_regional = $split[1];

			}

		}


		if (count($segment_date) > 1) {

			if ($with_time) {

				$time = ' ' . $segment_date[1];

			} else {

				$time = '';

			}

			if ($with_day == true) {
				$view_date = $day_regional . ', ' . $segment_date[0] . ' ' . $month_regional . ' ' . $split[0] . $time;
			} else {
				$view_date = $segment_date[0] . ' ' . $month_regional . ' ' . $split[0] . $time;
			}

		} else {

			if ($with_day == true) {
				$view_date = $day_regional . ', ' . $split[2] . ' ' . $month_regional . ' ' . $split[0];
			} else {
				$view_date = $split[2] . ' ' . $month_regional . ' ' . $split[0];
			}

		}

		return $view_date;

	}


}

function view_month($date)
{
	$month = array(1 => 'Januari',
		'Februari',
		'Maret',
		'April',
		'Mei',
		'Juni',
		'Juli',
		'Agustus',
		'September',
		'Oktober',
		'November',
		'Desember'
	);
	return $month[$date];
}

function view_time($time, $with_second = NULL)
{
	$with_second == TRUE ? $format = "H:i:s" : $format = "H:i";
	if ($time == '' || $time == null || $time == '0000-00-00' || $time == '0000-00-00 00:00:00' || $time == '00:00:00') {
		$view_time = '-';
	} else {
		$view_time = date($format, strtotime($time));
	}

	return $view_time;
}

function view_money($currency, $nominal)
{
	return '<small>' . $currency . '</small>' . '. ' . number_format($nominal, 0, ',', '.');
}

function view_number($number)
{
	if (is_numeric($number)) {
		return number_format($number, 0, ',', '.');
	} else {
		return $number;
	}
}

function view_js_counter($prenumber, $lang)
{
	if (is_numeric($prenumber)) {
		$numbers = number_format((int)$prenumber, 0, ',', '.');
		$array_number = explode('.', $numbers);
		foreach ($array_number as $index => $number) {
			if ($index != 0) {
				echo '<span style="margin-left: -10px;margin-right: -10px">';
				if ($lang == 'id') {
					echo '.';
				} else {
					echo ',';
				}
				echo '</span>';
			}

			$pre = '';
			if ($number[0] == 0) {
				$pre = '<span style="margin-right: -10px">0</span>';
				if ($number[1] == 0) {
					$pre = '<span style="margin-right: -10px">00</span>';
				}
			}
			?>
			<?=$pre?>
			<span class="js-counter"><?= $number ?></span>
			<?php
		}
	} else {
		?>
		<span><?= $achievement->achievement_count ?></span>
		<?php
	}
}

function view_trashpay($currency, $nominal)
{
	return number_format(floor($nominal), 0, ',', '.') . ' <small>' . $currency . '</small>';
}

function view_telephone($string, $to_rules)
{
	$telephone_first_code = substr($string, 0, 3);
	$telephone_first_zero = substr($string, 0, 1);
	if ($telephone_first_code == PHONE_AREA_ID) {
		$number = substr($string, 3, 999);
	} else if ($telephone_first_zero == '0') {
		$number = substr($string, 1, 999);
	} else {
		$number = $string;
	}

	if ($to_rules == 'true') {
		return PHONE_AREA_ID . $number;
	} else if ($to_rules == 'wa') {
		return '62' . $number;
	} else {
		return '0' . $number;
	}

}

function day_week()
{
	$day_week = array(
		'1' => 'monday',
		'2' => 'tuesday',
		'3' => 'wednesday',
		'4' => 'thursday',
		'5' => 'friday',
		'6' => 'saturday',
		'7' => 'sunday',
	);
	return $day_week;
}

function month()
{
	$month = array(
		'1' => 'januari',
		'2' => 'februari',
		'3' => 'maret',
		'4' => 'april',
		'5' => 'mei',
		'6' => 'juni',
		'7' => 'juli',
		'8' => 'agustus',
		'9' => 'september',
		'10' => 'oktober',
		'11' => 'november',
		'12' => 'desember',
	);
	return $month;
}

function year($begin, $end)
{
	$year = range($begin, $end);
	return $year;
}

function services_list_helper()
{
	$services = [
		[
			'caption' => 'Send Your Waste',
			'icon' => 'et-icon-gift',
			'url' => SEND_YOUR_WASTE_URL,
			'number' => '1',
			'color' => 'blue'
		],
		[
			'caption' => 'Dropping Box',
			'icon' => 'icon-electronics-084 u-line-icon-pro',
			'url' => DROPBOX_URL,
			'number' => '2',
			'color' => 'info'
		],
		[
			'caption' => 'Responsible Waste Management',
			'icon' => 'icon-transport-029 u-line-icon-pro',
			'url' => W4C_URL . 'service/' . '#personal',
			'number' => '3',
			'color' => 'indigo'
		]
	];
	return $services;
}

function meta_data($activation,$meta_data=false)
{
	$param = [
			'title_1' => 'Waste4Change - Responsible Waste Management',
			'description_1' => get_lang('a-social-entrepreneur-that-provides-segregated-and-responsible-waste-management-services-by-reducing-the-amount-of-waste-that-end-up-in-landfills'),
			'title_2' => get_lang('a-social-entrepreneur-that-provides-responsible-waste-management-services'),
			'description_2' => get_lang('a-social-entrepreneur-that-provides-segregated-and-responsible-waste-management-services-by-reducing-the-amount-of-waste-that-end-up-in-landfills'),
			'keywords' => get_lang('waste-management-waste-management-jakarta-waste-management-service-waste-management-using-modern-technology-recycling-service-waste-processing-service'),
	];
//	print_r($param);
//die();
	if ($activation == true) {
		if (empty($meta_data)){
//			foreach ($param as $param) {
//				if ($param['status'] == true && $_SERVER['REQUEST_URI'] == $param['site_url']) {
					?>
					<meta name="description" content="<?= $param['description_1'] ?>">
					<meta name="keywords" content="<?= $param['keywords'] ?>">
					<meta property="og:url" content="<?= 'https://waste4change.com' . $_SERVER['REQUEST_URI'] ?>"/>
					<meta property="og:site_name" content="<?= APP_NAME ?>"/>
					<meta property="og:title" content="<?= $param['title_2'] ?>">
					<meta property="og:description" content="<?= $param['description_2'] ?>"/>
					<meta property="og:image" content="<?= base_url(DIR_IMG.'logo/favicon.jpg') ?>">
					<meta property="og:image:type" content="image/jpg">
					<meta property="og:image:width" content="1024">
					<meta property="og:image:height" content="1024">
					<link rel="canonical" href="<?= 'https://waste4change.com/'?>"/>
					<?php
//				}
//			}
		}else{
			?>
			<meta name="description" content="<?= $meta_data['description_1'] ?>">
			<meta name="keywords" content="<?= $meta_data['keywords'] ?>">
			<meta property="og:url" content="<?= 'https://waste4change.com' . $meta_data['site_url'] ?>"/>
			<meta property="og:site_name" content="<?= APP_NAME ?>"/>
			<meta property="og:title" content="<?= $meta_data['title_2'] ?>">
			<meta property="og:description" content="<?= $meta_data['description_2'] ?>"/>
			<meta property="og:image" content="<?= base_url(DIR_IMG.'logo/favicon.jpg') ?>">
			<meta property="og:image:type" content="image/jpg">
			<meta property="og:image:width" content="1024">
			<meta property="og:image:height" content="1024">
			<link rel="canonical" href="<?= 'https://waste4change.com' . $meta_data['site_url'] ?>"/>
			<?php
		}
	}
}

function hotjar_tracking($activation)
{
	$param = [
		[
			'site_url' => '/official/',
			'site_name' => '<!-- Hotjar Tracking Code for htttps://waste4change.com/official -->',
			'site_source' => '<!-- Waste4Change @Beta SM from kertasmuda@gmail.com -->',
			'tracking_code' => '1102073',
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		],
		[
			'site_url' => '/official/service/zero-waste-to-landfill-management',
			'site_name' => '<!-- Hotjar Tracking Code for https://waste4change.com/official/service/zero-waste-to-landfill-management -->',
			'site_source' => '<!-- Waste4Change @Beta SM from kertasmuda@gmail.com -->',
			'tracking_code' => '1380850',
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		],
		[
			'site_url' => '/official/service/responsible-waste-management',
			'site_name' => '<!-- Hotjar Tracking Code for https://waste4change.com/official/service/responsible-waste-management -->',
			'site_source' => '<!-- Waste4Change @Beta SM from kertasmuda@gmail.com -->',
			'tracking_code' => '1380868',
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		],

		[
			'site_url' => '/official/service/inorganic-waste-management',
			'site_name' => '<!-- Hotjar Tracking Code for https://waste4change.com/official/service/inorganic-waste-management -->',
			'site_source' => '<!-- Waste4Change @Beta SM from kertasmuda@gmail.com -->',
			'tracking_code' => '1384509',
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		],
		[
			'site_url' => '/official/service/edukasi-bijak-sampah',
			'site_name' => '<!-- Hotjar Tracking Code for https://waste4change.com/official/service/edukasi-bijak-sampah -->',
			'site_source' => '<!-- Waste4Change @Beta SM from kertasmuda@gmail.com -->',
			'tracking_code' => '1380875',
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		],
		[
			'site_url' => '/official/service/akademi-bijak-sampah',
			'site_name' => '<!-- Hotjar Tracking Code for https://waste4change.com/official/service/akademi-bijak-sampah -->',
			'site_source' => '<!-- Waste4Change @Beta SM from kertasmuda@gmail.com -->',
			'tracking_code' => '1380883',
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		],
		[
			'site_url' => '/official/service/event-waste-management',
			'site_name' => '<!-- Hotjar Tracking Code for https://waste4change.com/official/service/event-waste-management -->',
			'site_source' => '<!-- Waste4Change @Beta SM from kertasmuda@gmail.com -->',
			'tracking_code' => '1380864',
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		],
		[
			'site_url' => '/official/service/extended-producer-responsibility',
			'site_name' => '<!-- Hotjar Tracking Code for https://waste4change.com/official/service/extended-producer-responsibility -->',
			'site_source' => '<!-- Waste4Change @Beta SM from kertasmuda@gmail.com -->',
			'tracking_code' => '1384512',
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		],
		[
			'site_url' => '/official/service/program-pendampingan-optimalisasi-tps3r',
			'site_name' => '<!-- Hotjar Tracking Code for https://waste4change.com/official/service/program-pendampingan-optimalisasi-tps3r -->',
			'site_source' => '<!-- Waste4Change @Beta SM from kertasmuda@gmail.com -->',
			'tracking_code' => '1384513',
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		],
		[
			'site_url' => '/official/service/feasibility-study',
			'site_name' => '<!-- Hotjar Tracking Code for https://waste4change.com/official/service/feasibility-study -->',
			'site_source' => '<!-- Waste4Change @Beta SM from kertasmuda@gmail.com -->',
			'tracking_code' => '1384515',
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		],
		[
			'site_url' => '/official/service/black-soldier-fly-learning-center',
			'site_name' => '<!-- Hotjar Tracking Code for https://waste4change.com/official/service/black-soldier-fly-learning-center -->',
			'site_source' => '<!-- Waste4Change @Beta SM from kertasmuda@gmail.com -->',
			'tracking_code' => '1384517',
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		]
	];
	if ($activation == true) {
		foreach ($param as $param) {
			if ($param['dev_status'] == true && $param['status'] == true && $_SERVER['REQUEST_URI'] == $param['site_url']) {
				?>
				<?= $param['site_name'] ?>
				<?= $param['site_source'] ?>

				<script>
					(function (h, o, t, j, a, r) {
						h.hj = h.hj || function () {
							(h.hj.q = h.hj.q || []).push(arguments)
						};
						h._hjSettings = {hjid: <?= $param['tracking_code'] ?>, hjsv: 6};
						a = o.getElementsByTagName('head')[0];
						r = o.createElement('script');
						r.async = 1;
						r.src = t + h._hjSettings.hjid + j + h._hjSettings.hjsv;
						a.appendChild(r);
					})(window, document, 'https://static.hotjar.com/c/hotjar-', '.js?sv=');
				</script>
				<?php
			}
		}
	}
}

function google_analytic($activation)
{
	$param = [
		[
			'site_name' => '<!-- Google Analytic Waste4Change -->',
			'site_source' => '<!-- Waste4Change @Beta from kertasmuda@gmail.com -->',
			'tracking_code' => 'UA-134685047-1',
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		],
	];
	if ($activation == true) {
		foreach ($param as $param) {
			if ($param['dev_status'] == true && $param['status'] == true) {
				?>
				<!-- Global site tag (gtag.js) - Google Analytics -->

				<?= $param['site_name'] ?>

				<?= $param['site_source'] ?>

				<script async src="https://www.googletagmanager.com/gtag/js?id=<?= $param['tracking_code'] ?>"></script>
				<script>
					window.dataLayer = window.dataLayer || [];

					function gtag() {
						dataLayer.push(arguments);
					}

					gtag('js', new Date());

					gtag('config', '<?= $param['tracking_code'] ?>');
				</script>

				<?php
			}
		}
	}
}

function tawk_to_chat()
{
	$param = [
		[
			'site_name' => 'Waste4Change @Beta',
			'tracking_code' => "
            <!--Start of Tawk.to Script-->
            <script>
            var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
            (function(){
                var s1=document.createElement('script'),s0=document.getElementsByTagName('script')[0];
            s1.async=true;
            s1.src='https://embed.tawk.to/5c6aa24577e0730ce0437c43/1d408medv';
            s1.charset='UTF-8';
            s1.setAttribute('crossorigin','*');
            s0.parentNode.insertBefore(s1,s0);
            })();
            </script>
            <!--End of Tawk.to Script-->
            ",
			'status' => true,
			'dev_status' => IS_ONLINE == 1 ? true : false,
		]
	];
	return $param;
}

function share_social_media()
{
	$social = [
		[
			'social_name' => 'Instagram',
			'social_url' => 'https://instagram.com/waste4change',
			'social_icon' => 'fa fa-instagram',
			'social_color' => 'g-brd-2 g-color-info g-color-white--hover g-bg-purple--hover',
			'number' => '1',
		],
		[
			'social_name' => 'Facebook',
			'social_url' => 'https://facebook.com/sharer/sharer.php?u=',
			'social_icon' => 'fa fa-facebook',
			'social_color' => 'g-brd-2 g-color-info g-color-white--hover g-bg-facebook--hover',
			'number' => '2',
		],
		[
			'social_name' => 'Twitter',
			'social_url' => 'https://twitter.com/intent/tweet/?text=' . lang('share_caption'),
			'social_icon' => 'fa fa-twitter',
			'social_color' => 'g-brd-2 g-color-info g-color-white--hover g-bg-twitter--hover',
			'number' => '3',
		],
		[
			'social_name' => 'LinkedIn',
			'social_url' => 'https://www.linkedin.com/company/waste4change/',
			'social_icon' => 'fa fa-linkedin',
			'social_color' => 'g-brd-2 g-color-info g-color-white--hover g-bg-linkedin--hover',
			'number' => '4',
		],
		[
			'social_name' => 'Whatsapp',
			'social_url' => 'https://wa.me/?text=' . lang('share_caption'),
			'social_icon' => 'fa fa-whatsapp',
			'social_color' => 'g-brd-2 g-color-info g-color-white--hover g-bg-primary--hover',
			'number' => '5',
		],
	];

	return $social;
}
