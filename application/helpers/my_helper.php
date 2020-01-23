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
		$url = 'http://' . substr($url, 8);
	}

	if (@getimagesize($url)) {
		return $url;
	} else {
		if ($replace != null) {
			if (file_exists($replace)) {
				return $replace;
			} else {
				return base_url('assets/img/error/1x2.png');
			}
		} else {
			return base_url('assets/img/error/1x2.png');
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

function view_sort_name($pretext, $limit=null)
{
	$text = str_replace('-', ' ', $pretext);
	$word = explode("(", $text);
	if (empty($word[1])) {
		$words = explode(" ", $text);

		$acronym = "";
		$postacronym = "";

		if ($limit!=null){
			for ($i=0;$i<$limit ;$i++){
				$acronym .= $words[$i][0];
			}
			for ($i=$limit;$i<(count($words)) ;$i++){
				$postacronym .= ' '.$words[$i];
			}
		}else{
			foreach ($words as $w) {
				$acronym .= $w[0];
			}
		}

		return strtoupper($acronym).$postacronym;
	} else {
		return $word[0];
	}
}

function get_url($url)
{
	if (strpos($url, 'http') !== false) {
		$directory = $url;
	} else {
		$directory = site_url($url);
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

function meta_data($activation)
{
	$param = [
		[
			'site_url' => '/official/',
			'title_1' => 'Waste4Change - Responsible Waste Management',
			'decription_1' => 'Perusahaan sosial yang menyediakan layanan pengelolaan sampah untuk mengurangi timbunan sampah di TPA ',
			'title_2' => 'Perusahaan sosial yang menyediakan pengelolaan sampah secara bertanggung jawab',
			'description_2' => 'Perusahaan sosial yang menyediakan jasa pengolahan sampah terpilah secara bertanggung jawab dengan mengurangi timbunan sampah di TPA',
			'keywords' => 'waste management, waste management jakarta, layanan pengelolaan sampah, pengelolaan sampah dengan teknologi modern, layanan daur ulang, jasa pengelola sampah',
			'status' => true,
		],
		[
			'site_url' => '/official/service/zero-waste-to-landfill-management',
			'title_1' => 'Zero Waste to Landfill - Responsible Waste Management',
			'decription_1' => 'Program pemilahan sampah dari sumber dan memastikan pengolahan seluruh sampah tidak ada yang dikirim ke TPA dengan pemberian pelaporan alur sampah yang lengkap.',
			'title_2' => 'Layanan pengelolaan sampah untuk perusahaan yang memastikan tidak ada sampah yang berakhir di TPA',
			'description_2' => 'Program pengelolaan sampah perusahaan dengan pengelolaan dan pengolahan secara bertanggung jawab tanpa ada sampah yang masuk ke TPA. Waste4Change akan memberikan pelaporan alur sampah',
			'keywords' => 'waste management, pengolahan sampah, daur ulang, sampah anorganik, sampah organik, sampah perusahaan, sampah kantor, jenis material sampah, mitra waste4change, pengelolaan sampah, program daur ulang',
			'status' => true,
		],
		[
			'site_url' => '/official/service/responsible-waste-management',
			'title_1' => 'Responsible Waste Management - Responsible Waste Management',
			'decription_1' => 'Pengelolaan Sampah Bertanggung Jawab adalah penerapan sistem kelola sampah yang menerapkan pemilahan sampah di sumber dan memastikan pengolahan sampah lebih optimal, dan adanya pelaporan alur sampah.',
			'title_2' => 'Program pengelolaan sampah secara optimal beserta pelaporan alur sampah',
			'description_2' => 'Program pengelolaan sampah dari sumbernya yang dikelola secara optimal dengan pelaporan alur sampah',
			'keywords' => 'program pengelolaan sampah, pengelolaan sampah, pengelolaan sampah dari sumber, pelaporan alur sampah, pengelolaan sampah secara optimal, pengelolaan sampah bertanggung jawab',
			'status' => true,
		],

		[
			'site_url' => '/official/service/inorganic-waste-management',
			'title_1' => 'Inorganic Waste Management - Responsible Waste Management',
			'decription_1' => 'Sistem kelola sampah anorganik yang menerapkan pemilahan sampah secara optimal dan memberikan pelaporan alur sampah yang lengkap',
			'title_2' => 'Pengelolaan sampah anorganik dengan pemilahan yang optimal ',
			'description_2' => 'Pengelolaan sampah anorganik dengan pemilahan sampah yang optimal dan pelaporan alur sampah yang lengkap',
			'keywords' => 'pengelolaan sampah anorganik, pemilahan sampah, pemilahan sampah yang optimal, pelaporan alur sampah, sampah anorganik, waste management',
			'status' => true,
		],
		[
			'site_url' => '/official/service/edukasi-bijak-sampah',
			'title_1' => 'Edukasi Bijak Sampah - Responsible Waste Management',
			'decription_1' => 'Program edukasi dengan memberikan pemahaman untuk mengelola sampah secara bertanggung jawab dengan materi dan kegiatan yang menyenangkan sehingga dapat diterima dan peserta ikut berperan aktif dalam program ini',
			'title_2' => 'Edukasi pengolahan sampah yang bertanggung jawab',
			'description_2' => 'Program edukasi pengolahan dan pengelolaan sampah dengan memberikan pemahaman yang bertujuan untuk meningkatkan kesadaran peserta akan pentingnya pengelolaan sampah yang bertanggung jawab.',
			'keywords' => 'program edukasi, pemahaman pengelolaan sampah, pengelolaan sampah, pengelolaan sampah bertanggung jawab, kampanye lingkungan, bijak kelola sampah',
			'status' => true,
		],
		[
			'site_url' => '/official/service/akademi-bijak-sampah',
			'title_1' => 'Akademi Bijak Sampah - Responsible Waste Management',
			'decription_1' => 'Program edukasi yang dirancang untuk memberikan pengalaman langsung kepada peserta dengan mengunjungi TPA dan Rumah Pemulihan Material Waste4change dan pemberian materi, diskusi serta permainan mengenai bijak kelola sampah',
			'title_2' => 'Edukasi pengelolaan sampah dengan mengunjungi TPS dan tempat pengelolaan sampah ',
			'description_2' => 'Program edukasi yang memberikan pengalaman langsung kepada peserta dengan mengunjungi TPA /TPS kota dan tempat proses daur ulang sampah dengan tujuan meningkatkan kesadaran peserta akan pentingnya pengelolaan sampah yang bertanggung jawab.',
			'keywords' => 'program edukasi, kunjungan ke tempat pengelolaan sampah, kunjungan ke TPA, bijak mengelola sampah, kampanye lingkungan, aksi kelola sampah, bijak kelola sampah',
			'status' => true,
		],
		[
			'site_url' => '/official/service/event-waste-management',
			'title_1' => 'Event Waste Management - Responsible Waste Management',
			'decription_1' => 'Program pengelolaan sampah acara yang memastikan seluruh sampah acara dikelola dengan baik melalui tempat sampah terpilah di setiap titik keramaian dan pengadaan booth edukasi hingga pengangkutan sampah acara',
			'title_2' => 'Pengelolaan dan edukasi sampah acara secara terpilah dan bertanggung jawab',
			'description_2' => 'Program pengelolaan sampah melalui tempat sampah terpilah yang telah disediakan di titik keramaian acara dan pengadaan booth edukasi selama acara berlangsung.',
			'keywords' => 'pengelolaan sampah acara, tempat sampah terpilah, booth edukasi sampah, pengangkutan sampah terpilah, kampanye lingkungan, bijak kelola sampah',
			'status' => true,
		],
		[
			'site_url' => '/official/service/extended-producer-responsibility',
			'title_1' => 'Extended Producer Responsibility - Responsible Waste Management',
			'decription_1' => 'Program pengelolaan sampah brand yang berasal dari proses produksi seperti cacat produksi, reject, atau sisa produksi, produk kadaluarsa, produk rusak, produk bekas pakai, sampah retur, sampah bekas pakai, sampah dari pengguna konsumen seperti kemasan kosong',
			'title_2' => 'Proses pengelolaan sampah berlabel brand ',
			'description_2' => 'Program EPR merupakan program pengelolaan sampah berlabel brand dari perusahaan dengan kriteria sampah seperti produk reject, cacat produksi, kedaluwarsa, bekas pakai yang akan dikelola secara optimal dan aman.',
			'keywords' => 'pengelolaan sampah brand, sampah brand, sampah produk reject, sampah produk kedaluwarsa, sampah produk rusak, sampah kemasan kosong, sampah produk bekas pakai, proses pengelolaan sampah',
			'status' => true,
		],
		[
			'site_url' => '/official/service/program-pendampingan-optimalisasi-tps3r',
			'title_1' => 'Extended Producer Responsibility - Responsible Waste Management',
			'decription_1' => 'Program edukasi dan pendampingan kepada pengelola TPS3R setempat dan masyarakat sekitar dalam mengurangi sampah yang berakhir di TPA',
			'title_2' => 'Edukasi dan pendampingan kepada penggerak TPS dengan mengedepankan 3R',
			'description_2' => 'Program edukasi dan konsultasi serta pendampingan untuk mengurangi sampah yang berakhir di TPA untuk penggerak TPS3R',
			'keywords' => 'jasa konsultasi, program edukasi, program pendampingan, TPS3R, mengurangi sampah di TPA, Optimalisasi pengelolaan sampah, pendampingan TPS, tempat pembuangan sampah, optimalisasi pengelolaan sampah,daur ulang sampah, penggerak TPS3R, kampanye lingkungan',
			'status' => true,
		],
		[
			'site_url' => '/official/service/feasibility-study',
			'title_1' => 'Feasibility Study - Responsible Waste Management',
			'decription_1' => 'Jasa Konsultasi pengelolaan sampah bertanggung jawab untuk gedung/perkantoran sesuai dengan Program Penilaian Peningkatan Kinerja Perusahaan (PROPER) dari KLHK (Kementerian Lingkungan Hidup dan Kehutanan) RI',
			'title_2' => 'Jasa konsultasi pengelolaan sampah untuk gedung/perkantoran',
			'description_2' => 'Layanan konsultasi pengelolaan sampah untuk gedung/perkantoran serta pendataan dari segi teknis lingkungan, sehingga client dapat menerapkan pengelolaan sampah bertanggung jawab',
			'keywords' => 'jasa konsultasi, pengelolaan sampah gedung, pengelolaan sampah kantor, penerapan pengelolaan sampah, PROPER KLHK, jasa konsultasi pengelolaan sampah,aspek pengelolaan sampah',
			'status' => true,
		],
		[
			'site_url' => '/official/service/black-soldier-fly-learning-center',
			'title_1' => 'Black Soldier Fly Learning Center - Responsible Waste Management',
			'decription_1' => 'Program edukasi pengelolaan sampah organik menggunakan Black Soldier Fly (BSF) dengan metode pembudidayaan dan pembibitan BSF',
			'title_2' => 'Edukasi penguraian sampah organik menggunakan Black Soldier Fly (BSF)',
			'description_2' => 'Layanan edukasi penguraian sampah organik dan pembudidayaan bibit Black Soldier Fly (BSF)',
			'keywords' => 'edukasi penguraian sampah, penguraian sampah, jasa penguraian sampah, pembudidayaan Black Soldier Fly, pembibitan Black Soldier Fly, pembuatan pupuk organik, pupuk organik',
			'status' => true,

		]
	];
	if ($activation == true) {
		foreach ($param as $param) {
			if ($param['status'] == true && $_SERVER['REQUEST_URI'] == $param['site_url']) {
				?>
				<meta name="description" content="<?php echo @$param['description_1'] ?>">
				<meta name="keywords" content="<?php echo $param['keywords'] ?>">
				<meta property="og:url" content="<?php echo 'https://waste4change.com' . $param['site_url'] ?>"/>
				<meta property="og:site_name" content="<?php echo APP_NAME ?>"/>
				<meta property="og:title" content="<?php echo $param['title_2'] ?>">
				<meta property="og:description" content="<?php echo $param['description_2'] ?>"/>
				<meta property="og:image" content="<?= base_url('assets/img/logo/favicon.jpg') ?>">
				<meta property="og:image:type" content="image/jpg">
				<meta property="og:image:width" content="1024">
				<meta property="og:image:height" content="1024">
				<link rel="canonical" href="<?php echo 'https://waste4change.com' . $param['site_url'] ?>"/>
				<?php
			}
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
