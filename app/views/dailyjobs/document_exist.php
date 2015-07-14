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
                    <form class="form-inline" method="get" action="">
                        <div class="form-group">
                            <div class="form-group">
                                <strong class="form-control-static">Cari Karyawan</strong>
                            </div>
                            <select name="pilihan_search" class="form-control">
                                <option value="1">Nomor Induk Karyawan</option>
                                <option value="2">Nama Karyawan</option>
                            </select>
                            <input type="hidden" class="form-control" id="action" name="action" value="cari">
                            <input type="text" class="form-control" id="kataKunci" name="kata_kunci"
                                   required="required">
                        </div>
                        <button type="submit" class="btn btn-primary">Search</button>
                    </form>
                </div>
                <div class="col-md-2"></div>
            </row>
            <br><br><br>
            <?php if ($daftar_user !== ''): ?>
                <row>
                    <div class="panel panel-default">
                        <table class="table table-hover" id="daftar_user">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th class="text-center">NIP</th>
                                <th class="text-center">NAMA</th>
                                <th class="text-center">CABANG</th>
                                <th class="text-center">DIVISI</th>
                                <th class="text-center">STATUS</th>
                                <th class="text-center">ACTION</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php for ($i = 0; $i < sizeof($daftar_user); $i++): ?>
                                <tr>
                                    <td class="text-center"><?php echo $i + 1 ?></td>
                                    <td class="text-center"><?php echo $daftar_user[$i]['Username']; ?></td>
                                    <td class="text-center"><?php echo $daftar_user[$i]['UserFullName']; ?></td>
                                    <td class="text-center"><?php echo $daftar_user[$i]['Cabang']; ?></td>
                                    <td class="text-center"><?php echo $daftar_user[$i]['Divisi']; ?></td>
                                    <td class="text-center"><?php if($daftar_user[$i]['IsActive'] == '1') {
                                            echo 'Active';
                                        } else {
                                            echo 'Non Active';
                                        } ?></td>
                                    <td class="text-center">
                                        <form method="post" action="<?php echo base_url('admin/users/detail_user'); ?>">
                                            <input type="hidden" id="action" name="action" value="detail_user">
                                            <input type="hidden" id="pilihan_search" name="pilihan_search" value="1">
                                            <input type="hidden" id="kata_kunci" name="kata_kunci"
                                                   value="<?php echo $daftar_user[$i]['Username']; ?>">
                                            <button type="submit" class="btn btn-primary btn-xs">Detail</button>
                                        </form>
                                    </td>
                                </tr>
                            <?php endfor; ?>
                            </tbody>
                        </table>
                    </div>
                </row>
            <?php endif; ?>
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
</script>
</body>
</html>
