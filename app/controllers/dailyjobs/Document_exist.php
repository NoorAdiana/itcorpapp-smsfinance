<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Document_exist extends CI_Controller
{
    public function index()
    {
        $data = array(
            'header' => 'Cari Document',
            'status' => '',
            'pesan' => '',
            'daftar_user' => ''
        );

        if ($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false) {
            $this->load->view('errors/html/custom_error_401');
        } else {
            $action = $this->input->get('action');

            if ($action == 'cari') {
                $this->load->view('dailyjobs/document_exist', $data);
            } elseif ($action == '') {
                $this->load->view('dailyjobs/document_exist', $data);
            } else {
                $this->load->view('errors/html/custom_error_404');
            }
        }
    }
}
