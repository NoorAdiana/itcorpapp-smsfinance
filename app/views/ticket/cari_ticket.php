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
                <div class="col-md-8">
                    <form class="form-inline" method="get" action="">
                        <div class="form-group">
                            <div class="form-group">
                                <strong class="form-control-static">Cari Ticket</strong>
                            </div>
                            <select name="pilihan_search" class="form-control">
                                <option value="1">Nomor Ticket</option>
                                <option value="2">Subject Ticket</option>
                            </select>
                            <input type="hidden" class="form-control" id="action" name="action" value="cari">
                            <input type="text" class="form-control" id="kataKunci" name="kata_kunci"
                                   required="required">
                        </div>
                        <button type="submit" class="btn btn-primary" name="submit">Search</button>
                    </form>
                </div>
                <div class="col-md-2"></div>
            </row>
            <br><br><br>
            <?php if (isset($_GET['submit'])): ?>
                <row>
                    <div class="panel panel-default">
                        <table class="table table-hover" id="daftar_user">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th class="text-center">NOMOR TICKET</th>
                                <th class="text-center">SUBJECT TICKET</th>
                                <th class="text-center">TANGGAL INPUT</th>
                                <th class="text-center">STATUS</th>
                                <th class="text-center">ACTION</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center">1</td>
                                    <td class="text-center"><button type="button" class="btn-link" onclick="openPopsUp()">401-00001</button></td>
                                    <td class="text-center">SETTING EMAIL</td>
                                    <td class="text-center">2015-05-01</td>
                                    <td class="text-center">IN PROGRESS</td>
                                    <td class="text-center"><button type="submit" class="btn btn-primary btn-xs">ANSWER</button></td>
                                </tr>
                                <tr>
                                    <td class="text-center">2</td>
                                    <td class="text-center"><button type="button" class="btn-link" onclick="openPopsUp()">999-00032</button></td>
                                    <td class="text-center">RUBAH STATUS CSI JADI CSR</td>
                                    <td class="text-center">2015-05-01</td>
                                    <td class="text-center">IN PROGRESS</td>
                                    <td class="text-center"><button type="submit" class="btn btn-primary btn-xs">ANSWER</button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </row>
            <?php endif; ?>
        </section>
    </div>
</div>
<?php include_once APPPATH . 'views/asset/javascript.php' ?>

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

    function openPopsUp(){
        window.open("<?php echo base_url('ticket/detail?nomor_ticket=401-00001')?>",
                    "_blank",
                    "top=50, left=250, width=800, height=600");
    }
</script>
</body>
</html>
