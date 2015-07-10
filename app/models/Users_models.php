<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users_models extends CI_Model
{
    function get_type_user(){
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spGetTypeUser";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function cari_import_user($type, $kata_kunci)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spSearchImportEmployee '".$type."', '".$kata_kunci."' ";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

        function get_secret_key($username)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spGetSecretKey '".$username."'";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function import_user($nomor_induk, $email, $save_password, $user_import, $secret_key, $type)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spImportEmployee   @NomorInduk = '".$nomor_induk."',
                                                @Email = '".$email."',
					                            @Password = '".$save_password."',
					                            @Username = '".$user_import."',
					                            @SecretKey = '".$secret_key."',
					                            @Type = '".$type."'";

        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function insert_user($password, $nama, $email, $jabatan, $cabang, $departement, $divisi, $type, $secret_key, $user){
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spInsertDataUser	@Password = '".$password."',
                                                @UserFullName = '".$nama."',
                                                @Email = '".$email."',
                                                @Jabatan = '".$jabatan."',
                                                @Cabang = '".$cabang."',
                                                @Departement = '".$departement."',
                                                @Divisi = '".$divisi."',
                                                @Type = '".$type."',
                                                @SecretKey = '".$secret_key."',
                                                @UserUpdate = '".$user."'";

        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function cari_user($type, $kata_kunci)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spSearchUsername '".$type."', '".$kata_kunci."' ";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function update_user($username, $password, $nama, $email, $jabatan, $cabang, $departement, $divisi, $admin_access, $is_active, $user_update, $change_password, $type_user){
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spUpdateUser  @Email = '".$email."',
                                            @Password  = '".$password."',
                                            @UserUpdate = '".$user_update."',
                                            @Username = '".$username."',
                                            @IsActive = '".$is_active."',
                                            @IsAdminAccess = '".$admin_access."',
                                            @IsChangePassword = '".$change_password."'";

        $query_string_dua = "exec spUpdateUser2	@Username = '".$username."',
                                                @Password = '".$password."',
                                                @UserFullName = '".$nama."',
                                                @Email = '".$email."',
                                                @Jabatan = '".$jabatan."',
                                                @Cabang = '".$cabang."',
                                                @Departement = '".$departement."',
                                                @Divisi = '".$divisi."',
                                                @IsAdminAccess = '".$admin_access."',
                                                @IsActive = '".$is_active."',
                                                @UserUpdate = '".$user_update."',
                                                @IsChangePassword = '".$change_password."'";

        if($type_user === 'KRY'){
            $ITCORPDB->query('SET ANSI_NULLS ON;');
            $ITCORPDB->query('SET ANSI_WARNINGS ON;');
            $query = $ITCORPDB->query($query_string);
        }else{
            $ITCORPDB->query('SET ANSI_NULLS ON;');
            $ITCORPDB->query('SET ANSI_WARNINGS ON;');
            $query = $ITCORPDB->query($query_string_dua);
        }

        return $query->result_array();
    }
}
