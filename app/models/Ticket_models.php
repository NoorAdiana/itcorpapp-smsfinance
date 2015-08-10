<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ticket_models extends CI_Model
{
    function get_type_ticket()
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spGetJenisTicket";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

}
