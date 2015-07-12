<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu_models extends CI_Model
{
        function get_header_menu()
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec getGroupMenu";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function get_parent_menu($group_menu)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec getMenuParentByGroup '".$group_menu."'";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function get_child_menu($parent_id)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec getChildMenu '".$parent_id."'";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function get_app_access($username, $column)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spGetAppAccess @Username = '".$username."',
				                             @Column = '".$column."'";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function get_app_access_dua($username)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spGetAppAccess2 @Username = '".$username."'";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }
}
