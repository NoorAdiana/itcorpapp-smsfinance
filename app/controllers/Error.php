<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Error extends CI_Controller
{
    public function index()
    {
        $this->error_404();
    }

    public function error_404()
    {
        $this->load->view('errors/html/custom_error_404');
    }

    public function error_401()
    {
        $this->load->view('errors/html/custom_error_401');
    }

    public function error_403()
    {
        $this->load->view('errors/html/custom_error_403');
    }
}
