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
            <h1>
                <?php echo $header ?>
            </h1><br>
        </section>
        <section class="content">
            <row>
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <img src="<?php echo base_url('asset/dist/img/logo.png')?>" width="575">
                </div>
                <div class="col-md-3"></div>
            </row>
        </section>
    </div>
</div>
<?php include_once APPPATH . 'views/asset/javascript.php' ?>
</body>
</html>
