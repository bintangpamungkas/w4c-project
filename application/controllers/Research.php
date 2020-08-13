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
        // echo '1';
        // die();
        $sort = null;
        if (isset($_GET['sort'])) {
            $sort = $_GET['sort'];
        }
 
        $data['sort'] = $sort;
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
        $data['researchs'] = $this->getData($sort);

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
            if ($sortBy === 'date') {
                $array = $this->array_orderby($array, 'file', SORT_DESC);
            } else {
                $array = $this->array_orderby($array, 'hidden_title', SORT_ASC);
            }
        }

        return $array;
    }

    private function getDatas()
    {
        $res = $this->client->request('GET', site_url(DIR_STATIC_DB . '/research/research.json'));
        return json_decode($res->getBody(), true);
    }

    public function array_orderby()
    {
        $args = func_get_args();
        $data = array_shift($args);
        foreach ($args as $n => $field) {
            if (is_string($field)) {
                $tmp = array();
                foreach ($data as $key => $row)
                    $tmp[$key] = $row[$field];
                $args[$n] = $tmp;
            }
        }
        $args[] = &$data;
        call_user_func_array('array_multisort', $args);
        return array_pop($args);
    }
}
