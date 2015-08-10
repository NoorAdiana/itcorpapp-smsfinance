<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Upload_models extends CI_Model
{
    function upload_file($upload_file = array(), $user_upload, $type_upload)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "EXEC spInsertFileUpload
                                @NamaFile = '".$upload_file['file_name']."',
                                @TypeFile = '".$upload_file['file_type']."',
                                @PathFile = '".$upload_file['file_path']."',
                                @FullPathFile = '".$upload_file['full_path']."',
                                @UploadFile = '".$upload_file['client_name']."',
                                @ExtFile = '".$upload_file['file_ext']."',
                                @SizeFile = '".$upload_file['file_size']."',
                                @IsImages = '".$upload_file['is_image']."',
                                @WidthImages = '".$upload_file['image_width']."',
                                @HeightImages = '".$upload_file['image_height']."',
                                @TypeImages = '".$upload_file['image_type']."',
                                @UserUpload = '".$user_upload."',
                                @UploadType = '".$type_upload."'";

        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function get_upload_file($tanggal_upload = '', $type_upload)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "EXEC spGetFileUpload @DtmUpload = '".$tanggal_upload."', @UploadType = '".$type_upload."'";

        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }

    function get_file_by_id($id)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "EXEC spGetFileUploadById @id = '".$id."'";

        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }
}
