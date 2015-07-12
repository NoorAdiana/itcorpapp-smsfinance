<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_models extends CI_Model
{
    function get_login_info($username)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spGetLoginInfo'".$username."'";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function get_count_login($username)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spGetLoginAccess @Username = '".$username."'";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function get_app()
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec getApp";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }
}
