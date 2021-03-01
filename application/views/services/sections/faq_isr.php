<?php $faq_content = [
	'id' => [
		[
			'question' => 'Bagaimana jika saya ingin berdiskusi terlebih dulu terkait program daur ulang produk brand saya?',
			'answer' => 'Silahkan mengisi formulir permintaan proposal pada <a href="https://waste4change.com/official/service/in-store-recycling/join" style="color:#17a2b8">link berikut</a> dan tunggu tim kami menghubungi kembali.',
			'number' => 1,
		],
		[
			'question' => 'Bagaimana jika brand saya tidak memiliki toko fisik bagi konsumen untuk mengembalikan produk daur ulang bekas pakai mereka?',
			'answer' => 'Waste4Change juga bekerja sama dengan beberapa mitra daur ulang bank sampah, komunitas, dan penyedia lokasi lainnya untuk menjadi titik pengumpulan produk bekas pakai brand klien.<br><br>
			Pengumpulan produk daur ulang juga bisa dilakukan dengan mengirimkan langsung ke kantor cabang Waste4Change di Bekasi, Sidoarjo, dan Semarang, atau melalui layanan penjemputan dan penitipan sampah Waste4Change yaitu Dropbox Waste4Change <a href="'.DROPBOX_URL.'" style="color:#17A2B8" >(w4c.id/dropbox)</a> dan Personal Waste Management  <a href="'.site_url('service/personal-waste-management').'" style="color:#17A2B8">(w4c.id/PWM)</a>',
			'number' => 2,
		],
		[
			'question' => 'Bagaimana jika saya mengumpulkan terlebih dulu produk bekas pakai konsumen saya kemudian mengantarkannya langsung pada Waste4Change untuk didaur ulang?',
            'answer' => 'Selama bukan merupakan sampah residu, sampah konsumen brand Anda bisa diantarkan pada Waste4Change untuk didaur ulang. Detail pengiriman/pengantaran bisa dicek pada halaman Send Your Waste <a href="'.SEND_YOUR_WASTE_URL.'" style="color:#17A2B8"> (w4c.id/SYW)</a>.<br><br>
            Melalui cara di atas, sampah hanya dioptimalkan daur ulangnya agar mengurangi jumlah sampah yang berakhir di TPA.',
			'number' => 3,
		],
		[
			'question' => 'Apa untungnya jika saya menggunakan layanan In Store Recycling?',
            'answer' => '
            <ul>
                <li>Sampah diangkut dan dipastikan distribusinya langsung oleh Waste4Change secara berkala</li>
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
			'question' => 'What if I want to discuss first regarding the recycling program of my brand&#39;s product?',
			'answer' => 'Please fill in the request for proposal form through <a href="https://waste4change.com/official/service/in-store-recycling/join" style="color:#17a2b8">this link</a> , and our team will immediately be in touch with you.',
			'number' => 1,
		],
		[
			'question' => 'What if my brand does not have a physical store for consumers to return their used packaging?',
			'answer' => 'Waste4Change also cooperates with several waste banks, communities, and other local partners to become a drop-off point for the collection of our client&#39;s post-consumer products.<br><br>
			The collection of used products can also be done by sending it directly to Waste4Change&#39;s offices in Bekasi, Sidoarjo, Semarang, or through Waste4Change&#39;s waste collection services such as Dropbox Waste4Change <a href="'.DROPBOX_URL.'" style="color:#17A2B8" >(w4c.id/dropbox)</a> and Personal Waste Management <a href="'.site_url('service/personal-waste-management').'" style="color:#17A2B8"> (w4c.id/PWM)</a>',
			'number' => 2,
		],
		[
			'question' => 'What if I gather the post-consumer products first, and then deliver it directly to Waste4Change to be recycled?',
            'answer' => 'As long as it&#39;s not residual waste, your brand&#39;s consumer waste can be given to Waste4Change to be recycled. For details of delivery, kindly visit the Send Your Waste <a href="'.SEND_YOUR_WASTE_URL.'" style="color:#17A2B8">(w4c.id/SYW)</a>.<br><br>
            Through the method above, the waste will be recycled optimally in order to reduce the number of waste that ends up in landfills.',
			'number' => 3,
		],
		[
			'question' => 'What are the benefits of using the In-Store Recycling service?',
            'answer' => '
            <ul>
                <li>Waste will be collected, and its distribution will be monitored periodically and directly by Waste4Change.</li>
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