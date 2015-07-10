<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller
{
    public function index()
    {
        $data = array(
            'full_name' => 'Administrator',
            'cabang' => 'KPNO',
            'divisi' => 'IT Support'
        );
        $this->load->view('menu_app/header');
        $this->load->view('menu_app/menu', $data);
        $this->load->view('menu_app/app_content');
        $this->load->view('menu_app/footer');
    }

    public function home()
    {
        $data = array(
            'full_name' => 'Administrator',
            'cabang' => 'KPNO',
            'divisi' => 'IT Support',
            'header' => 'Home'
        );

        $this->load->view('home_view', $data);
    }

    public function login(){
        $action = $this->input->get('action');
        $input_username = $this->input->post('user');
        $input_password = $this->input->post('password');

        $data = array(
            'status' => 'Success',
            'pesan' => '',
            'input_username' => $input_username,
            'input_password' => $input_password
        );

        if($action === 'login'){
            if(trim($input_username) == '' || trim($input_password) == ''){
                $data['status'] = 'Failed';
                $data['pesan'] = 'Mohon untuk mengisi user dan password';
                $this->load->view('login_view', $data);
            }else{
                
            }
        }else{
            $this->load->view('login_view', $data);
        }
    }
}
