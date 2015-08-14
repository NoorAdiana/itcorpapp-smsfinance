<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pembukaan extends CI_Controller
{
    public function index()
    {
        $data = array(
            'header' => 'Pembukaan Virtual Account',
            'status' => '',
            'pesan' => '',
            'list_file' => array()
        );

        if ($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false) {
            $this->load->view('errors/html/custom_error_401');
        } else {
            $action = $this->input->get('action');

            if ($action == 'cari') {
                $this->load->view('virtual/pembukaan', $data);
            } elseif ($action == '') {
                $this->load->view('virtual/pembukaan', $data);
            } else {
                $this->load->view('errors/html/custom_error_404');
            }
        }
    }

    public function export()
    {
        date_default_timezone_set("Asia/Jakarta");
        $data = array(
            'header' => 'Pembukaan Virtual Account',
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
                if($bank === 'BRI'){
                    $this->load->model('virtualaccount_models');
                    $pembukaan_briva = $this->virtualaccount_models->get_pembukaan_briva($start_date, $end_date, $this->session->userdata('username'));

                    $file_download_path = getcwd() . '/downloads/virtual/convert/mandiri/PEMBUKAAN_BRIVA_'.$start_date.'_'.$end_date.'_'.date("Ymdhis").'.csv';

                    $file_download = fopen($file_download_path, 'w');
                    for($i = 0; $i < sizeof($pembukaan_briva); $i++){
                        fwrite($file_download, $pembukaan_briva[$i]['Pembukaan']."\r\n");
                    }
                    fclose($file_download_path);
                    force_download($file_download_path, NULL);
                }
            }
        }
    }
}
