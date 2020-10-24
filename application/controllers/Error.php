<?php

/**
 * Created by PhpStorm.
 * User: Dellicious
 * Date: 12/14/2016
 * Time: 10:55 AM
 */
class Error extends MY_Controller
{
    public function index()
    {
        $this->render_page('errors/404');
    }
}