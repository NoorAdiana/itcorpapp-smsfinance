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
                <?php if ($status == 'Error' || $status == 'Failed') { ?>
                    <row>
                        <div class="alert alert-danger" role="alert"><?php echo $pesan ?></div>
                    </row>
                <?php } ?>
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form class="form-inline" action="<?php echo base_url('dailyjobs/document_exist')?>" method="get" accept-charset="utf-8">
                        <div class="form-group">
                            <div class="form-group">
                                <strong class="form-control-static">Nomor Dokumen</strong>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="kata_kunci" name="kata_kunci"
                                   required="required">
                            <input type="hidden" class="form-control" id="action" name="action"
                                   required="required" value="cari">
                            <button type="submit" class="btn btn-primary">Cari</button>
                        </div>
                    </form>
                </div>
                <div class="col-md-3"></div>
            </row>
            <br><br><br>

            <div class="col-sm-12">
                <row>
                    <?php if ($daftar_document !== ''): ?>
                        <div class="panel panel-default">
                            <table class="table table-hover" id="daftar_user">
                                <thead>
                                <tr>
                                    <th class="text-center">Cabang</th>
                                    <th class="text-center">Nama Konsumen</th>
                                    <th class="text-center">Nomor Kontrak</th>
                                    <th class="text-center">Jenis Dokumen</th>
                                    <th class="text-center">Nomor Dokumen</th>
                                    <th class="text-center">Kontrak Status</th>
                                    <th class="text-center">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <?php for ($i = 0; $i < sizeof($daftar_document); $i++): ?>
                                        <tr>
                                            <td class="text-center"><?php echo $daftar_document[$i]['BranchFullName']?></td>
                                            <td class="text-center"><?php echo $daftar_document[$i]['Name']?></td>
                                            <td class="text-center"><?php echo $daftar_document[$i]['AgreementNo']?></td>
                                            <td class="text-center"><?php echo $daftar_document[$i]['AssetDocID']?></td>
                                            <td class="text-center"><?php echo $daftar_document[$i]['DocumentNo']?></td>
                                            <td class="text-center"><?php echo $daftar_document[$i]['ContractStatus']?></td>
                                            <td class="text-center">
                                                <form action="<?php echo base_url('dailyjobs/document_exist/detail')?>"
                                                      onSubmit="openPopsUpForm(this, 'join')">
                                                    <input type="hidden" value="<?php echo $daftar_document[$i]['ApplicationID']?>" name="application_id"
                                                           id="application_id">
                                                    <button type="submit" class="btn btn-primary btn-xs">Detail</button>
                                                </form>
                                            </td>
                                        </tr>
                                    <?php endfor; ?>
                                </tbody>
                            </table>
                        </div>
                    <?php endif; ?>
                </row>
            </div>
        </section>
    </div>
</div>
<?php include_once APPPATH . 'views/admin/asset/javascript.php' ?>

<!-- DATA TABES SCRIPT -->
<script src="<?php echo base_url('asset/plugins/datatables/jquery.dataTables.min.js') ?>"
        type="text/javascript"></script>
<script src="<?php echo base_url('asset/plugins/datatables/dataTables.bootstrap.min.js') ?>"
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

    function openPopsUp() {
        window.open("<?php echo base_url('ticket/detail?nomor_ticket=401-00001')?>",
            "_blank",
            "top=50, left=250, width=800, height=600");
    }

    function openPopsUpForm(myform, windowname) {
        var strWindowFeatures = "resizable=no, scrollbars=yes, top=50, left=250, width=800, height=550";
        if (!window.focus) return true;
        window.open('', windowname, strWindowFeatures);
        myform.target = windowname;
        return true;
    }
</script>
</body>
</html>
