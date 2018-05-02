<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/* ----------------------------------------------------------------------------
 * Easy!Appointments - Open Source Web Scheduler
 *
 * @package     EasyAppointments
 * @author      A.Tselegidis <alextselegidis@gmail.com>
 * @copyright   Copyright (c) 2013 - 2017, Alex Tselegidis
 * @license     http://opensource.org/licenses/GPL-3.0 - GPLv3
 * @link        http://easyappointments.org
 * @since       v1.0.0
 * ---------------------------------------------------------------------------- */

/**
 * Appointments Controller
 *
 * @package Controllers
 */
class Home extends CI_Controller {

    /**
     * Class Constructor
     */
    public function __construct() {
        parent::__construct();
        $this->load->helper(array('url', 'form'));
        $this->load->library('session');
    }

    public function index() {
        $this->load->model('settings_model');
        $view['company_name'] = $this->settings_model->get_setting('company_name');
        $this->load->view('guest/header', $view);
        $this->load->view('guest/nav');
        $this->load->view('guest/content');
        $this->load->view('guest/footer');
    }

    public function about() {
        $this->load->model('settings_model');
        $view['company_name'] = $this->settings_model->get_setting('company_name');
        $this->load->view('guest/header', $view);
        $this->load->view('guest/nav');
        $this->load->view('guest/about');
        $this->load->view('guest/footer');
    }

    public function contact() {
        $this->load->model('settings_model');
        $view['company_name'] = $this->settings_model->get_setting('company_name');



        $this->load->view('guest/header', $view);
        $this->load->view('guest/nav');
        $this->load->view('guest/contact');
        $this->load->view('guest/footer');
    }

    public function gallery() {
        $this->load->model('settings_model');
        $view['company_name'] = $this->settings_model->get_setting('company_name');
        $this->load->view('guest/header', $view);
        $this->load->view('guest/nav');
        $this->load->view('guest/gallery');
        $this->load->view('guest/footer');
    }

    public function icons() {
        $this->load->model('settings_model');
        $view['company_name'] = $this->settings_model->get_setting('company_name');
        $this->load->view('guest/header', $view);
        $this->load->view('guest/nav');
        $this->load->view('guest/icons');
        $this->load->view('guest/footer');
    }

    public function single() {
        $this->load->model('settings_model');
        $view['company_name'] = $this->settings_model->get_setting('company_name');
        $this->load->view('guest/header', $view);
        $this->load->view('guest/nav');
        $this->load->view('guest/single');
        $this->load->view('guest/footer');
    }

    public function codes() {
        $this->load->model('settings_model');
        $view['company_name'] = $this->settings_model->get_setting('company_name');
        $this->load->view('guest/header', $view);
        $this->load->view('guest/nav');
        $this->load->view('guest/codes');
        $this->load->view('guest/footer');
    }

    public function postEmail() {

        $data = $this->input->post();
        //print_r($data);
        try {

            $this->load->model('settings_model');

            // :: SEND NOTIFICATION EMAILS
            try {
                $this->config->load('email');
                $email = new \EA\Engine\Notifications\Email($this, $this->config->config);


                $email->sendContact($data);
            } catch (Exception $exc) {
                $exceptions[] = $exc;
            }
        } catch (Exception $exc) {
            // Display the error message to the customer.
            $exceptions[] = $exc;
        }

        $view = [
            'message_title' => 'Mensaje de Contacto',
            'message_text' => 'Contacto',
            'message_icon' => base_url('assets/img/success.png')
        ];

        if (isset($exceptions)) {
            $view['exceptions'] = $exceptions;
        }

        $this->load->view('guest/messageContact', $view);
    }

}
