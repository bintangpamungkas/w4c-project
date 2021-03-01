<?php $faq_content = [
	'id' => [
		[
			'question' => 'Apa perbedaan Zero-Waste to Landfill dan Responsible Waste Management?',
			'answer' => 'Zero-Waste to Landfill memastikan sampah klien tidak ada yang berakhir di TPA.<br><br>Sampah residu (sampah yang sulit didaur ulang) akan diproses dengan mitra daur ulang RDF kami untuk menjadi bahan baku material semen.',
			'number' => 1,
		],
		[
			'question' => 'Apakah ada maksimal sampah residu yang bisa diproses dengan cara Zero-Waste to Landfill setiap bulannya?',
			'answer' => 'Waste4Change akan menganalisa dan memeriksa terlebih dulu jumlah timbulan sampah dan jenis timbulan sampah dari perusahaan klien di awal kontrak. Nantinya, jumlah dan jenis timbulan sampah ini yang akan dijadikan patokan untuk biaya berlangganan jasa angkut dan daur ulang Responsible Waste4Change.<br><br>
			Biaya ekstra baru akan dikenakan jika ada penambahan jumlah produksi sampah atau tambahan jenis sampah dari yang sudah ditentukan di awal kontrak.',
			'number' => 2,
		],
		[
			'question' => 'Apa saja jenis sampah yang bisa diangkut oleh layanan ini? Apakah termasuk sampah B3 dan medis?',
            'answer' => 'Layanan Zero Waste to Landfill Waste4Change hanya melayani jasa angkut dan daur ulang sampah untuk sampah domestik, yaitu:
            <ul>
                <li>Organik</li>
                <li>Anorganik berupa kertas, kaca, logam, dan plastik</li>
                <li>Beberapa jenis sampah residu</li>
            </ul>
            Layanan Responsible Waste Management belum dapat mengangkut dan mendaur ulang jenis-jenis sampah berikut:
            <ul>
                <li>B3</li>
                <li>Elektronik</li>
                <li>Sampah medis</li>
                <li>Limbah Pabrik</li>
            </ul>
            ',
			'number' => 3,
		],
		[
			'question' => 'Bagaimana sampah residu saya akan dikelola via jasa Zero-Waste to Landfill?',
            'answer' => 'Sampah residu atau sampah yang tidak bisa didaur ulang milik klien Zero-Waste to Landfill akan didistribusikan pada mitra RDF technology kami untuk diproses menjadi bahan material semen.<br><br>
            Proses pemanfaatan sampah residu menjadi bahan material semen oleh Mitra RDF technology kami dilakukan dengan pengawasan ahli, sehingga meminimalisir dampak negatif pada lingkungan.',
			'number' => 4,
		],
		[
			'question' => 'Kapan perusahaan saya harus menggunakan jasa Zero Waste to Landfill?',
            'answer' => 'Jasa Zero Waste to Landfill direkomendasikan pada perusahaan atau brand yang memiliki visi tidak hanya untuk meningkatkan daur ulang dari sampah yang dihasilkan, tapi juga untuk turut mengurangi jumlah sampah yang berakhir di TPA.<br><br>
            Waste4Change memberikan laporan bulanan jumlah timbulan sampah dan jenis sampah sehingga dapat membantu klien melakukan peningkatan kualitas manajemen sampah perusahaan atau brand mereka.',
			'number' => 5,
		],
	],
	'en' => [
		[
			'question' => 'What&#39;s the difference between Zero-Waste to Landfill and Responsible Waste Management?',
			'answer' => 'Zero-Waste to Landfill ensures that our client&#39;s waste does not end up in landfills.<br><br>Residual waste (waste that is difficult to be recycled) will be processed using our recycling partner&#39;s RDF technology to be turned into raw materials for cement.',
			'number' => 1,
		],
		[
			'question' => 'Is there a maximum volume of residual waste that can be processed with the Zero-Waste to Landfill method each month?',
			'answer' => 'Waste4Change will first analyze and check on the waste volume and types from the client&#39;s company at the beginning of the contract. Later on, the volume and types of waste will be used as a baseline for the subscription fee of the responsible waste collection and recycling from Waste4Change.<br><br>
			Extra fees will be charged if there is an increase in the volume of waste that is produced compared to when it was first examined at the beginning of the contract.',
			'number' => 2,
		],
		[
			'question' => 'What are the types of waste that are collected by this service? Does it include hazardous and medical waste?',
            'answer' => 'The Zero Waste to Landfill service from Waste4Change only caters to the collection and recycling of domestic waste, which are:
            <ul>
                <li>Organic</li>
                <li>Anorganic, namely paper, metal, glass, and plastic</li>
                <li>Several types of residual waste</li>
            </ul>
            The Zero Waste to Landfill program cannot yet collect and recycle the following types of waste:
            <ul>
                <li>Hazardous waste (B3)</li>
                <li>Electronic waste</li>
                <li>Medical waste</li>
                <li>Factory waste</li>
            </ul>
            ',
			'number' => 3,
		],
		[
			'question' => 'How will my residual waste be managed by the Zero-Waste to Landfill service?',
            'answer' => 'Residual waste or waste that cannot be recycled from the Zero-Waste to Landfill service clients will be distributed to our RDF technology partners to be processed into raw materials for cement.<br><br>
            The process of utilizing residual waste into materials for cement by our RDF technology partner is done under the supervision of experts in order to minimize its negative impacts towards the environment.',
			'number' => 4,
		],
		[
			'question' => 'When does my company need to use the Zero Waste to Landfill service?',
            'answer' => 'The Zero Waste to Landfill service is recommended for companies or brands that have a vision of not only to increase their recycling rate, but also to reduce the number of waste that ends up in landfills.<br><br>
            Waste4Change provides a monthly report regarding the number and types of waste that our clients produce in order to help them improve their waste management system.',
			'number' => 5,
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