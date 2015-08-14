<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Documentexist_models extends CI_Model
{
    function get_document($nomor_document)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spGetDocumentExist @DocumentNo = '".$nomor_document."'";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function get_document_detail($application_id)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "exec spGetDocumentExistDetail	@ApplicationID = '".$application_id."'";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }
}
