<?php

function view_date($date, $with_time=NULL, $as_month=NULL, $region=null, $with_day=null){


    $month = array (1 =>

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



    if($date=='' || $date==null || $date=='0000-00-00' || $date=='0000-00-00 00:00:00'){

        return '-';

    }else{



        $split = explode('-', $date);

        $segment_date=explode(' ', $split[2]);



        if($region=='id'){

            $month_regional = $month[ (int)$split[1] ];
            $day_regional = ucwords(lang(strtolower(date('l', strtotime($date)))));

        }else{

            $day_regional = ucwords(date('l', strtotime($date)));

            if($as_month){

                $month_regional = date('F', strtotime($split[1]));

            }else{

                $month_regional = $split[1];

            }

        }


        if(count($segment_date)>1){

            if($with_time){

                $time=' '.$segment_date[1];

            }else{

                $time='';

            }

            if($with_day==true){
                $view_date=$day_regional.', '.$segment_date[0] . ' ' . $month_regional . ' ' . $split[0].$time;
            }else{
                $view_date=$segment_date[0] . ' ' . $month_regional . ' ' . $split[0].$time;
            }

        }else{

            if($with_day==true){
                $view_date=$day_regional.', '.$split[2] . ' ' . $month_regional . ' ' . $split[0];
            }else{
                $view_date=$split[2] . ' ' . $month_regional . ' ' . $split[0];
            }

        }

        return $view_date;

    }



}

function view_month($date){
    $month = array (1 =>   'Januari',
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

function view_time($time, $with_second=NULL){
    $with_second==TRUE ? $format="H:i:s": $format="H:i";
    if($time=='' || $time==null || $time=='0000-00-00' || $time=='0000-00-00 00:00:00' || $time=='00:00:00'){
        $view_time='-';
    }else{
        $view_time=date($format, strtotime($time));
    }

    return $view_time;
}

function view_money($currency, $nominal){
    return '<small>'.$currency.'</small>'.'. '.number_format($nominal, 0, ',', '.');
}

function view_number($number){
    return number_format($number, 0, ',', '.');
}

function view_trashpay($currency, $nominal){
    return number_format(floor($nominal), 0, ',', '.').' <small>'.$currency.'</small>';
}

function view_telephone($string, $to_rules){
    $telephone_first_code=substr($string,0,3);
    $telephone_first_zero=substr($string,0,1);
    if($telephone_first_code==PHONE_AREA_ID){
        $number=substr($string,3,999);
    }else if($telephone_first_zero=='0'){
        $number=substr($string,1,999);
    }else{
        $number=$string;
    }

    if($to_rules=='true'){
        return PHONE_AREA_ID.$number;
    }else if($to_rules=='wa'){
        return '62'.$number;
    }else{
        return '0'.$number;
    }

}

function day_week(){
    $day_week=array(
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

function month(){
    $month=array(
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

function year($begin, $end){
    $year = range($begin, $end);
    return $year;
}

function services_list_helper(){
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
            'url' => W4C_URL.'service/'.'#personal',
            'number' => '3',
            'color' => 'indigo'
        ]
    ];
    return $services;
}

function services_list_helper2(){
    $services = [
        [
            'caption' => 'Individual',
            'icon' => 'et-icon-profile-male',
            'url' => SEND_YOUR_WASTE_URL,
            'number' => '1',
            'color' => 'blue',
            'badge' => false
        ],
        [
            'caption' => 'Corporate',
            'icon' => 'icon-real-estate-066 u-line-icon-pro',
            'url' => DROPBOX_URL,
            'number' => '2',
            'color' => 'info',
            'badge' => false
        ],
        [
            'caption' => 'Brand',
            'icon' => 'et-icon-recycle',
            'url' => W4C_URL.'service/'.'#personal',
            'number' => '3',
            'color' => 'indigo',
            'badge' => false
        ],
        [
            'caption' => 'Send Your Waste',
            'icon' => 'et-icon-gift',
            'url' => SEND_YOUR_WASTE_URL,
            'number' => '4',
            'color' => 'blue',
            'badge' => 'new'
        ],
        [
            'caption' => 'Dropping Box',
            'icon' => 'icon-electronics-084 u-line-icon-pro',
            'url' => DROPBOX_URL,
            'number' => '5',
            'color' => 'info',
            'badge' => 'new'
        ],
    ];
    return $services;
}

function hotjar_tracking($activation){
    $param=[
        [
            'site_name' => '<!-- Hotjar Tracking Code for htttps://waste4change.com/beta/official -->',
            'site_source' => '<!-- Waste4Change @Beta SM from kertasmuda@gmail.com -->',
            'tracking_code' => '1102073',
            'status' => true,
            'dev_status' => IS_ONLINE==1 ? true : false,
        ],
    ];
    if($activation==true){
        foreach ($param as $param){
            if($param['dev_status']==true && $param['status']==true){
            ?>

                <?= $param['site_name'] ?>

                <?= $param['site_source'] ?>

                <script>
                    (function(h,o,t,j,a,r){
                        h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
                        h._hjSettings={hjid:<?= $param['tracking_code'] ?>,hjsv:6};
                        a=o.getElementsByTagName('head')[0];
                        r=o.createElement('script');r.async=1;
                        r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
                        a.appendChild(r);
                    })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
                </script>
            <?php
            }
        }
    }
}

function google_analytic($activation){
    $param=[
        [
            'site_name' => '<!-- Google Analytic Waste4Change -->',
            'site_source' => '<!-- Waste4Change @Beta from kertasmuda@gmail.com -->',
            'tracking_code' => 'UA-134685047-1',
            'status' => true,
            'dev_status' => IS_ONLINE==1 ? true : false,
        ],
    ];
    if($activation==true){
        foreach ($param as $param){
            if($param['dev_status']==true && $param['status']==true){
            ?>
                <!-- Global site tag (gtag.js) - Google Analytics -->

                <?= $param['site_name'] ?>

                <?= $param['site_source'] ?>

                <script async src="https://www.googletagmanager.com/gtag/js?id=<?= $param['tracking_code'] ?>"></script>
                <script>
                    window.dataLayer = window.dataLayer || [];
                    function gtag(){dataLayer.push(arguments);}
                    gtag('js', new Date());

                    gtag('config', '<?= $param['tracking_code'] ?>');
                </script>

                <?php
            }
        }
    }
}

function tawk_to_chat(){
    $param=[
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
            'dev_status' => IS_ONLINE==1 ? true : false,
        ]
    ];
    return $param;
}

function share_social_media(){
    $social=[
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
            'social_url' => 'https://twitter.com/intent/tweet/?text='.lang('share_caption'),
            'social_icon' => 'fa fa-twitter',
            'social_color' => 'g-brd-2 g-color-info g-color-white--hover g-bg-twitter--hover',
            'number' => '3',
        ],
        [
            'social_name' => 'LinkedIn',
            'social_url' => 'https://www.linkedin.com/shareArticle?mini=true&url='.lang('share_caption'),
            'social_icon' => 'fa fa-linkedin',
            'social_color' => 'g-brd-2 g-color-info g-color-white--hover g-bg-linkedin--hover',
            'number' => '4',
        ],
        [
            'social_name' => 'Whatsapp',
            'social_url' => 'https://wa.me/?text='.lang('share_caption'),
            'social_icon' => 'fa fa-whatsapp',
            'social_color' => 'g-brd-2 g-color-info g-color-white--hover g-bg-primary--hover',
            'number' => '5',
        ],
    ];

    return $social;
}
