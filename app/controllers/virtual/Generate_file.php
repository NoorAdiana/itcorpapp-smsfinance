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
            $back_code = '';

            $config['upload_path'] = '';
            $config['allowed_types'] = 'csv';

            if ($pilihan_bank == 'MDR') {
                $config['upload_path'] = getcwd() . '/uploads/virtual/mandiri';
                $config['file_name'] = 'MANDIRI_' . date("Ymdhis");
                $back_code = 'MANDR';
            } elseif ($pilihan_bank == 'BRI') {
                $config['upload_path'] = getcwd() . '/uploads/virtual/bri';
                $config['file_name'] = 'BRIVA_' . date("Ymdhis");
                $back_code = 'BRIVA';
            }

            $this->load->library('upload', $config);
            if (!$this->upload->do_upload()) {
                $error = array('error' => $this->upload->display_errors());
                print_r($error);
            } else {
                $upload = array('upload_data' => $this->upload->data());
                $insert_result = $this->upload_models->upload_file($upload['upload_data'], $this->session->userdata('username'), $pilihan_bank);
                if ($insert_result[0]['Status'] !== 'Failed') {

                    $this->load->model('virtualaccount_models');
                    $record = array();
                    $path_file = $upload['upload_data']['full_path'];
                    $file_name = $upload['upload_data']['file_name'];

                    $file = fopen($path_file, 'r');
                    while (!feof($file)) {
                        if($pilihan_bank == 'BRI'){
                            array_push($record, fgetcsv($file, null, ';'));
                        }elseif($pilihan_bank == 'MDR'){
                            array_push($record, fgetcsv($file, null, ','));
                        }
                    }
                    fclose($file);

                    $insert_record = $this->virtualaccount_models->insert_virtualaccount($record, $back_code, $this->session->userdata('username'), $file_name);

                    if($insert_record['Status'] !== 'Failed'){
                        $data['list_file'] = $this->upload_models->get_upload_file('', 'VIRTUAL');
                        $this->load->view('virtual/generate_file', $data);
                    }else{
                        nlink($upload['upload_data']['full_path']);
                        $data['status'] = $insert_result[0]['Status'];
                        $data['pesan'] = $insert_result[0]['Pesan'];
                        $this->load->view('virtual/generate_file', $data);
                    }
                } else {
                    unlink($upload['upload_data']['full_path']);
                    $data['status'] = $insert_result[0]['Status'];
                    $data['pesan'] = $insert_result[0]['Pesan'];
                    $this->load->view('virtual/generate_file', $data);
                }
            }
        }
    }

    public function convert()
    {
        date_default_timezone_set("Asia/Jakarta");
        $this->load->model('upload_models');
        $this->load->model('virtualaccount_models');

        $id_file = $this->input->post('id_file');
        $type_upload = $this->input->post('type_upload');
        if ($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false) {
            $this->load->view('errors/html/custom_error_401');
        } else {
            $path_file = $this->upload_models->get_file_by_id($id_file);
            $file_name = $path_file[0]['NamaFile'];
            $data_file = $this->virtualaccount_models->get_va_by_file($file_name, $this->session->userdata('username'));
            $file_download_path = '';

            if($type_upload == 'MDR'){
                $file_download_path = getcwd() . '/downloads/virtual/mandiri/CONVERT_MANDIRI_'.date("Ymdhis").'.txt';
            }else{
                $file_download_path = getcwd() . '/downloads/virtual/bri/CONVERT_BRIVA_'.date("Ymdhis").'.txt';
            }

            $file_download = fopen($file_download_path, 'w');
            for($i = 0; $i < sizeof($data_file); $i++){
                fwrite($file_download, $data_file[$i]['ConvertData']."\r\n");
            }
            fclose($file_download_path);
            force_download($file_download_path, NULL);
        }
    }
}
