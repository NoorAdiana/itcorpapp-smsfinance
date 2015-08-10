<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Generate_file extends CI_Controller
{
    public function index()
    {
        $data = array(
            'header' => 'Generate Text File',
            'status' => '',
            'pesan' => '',
            'daftar_user' => ''
        );

        if ($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false) {
            $this->load->view('errors/html/custom_error_401');
        } else {
            $action = $this->input->get('action');

            if ($action == 'cari') {
                $this->load->view('virtual/generate_file', $data);
            } elseif ($action == '') {
                $this->load->view('virtual/generate_file', $data);
            } else {
                $this->load->view('errors/html/custom_error_404');
            }
        }
    }

    public function upload_file()
    {
        date_default_timezone_set("Asia/Jakarta");

        $pilihan_bank = $this->input->post('pilihan_bank');

        $config['upload_path'] = '';

        if($pilihan_bank == 'MDR'){
            $config['upload_path'] = getcwd().'/uploads/virtual/mandiri';
            $config['file_name'] = 'MANDIRI_'.date("Ymdhis");
        }elseif($pilihan_bank == 'BRI'){
            $config['upload_path'] = getcwd().'/uploads/virtual/bri';
            $config['file_name'] = 'BRIVA_'.date("Ymdhis");
        }

        $config['allowed_types'] = 'csv';

        $this->load->library('upload', $config);
        if (!$this->upload->do_upload()){
            $error = array('error' => $this->upload->display_errors());
            print_r($error);
        }else{
            $data = array('upload_data' => $this->upload->data());
            print_r($data);
        }
    }
}
