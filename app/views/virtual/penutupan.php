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

    <!-- Date Picker -->
    <link href="<?php echo base_url('asset/plugins/datepicker/css/bootstrap-datepicker3.min.css') ?>" rel="stylesheet"
          type="text/css"/>
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
            <?php if ($status == 'Error'){ ?>
                <row>
                    <div class="alert alert-danger" role="alert"><?php echo $pesan ?></div>
                </row>
            <?php } ?>
            <row>
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <form class="form-horizontal" action="<?php echo base_url('virtual/penutupan/export')?>" enctype="multipart/form-data" method="post" accept-charset="utf-8">
                        <div class="form-group">
                            <label for="pilihan_bank" class="col-sm-2 control-label">Pilih Bank</label>
                            <div class="col-sm-8">
                                <select name="pilihan_bank" id="pilihan_bank" class="form-control">
                                    <option value="0">Pilih Nama Bank Disini</option>
                                    <option value="BCA">Bank Central Asia</option>
                                    <option value="MDR">Bank Mandiri</option>
                                    <option value="BRI">Bank Rakyat Indonesia</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="end_date" class="col-sm-2 control-label">Tanggal</label>
                            <div class="col-sm-8" id="sandbox-container">
                                <div class="input-daterange input-group" id="datepicker">
                                    <input type="text" class="input-sm form-control" name="start_date"/>
                                    <span class="input-group-addon">to</span>
                                    <input type="text" class="input-sm form-control" name="end_date"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-8">
                                <input type="reset" class="btn btn-danger" value="Cancel">
                                <button type="submit" class="btn btn-primary">Export</button>
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

<script src="<?php echo base_url('asset/plugins/datepicker/js/bootstrap-datepicker.min.js'); ?>"
        type="text/javascript"></script>

<script type="text/javascript">
    $('#sandbox-container .input-daterange').datepicker({
        format: "yyyy-mm-dd",
        orientation: "top auto",
        autoclose: true,
        todayHighlight: true
    });
</script>
</body>
</html>
