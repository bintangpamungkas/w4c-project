<section id="faq" class="g-pt-140--lg g-pb-100--lg g-pt-50 g-pb-20 g-bg-gray-light-v5">
    <div class="container">
        <div class="container text-center g-mb-50">
            <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>">F.A.Q</h2>
            <hr class="g-width-70 g-my-20 g-brd-2 g-brd-blue">
            <p class="text-muted d-none"><?= lang('droppoint_subtitle') ?></p>
        </div>
        <div id="accordion-07" class="u-accordion u-accordion-color-primary" role="tablist" aria-multiselectable="true">
            <!-- Card -->
            <?php
            $faq=[
                [
                    'question' => 'Drop Box itu apa sih?',
                    'answer' => 'Drop Box ini merupakan program Waste4Change yang ditujukan untuk memfasilitasi dan mengedukasi masyarakat untuk memilah sampahnya dari rumah. Sering kan yang udah berminat memilah sampah tapi bingung dibawa kemana biar tetap terpilah dan dikelola secara bertanggung jawab? Nah bawa aja ke Drop Box ini',
                    'number' => 1,
                    'list' => '',
                ],
                [
                    'question' => 'Ada dimana aja ya Drop Box nya?',
                    'answer' => 'Kamu bisa cek disini <a>http://waste4change.com/deposit-your-packaging-waste-at-our-praisedroppingbox/</a> dan cari deh yang lokasinya paling dekat dari tempat tinggalmu',
                    'number' => 2,
                    'list' => '',
                ],
                [
                    'question' => 'Sampah apa aja nih yang boleh dan ga boleh dimasukkan ke Drop Box?',
                    'answer' => 'Sampah sisa kemasan plastik berbahan Kertas (kardus, karton box, UBC, kantong kertas, majalah dan koran pun bisa lho) dan yang berbahan non Kertas (kaleng, kotak plastik, kantong plastik, sisa snack plastik, basically bisa sisa kemasan apapun yang sudah tidak terpakai? Nah yang ga boleh adalah sampah organik (sampah taman, sampah makanan) serta sampah B3 (baterai, aki, kemasan bekas bahan kimia yang belum bersih, obat-obatan dll)',
                    'number' => 3,
                    'list' => '',
                ],
                [
                    'question' => 'Sampahnya dari Drop Box dibawa kemana ya?',
                    'answer' => 'Kami bekerjasama dengan bank sampah di Jakarta. Jadi nanti dari drop box akan diangkut seminggu sekali ke bank sampah kemudian dipilah lebih rinci lagi oleh mereka. Setelah itu dimanfaatkan lebih lanjut oleh bank sampah. Kenapa ke bank sampah? Ini adalah wujud untuk membantu pelaku daur ulang untuk lebih giat lagi dan secara ga langsung memberi pemasukkan tambahan untuk setiap bank sampah dan pekerja yang terlibat',
                    'number' => 4,
                    'list' => '',
                ],
                [
                    'question' => 'Ada jumlah maksimal sampah yang bisa kita bawa ke Drop Box ini kah?',
                    'answer' => 'Ada tentunya, karena drop box ini ukurannya tidak terlalu besar dan diangkut seminggu sekali. Jadi ukuran maksimal yang bisa kalian bawa adalah berukuran 20 cm x 20 cm x 10 cm. Jangan lupa juga untuk dipadatkan yaa supaya memberikan ruang untuk yang lainnya',
                    'number' => 5,
                    'list' => '',
                ],
                [
                    'question' => 'Ada prosedur yang harus diikuti kah untuk membawa sampah sisa kemasan ke Dropping Point?',
                    'answer' => 'Karena kami bekerjasama dengan pemilik lokasi, tentu harus mengikuti aturan lokasi yaa ketika membawa dan memasukkan sampah kemasan ke Drop Box. Kami menyarankan untuk mengikuti step by step pemilahan sampah dengan Drop Box berikut:',
                    'number' => 6,
                    'list' => [
                        'Cari dropping point terdekat dari tempat tinggalmu',
                        'Kumpulkan sampah sisa kemasan yang kamu punya di rumah (selain organik dan B3)',
                        'Bersihkan isi wadah dan pastikan tidak ada sisa yang berpotensi mengotori dan menimbulkan bau karena basi misalnya. Untuk jenis-jenis yang tadinya mengandung bahan kimia (seperti obat pembersih), pastikan dibilas bersih dulu yaa',
                        'Padatkan dan pipihkan setiap jenis kemudian dipilah untuk yang berjenis kertas dan non kertas dan masukkan di wadah yang berbeda. Pastikan tempat sampah sisa kemasan yang kamu gunakan bersih dan tidak kotor juga',
                        'Pastikan ukuran sampah yang dibawa tidak melebihi 20 cm x 20 cm x 10 cm',
                        'Apabila ragu-ragu ketika mau membawa ke salah satu dropping point, hubungi dahulu kontak dropping point yang dapat dicek di website Waste4Change',
                        'Setelah sampai di dropping point, minta izin ke petugas di lokasi untuk memasukkan sampah ke dalam drop box',
                        'Memasukkan sampah satu per satu dengan rapih sesuai jenis dan melalui lubang yang tersedia. Pastikan tidak meninggalkan ceceran diluar drop box',
                        'Berfoto dengan drop box dan bagikan di sosial media mu dengan hash tag: #DaurUlang, #PilahSampah, #MinimSampah, #LessWaste, #ZeroWaste, #Recycling, #sustainableliving, Ajak teman-temanmu juga untuk ikutan',
                    ],
                ],
            ];
            foreach ($faq as $faq):
                ?>
                <div class="card rounded-0 g-brd-none">
                    <div id="accordion-07-heading-0<?= $faq['number'] ?>" class="u-accordion__header g-pa-0" role="tab">
                        <h5 class="mb-0 text-uppercase g-font-size-default g-font-weight-700 g-pa-20a mb-0">
                            <a class="collapsed d-block g-color-main g-text-underline--none--hover" href="#accordion-07-body-0<?= $faq['number'] ?>"
                               data-toggle="collapse"
                               data-parent="#accordion-07"
                               aria-expanded="<?= $faq['number']==1 ? 'false' : 'false' ?>"
                               aria-controls="accordion-07-body-0<?= $faq['number'] ?>">
                                  <span class="u-accordion__control-icon d-inline-block g-brd-right g-brd-gray-light-v4 g-color-info text-center g-pa-20">
                                    <i class="fa fa-plus"></i>
                                    <i class="fa fa-minus"></i>
                                  </span>
                                <span class="d-inline-block g-pa-15">
                                    <?= $faq['question'] ?>
                                  </span>
                            </a>
                        </h5>
                    </div>
                    <div id="accordion-07-body-0<?= $faq['number'] ?>" class="collapse <?= $faq['number']==1 ? '' : '' ?>" role="tabpanel" aria-labelledby="accordion-07-heading-0<?= $faq['number'] ?>">
                        <div class="u-accordion__body g-bg-gray-light-v5 g-px-50 g-py-30">
                            <?= $faq['answer'] ?>
                            <ul>
                            <?php if($faq['list']!=''): ?>
                                <?php foreach ($faq['list'] as $list): ?>
                                    <li><?= $list ?></li>
                                <?php endforeach; ?>
                            <?php endif; ?>
                            </ul>
                        </div>
                    </div>
                </div>

                <?php
            endforeach;
            ?>
            <!-- End Card -->

        </div>
    </div>
</section>