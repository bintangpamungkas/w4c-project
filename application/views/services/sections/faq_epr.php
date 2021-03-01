<?php $faq_content = [
	'id' => [
		[
			'question' => 'Apa perbedaan Digital EPR dan In Store Recycling?',
            'answer' => 'Digital EPR merupakan layanan daur ulang Waste4Change yang melibatkan sistem informasi untuk memudahkan sistem pengumpulan sampah produk bekas pakai konsumen.<br><br>
            Dengan Digital EPR, program daur ulang klien bisa mencakup lebih banyak area karena Waste4Change juga bekerja sama dengan mitra daur ulang lokal di seluruh Indonesia',
			'number' => 1,
		],
		[
			'question' => 'Bagaimana jika saya ingin berdiskusi terlebih dulu terkait program daur ulang produk brand saya?',
			'answer' => 'Silahkan mengisi formulir permintaan proposal pada <a href="https://waste4change.com/official/service/digital-epr/join" style="color:#17a2b8">link berikut</a> dan tunggu tim kami menghubungi kembali.',
			'number' => 2,
		],
		[
			'question' => 'Ke mana saja konsumen bisa mengumpulkan sampah produk bekas pakai mereka?',
            'answer' => 'Waste4Change juga bekerja sama dengan beberapa mitra daur ulang bank sampah, komunitas, dan penyedia lokasi lainnya untuk menjadi titik pengumpulan produk bekas pakai brand klien.<br><br>
            Pengumpulan produk daur ulang juga bisa dilakukan dengan mengirimkan langsung ke kantor cabang Waste4Change di Bekasi, Sidoarjo, dan Semarang, atau melalui layanan penjemputan dan penitipan sampah Waste4Change yaitu Dropbox Waste4Change <a href="'.DROPBOX_URL.'" style="color:#17A2B8" >(w4c.id/dropbox)</a> dan Personal Waste Management<a href="'.site_url('service/personal-waste-management').'" style="color:#17A2B8"> (w4c.id/PWM)</a>',
			'number' => 3,
		],
		[
			'question' => 'Apa untungnya jika saya menggunakan layanan Digital EPR?',
            'answer' => '
            <ul>
                <li>Program daur ulang bisa mencakup area lebih luas dengan titik pengumpulan sampah yang lebih banyak dan tersebar di seluruh Indonesia</li>
                <li>Klien mendapatkan laporan pengumpulan jumlah sampah dan jumlah sampah yang didaur ulang</li>
                <li>Dimasukkan ke dalam list brand yang memiliki program daur ulang bersama Waste4Change sehingga bisa meningkatkan afinitas brand di mata konsumen</li>
            </ul>',
			'number' => 4,
		],
		[
			'question' => 'Akan didaur ulang menjadi apa produk brand saya nantinya?',
            'answer' => 'Hasil daur ulang tergantung dari jenis material produk brand klien.<br><br>
            Untuk saat ini sebagian besar plastik yang terkumpul akan didaur ulang oleh mitra daur ulang kami menjadi bahan material sapu dan ember, juga tutup tabung gas.',
			'number' => 5,
		],
		[
			'question' => 'Jika saya ingin menentukan akan didaur ulang menjadi apa produk brand saya nantinya apakah bisa?',
            'answer' => 'Tentu bisa, Waste4Change juga membuka jasa riset dan konsultasi untuk potensi daur ulang produk bekas pakai konsumen klien kami menjadi produk tertentu.',
			'number' => 6,
		],
	],
	'en' => [
		[
			'question' => 'What&#39;s the difference between Digital EPR and In-Store Recycling?',
            'answer' => 'Digital EPR is one of Waste4Change&#39;s recycling services that encapsulates information systems to ease the post-consumption product waste collection process.<br><br>
            With Digital EPR, our client&#39;s recycling program can cover more areas since Waste4Change itself also cooperates with local recycling partners throughout Indonesia',
			'number' => 1,
		],
		[
			'question' => 'What if I want to discuss first regarding the recycling program of my brand&#39;s product?',
			'answer' => 'You can fill the request for proposal form in <a href="https://waste4change.com/official/service/digital-epr/join" style="color:#17a2b8">this link</a> , and kindly wait for our team to reach you',
			'number' => 2,
		],
		[
			'question' => 'Where can consumers drop their post-consumer product waste?',
            'answer' => 'Waste4Change also cooperates with several waste banks, communities, and other local partners to become a drop-off point for the collection of our client&#39;s post-consumer products.<br><br>
           The collection of used products can also be done by sending it directly to Waste4Change&#39;s offices in Bekasi, Sidoarjo, Semarang, or through Waste4Change&#39;s waste collection services such as Dropbox Waste4Change<a href="'.DROPBOX_URL.'" style="color:#17A2B8" > (w4c.id/dropbox)</a> and Personal Waste Management<a href="'.site_url('service/personal-waste-management').'" style="color:#17A2B8"> (w4c.id/PWM)</a>',
			'number' => 3,
		],
		[
			'question' => 'What are the benefits of using Digital EPR?',
            'answer' => '
            <ul>
                <li>The recycling program can cover a wider area with more waste collection points that are located throughout Indonesia.</li>
                <li>Clients will get a waste collection report as well as report regarding the number of waste that has been recycled.</li>
                <li> Clients will be included in the list of brands that have recycling program with Waste4Change, and therefore it will increase their brand&#39;s affinity among their customers</li>
            </ul>
           ',
			'number' => 4,
		],
		[
			'question' => 'What will my brand products be recycled into?',
            'answer' => 'The recycling output heavily depends on the types of materials of the client&#39;s products.<br><br>
            For now, most of the plastics that are collected will be recycled by our recycling partners into raw materials to be made into brooms, buckets, and gas cylinder caps.',
			'number' => 5,
		],
		[
			'question' => 'If I want to decide the types of recycling output for my brand&#39;s products, is it possible?',
            'answer' => 'Certainly. Waste4Change also provides consultation and research services regarding the recycling potential of our client&#39;s post-consumer products into certain types of materials.',
			'number' => 6,
		],
	]
];

	$faq_content_lang = $this->session->userdata('language') == 'en' ? $faq_content['en'] : $faq_content['id']; ?>
<!-- FAQ -->
<div id="<?= $section_slug ?>" style="height: 10px;position: absolute;width: 80%;margin-top: -100px"></div>
<section class="g-bg-gray-light-v5 g-py-50">
	<div class="container">
		<div class="container text-center g-mb-50">
			<h2 class="g-color-black g-font-weight-600 text-center g-font-size-<?= $this->agent->is_mobile() ? '24' : '35' ?>">F.A.Q</h2>
			<hr class="g-width-70 g-my-20 g-brd-2 w4c-brd-blue">
		</div>
		<div class="row justify-content-center">
			<div class="col-lg-8 col-12">
				<div id="accordion-11" class="u-accordion " role="tablist" aria-multiselectable="true">
					<?php foreach ($faq_content_lang as $faq) : ?>
						<!-- Card -->
						<div class="card g-brd-none rounded g-mb-20 box-shadow-down-10-1">
							<div id="accordion-11-heading-<?= $faq['number'] ?>" class="u-accordion__header g-pa-0" role="tab">
								<h5 class="mb-0">
									<a class="collapsed d-flex justify-content-between text-black-important g-font-weight-600 g-color-main g-text-underline--none--hover rounded g-px-30 g-py-20 " href="#accordion-11-body-<?= $faq['number'] ?>" data-toggle="collapse" data-parent="#accordion-11" aria-expanded="false" aria-controls="accordion-11-body-<?= $faq['number'] ?>">
										<?= $faq['question'] ?>
										<span class="u-accordion__control-icon g-color-black-opacity-0_5">
											<i class="fa fa-angle-down"></i>
											<i class="fa fa-angle-up"></i>
										</span>
									</a>
								</h5>
							</div>
							<div id="accordion-11-body-<?= $faq['number'] ?>" class="collapse" role="tabpanel" aria-labelledby="accordion-11-heading-<?= $faq['number'] ?>" data-parent="#accordion-11">
								<div class="u-accordion__body g-color-gray-dark-v4 g-pa-30">
									<?= $faq['answer'] ?>
								</div>
							</div>
						</div>
						<!-- End Card -->
					<?php endforeach;  ?>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End FAQ -->