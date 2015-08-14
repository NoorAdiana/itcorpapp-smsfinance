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
            <div class="col-sm-12">
                <row>
                    <?php if ($daftar_document !== ''): ?>
                    <div class="panel panel-default">
                        <table class="table table-hover" id="daftar_user">
                            <tbody>
                            <tr>
                                <th class="text-left">Application ID</th>
                                <td class="text-left"><?php echo $daftar_document[0]['ApplicationID']?></td>
                                <th class="text-left">Kode Cabang</th>
                                <td class="text-left"><?php echo $daftar_document[0]['BranchId']?></td>
                            </tr>
                            <tr>
                                <th class="text-left">Nama Konsumen</th>
                                <td class="text-left"><?php echo $daftar_document[0]['Name']?></td>
                                <th class="text-left">Nama Cabang</th>
                                <td class="text-left"><?php echo $daftar_document[0]['BranchFullName']?></td>
                            </tr>
                            <tr>
                                <th class="text-left">Nomor Kontrak</th>
                                <td class="text-left"><?php echo $daftar_document[0]['AgreementNo']?></td>
                                <th class="text-left">Default Status</th>
                                <td class="text-left"><?php echo $daftar_document[0]['DefaultStatus']?></td>
                            </tr>
                            <tr>
                                <th class="text-left">Contract Status</th>
                                <td class="text-left"><?php echo $daftar_document[0]['ContractStatus']?></td>
                                <th class="text-left">Asset Status</th>
                                <td class="text-left"><?php echo $daftar_document[0]['AssetStatus']?></td>
                            </tr>
                            </tbody>
                        </table>
                        </div>

                        <div class="panel panel-default">
                            <table class="table table-hover" id="daftar_user">
                                <thead>
                                <tr>
                                    <th class="text-center">Nomor</th>
                                    <th class="text-center">Jenis Dokumen</th>
                                    <th class="text-center">Nomor Dokumen</th>
                                    <th class="text-center">Checked</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <?php for ($i = 0; $i < sizeof($daftar_document); $i++): ?>
                                        <tr>
                                            <td class="text-center"><?php echo $i + 1; ?></td>
                                            <td class="text-center"><?php echo $daftar_document[$i]['AssetDocName']?></td>
                                            <td class="text-center"><?php echo $daftar_document[$i]['DocumentNo']?></td>
                                            <td class="text-center">
                                                <?php
                                                    if($daftar_document[$i]['IsDocExist'] == '1'){
                                                        echo '<i class="fa fa-check"></i>';
                                                    }else{
                                                        echo '<i class="fa fa-minus"></i>';
                                                    }
                                                ?>
                                            </td>
                                        </tr>
                                    <?php endfor; ?>
                                </tbody>
                            </table>
                        </div>
                    <?php endif; ?>
                    <button type="submit" class="btn btn-primary pull-right" onclick="closeWindow()">Close</button>
                </row>
            </div>
        </section>
    </div>
</div>
<?php include_once APPPATH . 'views/admin/asset/javascript.php' ?>
<script>
    function closeWindow() {
        close();
    }
</script>
</body>
</html>
