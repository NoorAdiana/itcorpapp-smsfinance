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
            'list_file' => array()
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

    public function convert()
    {
        $this->load->model('upload_models');

        if ($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false) {
            $this->load->view('errors/html/custom_error_401');
        } else {
            $id_file = $this->input->post('id_file');
            $type_upload = $this->input->post('type_upload');

            $record = array();

            $path_file = $this->upload_models->get_file_by_id($id_file);

            $file = fopen($path_file[0]['FullPathFile'],'r');
            while(! feof($file)){
                array_push($record, fgetcsv($file, null, ';'));
            }
            fclose($file);

            print_r($record);
        }
    }

    public function upload_file()
    {
        $data = array(
            'header' => 'Generate Text File',
            'status' => '',
            'pesan' => '',
            'list_file' => array()
        );

        if ($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false) {
            $this->load->view('errors/html/custom_error_401');
        } else {
            date_default_timezone_set("Asia/Jakarta");
            $this->load->model('upload_models');

            $pilihan_bank = $this->input->post('pilihan_bank');
            $type_upload = '';

            $config['upload_path'] = '';
            $config['allowed_types'] = 'csv';

            if ($pilihan_bank == 'MDR') {
                $config['upload_path'] = getcwd() . '/uploads/virtual/mandiri';
                $config['file_name'] = 'MANDIRI_' . date("Ymdhis");
                $type_upload = 'VIRTUAL ACCOUNT MANDIRI';
            } elseif ($pilihan_bank == 'BRI') {
                $config['upload_path'] = getcwd() . '/uploads/virtual/bri';
                $config['file_name'] = 'BRIVA_' . date("Ymdhis");
                $type_upload = 'VIRTUAL ACCOUNT BRI';
            }

            $this->load->library('upload', $config);
            if (!$this->upload->do_upload()) {
                $error = array('error' => $this->upload->display_errors());
                print_r($error);
            } else {
                $upload = array('upload_data' => $this->upload->data());
                $insert_result = $this->upload_models->upload_file($upload['upload_data'], $this->session->userdata('username'), $type_upload);
                if ($insert_result[0]['Status'] !== 'Failed') {
                    $data['list_file'] = $this->upload_models->get_upload_file('', 'VIRTUAL');
                    $this->load->view('virtual/generate_file', $data);
                } else {
                    unlink($upload['upload_data']['full_path']);
                    $data['status'] = $insert_result[0]['Status'];
                    $data['pesan'] = $insert_result[0]['Pesan'];
                    $this->load->view('virtual/generate_file', $data);
                }
            }
        }
    }
}
