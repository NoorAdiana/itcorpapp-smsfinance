<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penutupan extends CI_Controller
{
    public function index()
    {
        $data = array(
            'header' => 'Penutupan Virtual Account',
            'status' => '',
            'pesan' => '',
            'list_file' => array()
        );

        if ($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false) {
            $this->load->view('errors/html/custom_error_401');
        } else {
            $action = $this->input->get('action');

            if ($action == 'cari') {
                $this->load->view('virtual/petutupan', $data);
            } elseif ($action == '') {
                $this->load->view('virtual/penutupan', $data);
            } else {
                $this->load->view('errors/html/custom_error_404');
            }
        }
    }

    public function export()
    {
        date_default_timezone_set("Asia/Jakarta");

        $data = array(
            'header' => 'Penutupan Virtual Account',
            'status' => '',
            'pesan' => '',
            'list_file' => array()
        );

        if ($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false) {
            $this->load->view('errors/html/custom_error_401');
        } else {
            $bank = $this->input->post('pilihan_bank');
            $start_date = $this->input->post('start_date');
            $end_date = $this->input->post('end_date');

            if($bank === '0'){
                $data['status'] = 'Error';
                $data['pesan'] = 'Mohon untuk memilih nama bank';
                $this->load->view('virtual/pembukaan', $data);
            }else{
                if($bank === 'MDR'){
                    $this->load->model('virtualaccount_models');
                    $penutupan = $this->virtualaccount_models->get_penutupan_mandiri($start_date, $end_date);

                    $file_download_path = getcwd() . '/downloads/virtual/penutupan/mandiri/UPLDREQ_'.date("Ymd").'_'.date("his").'_MANDIRI_PENUTUPAN.txt';

                    $file = fopen($file_download_path, 'w');
                    for($i = 0; $i < sizeof($penutupan); $i++){
                        fwrite($file, $penutupan[$i]['Penutupan']."\r\n");
                    }
                    fclose($file_download_path);
                    force_download($file_download_path, NULL);
                }if($bank === 'BCA'){
                    $this->load->model('virtualaccount_models');
                    $penutupan = $this->virtualaccount_models->get_penutupan_bca($start_date, $end_date);

                    $file_download_path = getcwd() . '/downloads/virtual/penutupan/bca/UPLDREQ_'.date("Ymd").'_'.date("his").'_BCA.txt';

                    $file = fopen($file_download_path, 'w');
                    for($i = 0; $i < sizeof($penutupan); $i++){
                        fwrite($file, $penutupan[$i]['Penutupan']."\r\n");
                    }
                    fclose($file_download_path);
                    force_download($file_download_path, NULL);
                }if($bank === 'BRI'){
                    $this->load->model('virtualaccount_models');
                    $penutupan = $this->virtualaccount_models->get_penutupan_briva($start_date, $end_date, $this->session->userdata('username'));

                    $file_download_path = getcwd() . '/downloads/virtual/penutupan/bri/UPLDREQ_'.date("Ymd").'_'.date("his").'_BRI.csv';

                    $file = fopen($file_download_path, 'w');
                    for($i = 0; $i < sizeof($penutupan); $i++){
                        fwrite($file, $penutupan[$i]['Penutupan']."\r\n");
                    }
                    fclose($file_download_path);
                    force_download($file_download_path, NULL);
                }
            }
        }
    }
}
