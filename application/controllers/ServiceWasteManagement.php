<?php

class ServiceWasteManagement extends MY_Controller {

    function __construct() {
        parent::__construct();

    }

    function index() {
        $serviceWasteManagement = json_decode(file_get_contents(base_url('database/json/service/service_waste_management.json')), true);
            $res = array(
                'success' => true,
                'status' => 200,
                'message' => [],
                'errorMessage' => [],
                'data' => $serviceWasteManagement
            );
           
        echo json_encode($res);
    }
}
?>