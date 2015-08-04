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
    <?php include_once APPPATH . 'views/asset/css.php' ?>
</head>
<body class="contect-iframe">
<div class="wrapper">
    <div class="content-wrapper">
        <section class="content-header">
            <br><br>
        </section>
        <section class="content">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="input_type_ticket" class="col-sm-3 control-label">Type Ticket</label>

                        <div class="col-sm-9">
                            <select name="input_type_ticket" id="input_type_ticket" class="form-control">
                                <option value="0">Pilih Type Ticket Disini</option>
                                <option value="P">Problem</option>
                                <option value="R">Request</option>
                            </select>
                        </div>
                    </div>
                    <?php if($this->session->group_user == 'BKN'):; ?>
                    <div class="form-group">
                        <label for="input_nama_pelapor" class="col-sm-3 control-label">Nama Pelapor</label>

                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="input_nama_pelapor" placeholder="Nama Pelapor" name="input_nama_pelapor">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="input_cabang_pelapor" class="col-sm-3 control-label">Cabang Pelapor</label>

                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="input_cabang_pelapor" placeholder="Cabang Pelapor" name="input_nama_pelapor">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="input_email_pelapor" class="col-sm-3 control-label">Email Pelapor</label>

                        <div class="col-sm-9">
                            <input type="email" class="form-control" id="input_email_pelapor" placeholder="Email Pelapor" name="input_nama_pelapor">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="input_kontak_pelapor" class="col-sm-3 control-label">Kontak Pelapor</label>

                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="input_kontak_pelapor" placeholder="Kontak Pelapor" name="input_nama_pelapor">
                        </div>
                    </div>
                    <?php endif; ?>
                    <div class="form-group">
                        <label for="input_subject_ticket" class="col-sm-3 control-label">Subject Ticket</label>

                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="input_subject_ticket" name="input_subject_ticket"
                                   placeholder="Subejct Ticket">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="input_pesan_ticket" class="col-sm-3 control-label">Isi Ticket</label>

                        <div class="col-sm-9">
                            <textarea type="text" class="form-control" id="input_pesan_ticket" placeholder="Isi Ticket" name="input_pesan_ticket"
                                      rows="10" style="resize: none;"></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="upload_gambar" class="col-sm-3 control-label">Upload Gambar</label>

                        <div class="col-sm-9">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" id="upload_gambar" name="is_upload_gambar">
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="pilih_upload_gambar" class="col-sm-3 control-label">Pilih Gambar</label>

                        <div class="col-sm-9">
                                <input type="file" id="pilih_upload_gambar" class="filestyle" data-buttonName="btn-primary" name="userfile" data-disabled="true">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="reset" class="btn btn-danger">Cancel</button>
                            <button type="submit" class="btn btn-primary">Sign in</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-1"></div>
        </section>
    </div>
</div>
<?php include_once APPPATH . 'views/asset/javascript.php' ?>
<!-- FILE UPLOAD SCRIPT -->
<script src="<?php echo base_url('asset/plugins/bootstrap-filestyle/bootstrap-filestyle.min.js'); ?>"
        type="text/javascript"></script>

<script>
    $("#upload_gambar").on("click", function () {
        if (document.getElementById('upload_gambar').checked) {
            $(":file").filestyle('disabled', false);
        } else {
            $(":file").filestyle('disabled', true);
        }
    });
</script>
</body>
</html>
