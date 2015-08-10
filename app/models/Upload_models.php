<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Upload_models extends CI_Model
{
    function upload_file()
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "EXEC spInsertFileUpload
                                @NamaFile = '',
                                @TypeFile = '',
                                @PathFile = '',
                                @FullPathFile = '',
                                @UploadFile = '',
                                @ExtFile = '',
                                @SizeFile = '',
                                @IsImages = '',
                                @WidthImages = '',
                                @HeightImages = '',
                                @TypeImages = '',
                                @UserUpload = '',
                                @UploadType = ''";
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }
}
