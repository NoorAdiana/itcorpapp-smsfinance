<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller
{
    public function index()
    {
        $this->load->view('menu_app/header');
        $this->load->model('menu_models');
        $app = $this->input->get('app');

        if($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false){
            redirect(base_url('welcome/login'), 'refresh');
        }elseif($app == ''){
            redirect(base_url('welcome/login'), 'refresh');
        }elseif($app === 'admin'){
            $app_access = $this->menu_models->get_app_access($this->session->userdata('username'), 'IsAdminAccess');
            if($app_access[0]['Access'] == '1'){
                $this->menu_admin();
            }else{
                redirect(base_url('error/error_401'), 'refresh');
            }
        }elseif($app === 'tkt'){
            $app_access = $this->menu_models->get_app_access($this->session->userdata('username'), 'IsTicketAccess');
            if($app_access[0]['Access'] == '1'){
                $this->menu_ticket();
            }else{
                redirect(base_url('error/error_401'), 'refresh');
            }
        }elseif($app === 'tsk'){
            $app_access = $this->menu_models->get_app_access($this->session->userdata('username'), 'IsTasklogAccess');
            if($app_access[0]['Access'] == '1'){
                $this->menu_tasklog();
            }else{
                redirect(base_url('error/error_401'), 'refresh');
            }
        }elseif($app === 'mtr'){
            $app_access = $this->menu_models->get_app_access($this->session->userdata('username'), 'IsMonitoringAccess');
            if($app_access[0]['Access'] == '1'){
                $this->menu_monitoring();
            }else{
                redirect(base_url('error/error_401'), 'refresh');
            }
        }elseif($app === 'djb'){
            $app_access = $this->menu_models->get_app_access($this->session->userdata('username'), 'IsDailyJobsAccess');
            if($app_access[0]['Access'] == '1'){
                $this->menu_dailyjobs();
            }else{
                redirect(base_url('error/error_401'), 'refresh');
            }
        }else {
            redirect(base_url('error/error_404'), 'refresh');
        }

        $this->load->view('menu_app/app_content');
        $this->load->view('menu_app/footer');
    }


    function menu_admin(){
        $this->load->model('menu_models');

        $data = array(
            'full_name' => $this->session->userdata('name'),
            'cabang' => $this->session->userdata('cabang'),
            'divisi' => $this->session->userdata('divisi'),
            'header_menu' => '',
            'app_access' => '',
            'menu' => ''
        );

        $app = $this->input->get('app');

        if($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false){
            redirect(base_url('welcome/login'), 'refresh');
        }elseif($app === 'admin'){
            $data['app_access'] = $this->menu_models->get_app_access_dua($this->session->userdata('username'));
            $data['header_menu'] = $this->menu_models->get_header_menu();
            $data['menu'] = 'admin';
        }else {
            redirect(base_url('error/error_404'), 'refresh');
        }

        $this->load->view('menu_app/menu_admin', $data);
    }

    function menu_ticket(){
        $this->load->model('menu_models');

        $data = array(
            'full_name' => $this->session->userdata('name'),
            'cabang' => $this->session->userdata('cabang'),
            'divisi' => $this->session->userdata('divisi'),
            'header_menu' => '',
            'app_access' => '',
            'menu' => ''
        );

        $app = $this->input->get('app');

        if($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false){
            redirect(base_url('welcome/login'), 'refresh');
        }elseif($app === 'tkt'){
            $data['app_access'] = $this->menu_models->get_app_access_dua($this->session->userdata('username'));
            $data['header_menu'] = $this->menu_models->get_header_menu();
            $parent_menu = $this->menu_models->get_parent_menu('TKT');

            for($i = 0; $i < sizeof($parent_menu); $i++){
                $child_menu = $this->menu_models->get_child_menu($parent_menu[$i]['MenuParent']);
                if($parent_menu[$i]['MenuParentId'] !== '0'){
                    $parent_menu[$i]['ChildMenu'] = $child_menu;
                }else{
                    $parent_menu[$i]['ChildMenu'] = 0;
                }
            }
        }else {
            redirect(base_url('error/error_404'), 'refresh');
        }

        $this->load->view('menu_app/menu', $data);
    }

    function menu_tasklog(){
        $this->load->model('menu_models');

        $data = array(
            'full_name' => $this->session->userdata('name'),
            'cabang' => $this->session->userdata('cabang'),
            'divisi' => $this->session->userdata('divisi'),
            'header_menu' => '',
            'app_access' => '',
            'menu' => ''
        );

        $app = $this->input->get('app');

        if($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false){
            redirect(base_url('welcome/login'), 'refresh');
        }elseif($app === 'tsk'){
            $data['app_access'] = $this->menu_models->get_app_access_dua($this->session->userdata('username'));
            $data['header_menu'] = $this->menu_models->get_header_menu();
            $parent_menu = $this->menu_models->get_parent_menu('TSK');

            for($i = 0; $i < sizeof($parent_menu); $i++){
                $child_menu = $this->menu_models->get_child_menu($parent_menu[$i]['MenuParentId']);
                if($parent_menu[$i]['MenuParentId'] !== '0'){
                    $parent_menu[$i]['ChildMenu'] = $child_menu;
                }else{
                    $parent_menu[$i]['ChildMenu'] = 0;
                }
            }

            $data['menu'] = $parent_menu;
        }else {
            redirect(base_url('error/error_404'), 'refresh');
        }

        $this->load->view('menu_app/menu', $data);
    }

    function menu_monitoring(){
        $this->load->model('menu_models');

        $data = array(
            'full_name' => $this->session->userdata('name'),
            'cabang' => $this->session->userdata('cabang'),
            'divisi' => $this->session->userdata('divisi'),
            'header_menu' => '',
            'app_access' => '',
            'menu' => ''
        );

        $app = $this->input->get('app');

        if($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false){
            redirect(base_url('welcome/login'), 'refresh');
        }elseif($app === 'mtr'){
            $data['app_access'] = $this->menu_models->get_app_access_dua($this->session->userdata('username'));
            $data['header_menu'] = $this->menu_models->get_header_menu();
            $parent_menu = $this->menu_models->get_parent_menu('MTR');

            for($i = 0; $i < sizeof($parent_menu); $i++){
                $child_menu = $this->menu_models->get_child_menu($parent_menu[$i]['MenuParentId']);
                if($parent_menu[$i]['MenuParentId'] !== '0'){
                    $parent_menu[$i]['ChildMenu'] = $child_menu;
                }else{
                    $parent_menu[$i]['ChildMenu'] = 0;
                }
            }

            $data['menu'] = $parent_menu;
        }else {
            $this->load->view('errors/html/custom_error_404');
        }

        $this->load->view('menu_app/menu', $data);
    }

    function menu_dailyjobs(){
        $this->load->model('menu_models');

        $data = array(
            'full_name' => $this->session->userdata('name'),
            'cabang' => $this->session->userdata('cabang'),
            'divisi' => $this->session->userdata('divisi'),
            'header_menu' => '',
            'app_access' => '',
            'menu' => ''
        );

        $app = $this->input->get('app');

        if($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false){
            redirect(base_url('welcome/login'), 'refresh');
        }elseif($app === 'djb'){
            $data['app_access'] = $this->menu_models->get_app_access_dua($this->session->userdata('username'));
            $data['header_menu'] = $this->menu_models->get_header_menu();
            $parent_menu = $this->menu_models->get_parent_menu('DJB');

            for($i = 0; $i < sizeof($parent_menu); $i++){
                $child_menu = $this->menu_models->get_child_menu($parent_menu[$i]['MenuParentId']);
                if($parent_menu[$i]['MenuParentId'] !== '0'){
                    $parent_menu[$i]['ChildMenu'] = $child_menu;
                }else{
                    $parent_menu[$i]['ChildMenu'] = 0;
                }
            }

            $data['menu'] = $parent_menu;
        }else {
            redirect(base_url('error/error_404'), 'refresh');
        }

        $this->load->view('menu_app/menu', $data);
    }


    public function home()
    {
        $data = array(
            'header' => 'Home'
        );
        if($this->session->userdata('username') === '' || array_key_exists('username', $this->session->all_userdata()) === false){
            redirect(base_url('error/error_401'), 'refresh');
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
            'input_password' => $input_password,
            'app' => $this->login_models->get_app()
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

                    if ($password === $login_info[0]['Password']) {
                        if($app === '1' && $login_info[0]['IsAdminAccess'] === '1'){
                            redirect(base_url('welcome?app=admin'), 'refresh');
                        }elseif($app === 'TKT' && $login_info[0]['IsTicketAccess'] === '1'){
                            redirect(base_url('welcome?app=tkt'), 'refresh');
                        }elseif($app === 'TSK' && $login_info[0]['IsTasklogAccess'] === '1'){
                            redirect(base_url('welcome?app=tsk'), 'refresh');
                        }elseif($app === 'MTR' && $login_info[0]['IsMonitoringAccess'] === '1'){
                            redirect(base_url('welcome?app=mtr'), 'refresh');
                        }elseif($app === 'DJB' && $login_info[0]['IsDailyJobsAccess'] === '1'){
                            redirect(base_url('welcome?app=djb'), 'refresh');
                        }else{
                            $data['status'] = 'Failed';
                            $data['input_username'] = $login_info[0]['Username'];
                            $data['pesan'] = 'Anda tidak memiliki akes, silahkan hubungi IT.';
                            $this->load->view('login_view', $data);
                        }
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

    public function logout(){
        $this->session->sess_destroy();
        redirect(base_url('welcome/login'), 'refresh');
    }
}
