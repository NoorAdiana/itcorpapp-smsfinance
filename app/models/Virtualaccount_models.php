<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Virtualaccount_models extends CI_Model
{
    function insert_virtualaccount($virtualaccount = array(), $bank_code, $user, $file_name)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);

        $ITCORPDB->trans_begin();
        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        for($i = 1; $i < (sizeof($virtualaccount)-1); $i++){
            if($bank_code == 'BRIVA'){
                $query_string = "EXEC spConvertVirtualAccountBRI @NomorUrut = '".$virtualaccount[$i]['1']."',
								@TanggalTransaksi  = '".$virtualaccount[$i]['2']."',
								@CustomerCode = '".$virtualaccount[$i]['3']."',
								@TotalPembayaran = '".$virtualaccount[$i]['5']."',
								@BankCode = '".$bank_code."',
								@FileName = '".$file_name."',
								@UserInsert = '".$user."'";
            }elseif($bank_code == 'MANDR'){
                $query_string = "EXEC spConvertVirtualAccountMandiri @NomorUrut = '".$i."',
								@CustomerID  = '".$virtualaccount[$i]['8']."',
								@TanggalTransaksi = '".$virtualaccount[$i]['0']."',
								@TotalPembayaran = '".$virtualaccount[$i]['4']."',
								@BankCode = '".$bank_code."',
								@FileName = '".$file_name."',
								@UserInsert = '".$user."'";
            }

            $ITCORPDB->query($query_string);
        }
        if ($this->db->trans_status() === FALSE){
            $this->db->trans_rollback();
            return array(
                'Status' => 'Failed',
                'Pesan' => 'Error insert virtual account'
            );
        }else{
            $this->db->trans_commit();
            return array(
                'Status' => 'Success',
                'Pesan' => 'Insert virtual account berhasil'
            );
        }

    }

    function get_va_by_file($file_name, $user)
    {
        $ITCORPDB = $this->load->database('ITCORPDB', TRUE);
        $query_string = "EXEC spGetConvertVirtualAccount @FileName = '".$file_name."', @UserConvert = '".$user."'";

        $ITCORPDB->query('SET ANSI_NULLS ON;');
        $ITCORPDB->query('SET ANSI_WARNINGS ON;');
        $query = $ITCORPDB->query($query_string);
        return $query->result_array();
    }
}
