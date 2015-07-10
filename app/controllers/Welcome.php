<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller
{
    public function index()
    {
        $data = array(
            'full_name' => $this->session->userdata('name'),
            'cabang' => $this->session->userdata('cabang'),
            'divisi' => $this->session->userdata('divisi')
        );

        if($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false){
            redirect(base_url('welcome/login'), 'refresh');
        }else{
            $this->load->view('menu_app/header');
            $this->load->view('menu_app/menu', $data);
            $this->load->view('menu_app/app_content');
            $this->load->view('menu_app/footer');
        }
    }

    public function home()
    {
        $data = array(
            'header' => 'Home'
        );
        if($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false){
            $this->load->view('errors/html/custom_error_401');
        }else{
            $this->load->view('home_view', $data);
        }
    }

    public function login()
    {
        $this->load->model('login_models');

        $action = $this->input->get('action');
        $input_username = $this->input->post('user');
        $input_password = $this->input->post('password');
        $app = $this->input->post('pilih_app');

        $data = array(
            'status' => 'Success',
            'pesan' => '',
            'input_username' => $input_username,
            'input_password' => $input_password
        );

        if ($action === 'login') {
            if (trim($input_username) == '' || trim($input_password) == '') {
                $data['status'] = 'Failed';
                $data['pesan'] = 'Mohon untuk mengisi user dan password';
                $this->load->view('login_view', $data);
            } elseif ($app === '0') {
                $data['status'] = 'Failed';
                $data['pesan'] = 'Mohon untuk memilih aplikasi.';
                $this->load->view('login_view', $data);
            } else {
                $login_info = $this->login_models->get_login_info($input_username);

                if ($login_info[0]['IsActive'] !== '1') {
                    $data['status'] = 'Failed';
                    $data['pesan'] = 'User tidak aktif, silahkan hubungi IT';
                    $this->load->view('login_view', $data);
                } elseif (sizeof($login_info) !== 1) {
                    $data['status'] = 'Failed';
                    $data['pesan'] = 'User belum terdaftar, silahkan hubungi IT';
                    $this->load->view('login_view', $data);
                } else {
                    $secret_key = $login_info[0]['SecretKey'];
                    $password = sha1(md5($input_password) . $secret_key);

                    $session_data = array(
                        'username' => $login_info[0]['Username'],
                        'name' => $login_info[0]['UserFullName'],
                        'email' => $login_info[0]['Email'],
                        'cabang' => $login_info[0]['Cabang'],
                        'divisi' => $login_info[0]['Divisi'],
                        'secret_key' => $login_info[0]['SecretKey']
                    );

                    $this->session->set_userdata($session_data);

                    if ($password === $login_info[0]['Password'] && $app === '1' && $login_info[0]['IsAdminAccess'] === '1') {
                        redirect(base_url(), 'refresh');
                    } elseif ($password === $login_info[0]['Password'] && $app === '2') {
                        redirect(base_url(), 'refresh');
                    } else {
                        $this->login_models->get_count_login($input_username);

                        $data['status'] = 'Failed';
                        $data['input_username'] = $login_info[0]['Username'];
                        $data['pesan'] = 'User dan password salah';
                        $this->load->view('login_view', $data);
                    }
                }
            }
        } else {
            $this->load->view('login_view', $data);
        }
    }
}
