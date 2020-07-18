<?php

/**
 * @property \User_model $user_model
 */
class Research extends MY_Controller
{
    private $client;

    function __construct()
    {
        parent::__construct();
        $this->load->model('crud_model');
        $this->client = new GuzzleHttp\Client();
    }

    public function index()
    {
        $order = null;
        if (isset($_GET['o'])) {
            $order = $_GET['o'];
        }

        $data['order'] = $order;
        $data['lang'] = $this->get_language();
        $data['title'] = APP_NAME;
        $data['id'] = 'brand';
        $data['subtitle'] = 'information';
        $data['data_mode'] = 'general';
        $data['page_heading'] = 'research';
        $data['is_bilingual'] = true;
        $data['meta_data'] = [
            'site_url' => 'research',
            'title_1' => 'Waste4Change - ' . lang('research'),
            'description_1' => $this->get_lang('desc-a-list-of-waste4changes-waste-management-services-from-waste-education-waste-research-waste-collection-and-waste-recycling'),
            'title_2' => 'Waste4Change - ' . lang('research'),
            'description_2' => $this->get_lang('desc-a-list-of-waste4changes-waste-management-services-from-waste-education-waste-research-waste-collection-and-waste-recycling'),
            'keywords' => $this->get_lang('key-waste4change-service-waste-service-waste-management-waste-processing-waste-education-waste-research-waste-study-waste-recycling-waste-collection-waste-recycling-waste-bin-trash-bag-trash-can'),
            'image' => SITE_URL . DIR_IMG . 'banner/thumbnail-pusat-' . $data['lang'] . '.jpg',
        ];
        $data['breadcrumb'] =
            [
                [
                    'title' => lang('home'),
                    'is_active' => false,
                    'url' => W4C_URL
                ],
                [
                    'title' => lang('research'),
                    'is_active' => true,
                    'url' => site_url('research')
                ],
            ];
        $data['researchs'] = $this->getData($order);

        $this->render_page('research/index', $data, 'services');
    }

    public function detail($slug)
    {
        $data['lang'] = $this->get_language();
        $data['title'] = APP_NAME;
        $data['id'] = 'brand';
        $data['subtitle'] = 'information';
        $data['data_mode'] = 'general';
        $data['page_heading'] = 'research';
        $data['is_bilingual'] = true;

        foreach ($this->getDatas() as $research) {
            if ($research['slug'] == $slug) {
                $data['meta_data'] = [
                    'site_url' => 'research/' . $slug,
                    'title_1' => 'Waste4Change - ' . $research['hidden_title'][$data['lang']],
                    'description_1' => $research['content'][$data['lang']]['detail'],
                    'title_2' => 'Waste4Change - ' . $research['hidden_title'][$data['lang']],
                    'description_2' => $research['content'][$data['lang']]['detail'],
                    'keywords' => $research['keyword'][$data['lang']],
                    'image' => $research['banner']['thumb_image'][$data['lang']],
                ];
            }
        }

        $data['breadcrumb'] =
            [
                [
                    'title' => lang('home'),
                    'active' => false,
                    'url' => W4C_URL
                ],
                [
                    'title' => lang('research'),
                    'active' => false,
                    'url' => site_url('research')
                ],
                [
                    'title' => lang('detail'),
                    'active' => true,
                    'url' => site_url('research/' . $slug)
                ],
            ];
        $data['researchs'] = $this->getDatas();
        $data['slug'] = $slug;

        $this->render_page('research/detail', $data, 'services');
    }

    public function getData($sortBy = null)
    {
        $array = $this->getDatas();

        if ($sortBy !== null) {
            usort($array, function ($value1, $value2) use ($sortBy) {
                if ($sortBy === 'date') {
                    $title1 = $value1['file']['release'][$this->get_language()];
                    $title2 = $value2['file']['release'][$this->get_language()];
                } else {
                    $title1 = $value1['title'][$this->get_language()];
                    $title2 = $value2['title'][$this->get_language()];
                }

                return $title1 - $title2;
            });
        }

        return $array;
    }

    private function getDatas()
    {
        $res = $this->client->request('GET', site_url(DIR_STATIC_DB . 'research.json'));
        return json_decode($res->getBody(), true);
    }
}
