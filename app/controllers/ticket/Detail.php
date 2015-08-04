<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Detail extends CI_Controller
{
    public function index()
    {
        $data = array(
            'header' => 'Details Ticket',
            'status' => '',
            'pesan' => '',
            'daftar_user' => ''
        );

        if ($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false) {
            $this->load->view('errors/html/custom_error_401');
        } else {
            $action = $this->input->get('action');

            if ($action == 'cari') {
                $this->load->view('ticket/detail_ticket', $data);
            } elseif ($action == '') {
                $this->load->view('ticket/detail_ticket', $data);
            } else {
                $this->load->view('errors/html/custom_error_404');
            }
        }
    }
}
