<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>IT Corp App | SMS Finance</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <?php include_once APPPATH . 'views/admin/asset/css.php' ?>
</head>
<body class="contect-iframe">
<div class="wrapper">
    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                <?php echo $header ?>
            </h1><br>
        </section>
        <section class="content">
            <row>
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <form class="form-horizontal" action="<?php echo base_url('virtual/generate_file/upload_file')?>" enctype="multipart/form-data" method="post" accept-charset="utf-8">
                        <div class="form-group">
                            <label for="pilihan_bank" class="col-sm-2 control-label">Pilih Bank</label>
                            <div class="col-sm-8">
                                <select name="pilihan_bank" id="pilihan_bank" class="form-control">
                                    <option value="MDR">Bank Mandiri</option>
                                    <option value="BRI">Bank Rakyat Indonesia</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="pilih_upload_gambar" class="col-sm-2 control-label">Pilih File</label>

                            <div class="col-sm-8">
                                <input type="file" id="pilih_upload_gambar" class="filestyle" data-buttonName="btn-primary" name="userfile" >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-8">
                                <button type="reset" class="btn btn-danger">Cancel</button>
                                <button type="submit" class="btn btn-primary">Upload</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-2"></div>
            </row>
        </section>
    </div>
</div>
<?php include_once APPPATH . 'views/admin/asset/javascript.php' ?>

<!-- DATA TABES SCRIPT -->
<script src="<?php echo base_url('asset/plugins/datatables/jquery.dataTables.min.js') ?>"
        type="text/javascript"></script>
<script src="<?php echo base_url('asset/plugins/datatables/dataTables.bootstrap.min.js') ?>"
        type="text/javascript"></script>

<!-- FILE UPLOAD SCRIPT -->
<script src="<?php echo base_url('asset/plugins/bootstrap-filestyle/bootstrap-filestyle.min.js'); ?>"
        type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        $('#daftar_user').DataTable({
            "paging": true,
            "lengthChange": false,
            "pageLength": 7,
            "searching": false,
            "ordering": false,
            "info": false,
            "autoWidth": true
        });
    });
</script>
</body>
</html>
