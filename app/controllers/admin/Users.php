<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller
{
    public function index()
    {
        $this->load->view('errors/html/custom_error_404');
    }

    public function get_employee()
    {
        /**
         * Nanti ditambahkan validasi session
         */

        $this->load->model('users_models');
        $type = 3;
        $kata_kunci = $this->input->post('nomor_induk');
        $result = $this->users_models->cari_import_user($type, $kata_kunci);

        $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($result, JSON_FORCE_OBJECT));
    }

    public function tambah_user()
    {
        $this->load->model('users_models');
        $type_user = $this->users_models->get_type_user();

        $type_user_json = json_encode($type_user);

        $data = array(
            'header' => 'Tambah User',
            'status' => '',
            'pesan' => '',
            'type_user' => $type_user_json,
            'data_user' => array()
        );

        $action = $this->input->post('action');

        if ($action == '') {
            $data['data_user'] = array(
                'NIP' => '',
                'NAMA' => '',
                'EMAIL' => '',
                'JABATAN' => '',
                'CABANG' => '',
                'DEPARTEMENT' => '',
                'DIVISI' => '',
                'TYPE' => 0
            );

            $this->load->view('admin/user_management/tambah_user', $data);
        } elseif ($action == 'simpan') {
            $type_user_input = strtoupper($this->input->post('type_user'));
            $nomor_induk = strtoupper($this->input->post('nomor_induk'));
            $nama = strtoupper($this->input->post('nama'));
            $email = $this->input->post('email');
            $jabatan = strtoupper($this->input->post('jabatan'));
            $cabang = strtoupper($this->input->post('cabang'));
            $departement = strtoupper($this->input->post('departement'));
            $divisi = strtoupper($this->input->post('divisi'));
            $password = $this->input->post('password');

            $secret_key = base64_encode(openssl_random_pseudo_bytes(30));
            $save_password = sha1(md5($password) . $secret_key);
            $user_import = 'Admin';

            $data['data_user'] = array(
                'NIP' => $nomor_induk,
                'NAMA' => $nama,
                'EMAIL' => $email,
                'JABATAN' => $jabatan,
                'CABANG' => $cabang,
                'DEPARTEMENT' => $departement,
                'DIVISI' => $divisi,
                'TYPE' => $type_user_input
            );

            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $data['status'] = 'Failed';
                $data['pesan'] = 'Mohon masukan email yang valid!';
                $this->load->view('admin/user_management/tambah_user', $data);
            } elseif ($type_user_input == '0' || $nama == '' || trim($jabatan) == '' || trim($cabang) == '' || trim($departement) == '' || trim($divisi) == '') {
                $data['status'] = 'Failed';
                $data['pesan'] = 'Mohon untuk dicek kembali data yang diinput';
                $this->load->view('admin/user_management/tambah_user', $data);
            } elseif (trim($password) == '' || strlen($password) < 4) {
                $data['status'] = 'Failed';
                $data['pesan'] = 'Password minimal 4 karekater!';
                $this->load->view('admin/user_management/tambah_user', $data);
            } else {

                $result = array();

                if ($type_user_input === 'KRY') {
                    $result = $this->users_models->import_user($nomor_induk, $email, $save_password, $user_import, $secret_key, $type_user_input);
                } else {
                    $result = $this->users_models->insert_user($save_password, $nama, $email, $jabatan, $cabang, $departement, $divisi, $type_user_input, $secret_key, $user_import);
                }

                if ($result[0]['Status'] == 'Success') {
                    $data['data_user'] = array(
                        'NIP' => '',
                        'NAMA' => '',
                        'EMAIL' => '',
                        'JABATAN' => '',
                        'CABANG' => '',
                        'DEPARTEMENT' => '',
                        'DIVISI' => '',
                        'TYPE' => 0
                    );

                    $data['status'] = $result[0]['Status'];
                    $data['pesan'] = $result[0]['Pesan'];
                    $this->load->view('admin/user_management/tambah_user', $data);
                } else {
                    $data['status'] = $result[0]['Status'];
                    $data['pesan'] = $result[0]['Pesan'];
                    $this->load->view('admin/user_management/tambah_user', $data);
                }
            }
        } else {
            $this->load->view('errors/html/custom_error_404');
        }
    }

    public function detail_user()
    {
        $data = array(
            'header' => 'Detail User',
            'status' => '',
            'pesan' => '',
            'data_user' => array()
        );

        $this->load->model('users_models');

        $action = $this->input->post('action');
        $type = $this->input->post('pilihan_search');
        $kata_kunci = $this->input->post('kata_kunci');


        if ($action == 'detail_user') {
            $data['data_user'] = $this->users_models->cari_user($type, $kata_kunci);
            $this->load->view('admin/user_management/detail_user', $data);
        } elseif ($action == 'update') {
            $username = $this->input->post('username');
            $nama = $this->input->post('nama');
            $email = $this->input->post('email');
            $jabatan = $this->input->post('jabatan');
            $cabang = $this->input->post('cabang');
            $departement = $this->input->post('departement');
            $divisi = $this->input->post('divisi');
            $type_user = $this->input->post('type_user');
            $type_user_dec = $this->input->post('type_user_dec');
            $is_active = $this->input->post('status');
            $admin_access = $this->input->post('admin_access');
            $change_password = $this->input->post('change_password');

            $password = $this->input->post('password');
            $secret_key = base64_encode(openssl_random_pseudo_bytes(30));
            $save_password = sha1(md5($password) . $secret_key);
            $user_update = 'Admin';

            $data['data_user'] = array(
                '0' => array(
                    'Username' => $username,
                    'UserFullName' => $nama,
                    'Email' => $email,
                    'Jabatan' => $jabatan,
                    'Cabang' => $cabang,
                    'Departement' => $departement,
                    'Divisi' => $divisi,
                    'Type' => $type_user,
                    'TypeDescription' => $type_user_dec,
                    'IsAdminAccess' => $admin_access,
                    'IsActive' => $change_password
                )
            );


            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $data['status'] = 'Failed';
                $data['pesan'] = 'Mohon masukan email yang valid!';
                $this->load->view('admin/user_management/detail_user', $data);
            } elseif($nama == '' || trim($jabatan) == '' || trim($cabang) == '' || trim($departement) == '' || trim($divisi) == ''){
                $data['status'] = 'Failed';
                $data['pesan'] = 'Mohon untuk dicek kembali data yang diinput';
                $this->load->view('admin/user_management/detail_user', $data);
            }elseif(trim($password) == '' || strlen($password) < 4){
                $data['status'] = 'Failed';
                $data['pesan'] = 'Password minimal 4 karekater!';
                $this->load->view('admin/user_management/detail_user', $data);
            }else {
                $result = $this->users_models->update_user($username, $save_password, $nama, $email, $jabatan, $cabang, $departement, $divisi, $admin_access, $is_active, $user_update, $change_password, $type_user);

                if ($result[0]['Status'] == 'Success') {
                    redirect(base_url('admin/users/cari_user'), 'refresh');
                } else {
                    $data['status'] = $result[0]['Status'];
                    $data['pesan'] = $result[0]['Pesan'];

                    $this->load->view('admin/user_management/detail_user', $data);
                }
            }
        } else {
            $this->load->view('errors/html/custom_error_404');
        }
    }

    public function cari_user()
    {
        $data = array(
            'header' => 'Cari User',
            'status' => '',
            'pesan' => '',
            'daftar_user' => ''
        );

        $this->load->model('users_models');

        $action = $this->input->get('action');
        $type = $this->input->get('pilihan_search');
        $kata_kunci = $this->input->get('kata_kunci');

        if ($action == 'cari') {
            $data['daftar_user'] = $this->users_models->cari_user($type, $kata_kunci);
            $this->load->view('admin/user_management/cari_user', $data);
        } elseif ($action == '') {
            $this->load->view('admin/user_management/cari_user', $data);
        } else {
            $this->load->view('errors/html/custom_error_404');
        }
    }

    public function import_user()
    {
        $data = array(
            'header' => 'Import User',
            'status' => '',
            'pesan' => '',
            'daftar_user' => ''
        );

        $this->load->model('users_models');

        $action = $this->input->get('action');
        $type = $this->input->get('pilihan_search');
        $kata_kunci = $this->input->get('kata_kunci');

        if ($action == 'cari') {
            $data['daftar_user'] = $this->users_models->cari_import_user($type, $kata_kunci);
            $this->load->view('admin/user_management/import_user', $data);
        } elseif ($action == '') {
            $this->load->view('admin/user_management/import_user', $data);
        } else {
            $this->load->view('errors/html/custom_error_404');
        }
    }
}
