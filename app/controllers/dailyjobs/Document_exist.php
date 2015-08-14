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
            'daftar_document' => ''
        );

        if ($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false) {
            $this->load->view('errors/html/custom_error_401');
        } else {
            $action = $this->input->get('action');

            if ($action == 'cari') {
                $this->load->model('documentexist_models');
                $nomor_document = $this->input->get('kata_kunci');
                $documents = $this->documentexist_models->get_document($nomor_document);
                $data['daftar_document'] = $documents;
                $this->load->view('dailyjobs/document_exist', $data);
            } elseif ($action == '') {
                $this->load->view('dailyjobs/document_exist', $data);
            } else {
                $this->load->view('errors/html/custom_error_404');
            }
        }
    }

    public function detail(){

        $data = array(
            'header' => 'Detail Document',
            'status' => '',
            'pesan' => '',
            'daftar_document' => ''
        );

        if ($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false) {
            $this->load->view('errors/html/custom_error_401');
        } else {
            $this->load->model('documentexist_models');
            $application_id = $this->input->get('application_id');

            $documents = $this->documentexist_models->get_document_detail($application_id);
            $data['daftar_document'] = $documents;
            $this->load->view('dailyjobs/document_exist_detail', $data);
        }
    }
}
