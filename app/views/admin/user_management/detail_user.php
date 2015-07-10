<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$disable_input = '';
$disable_select = 'disabled="disabled"';

if ($data_user[0]['Type'] === 'KRY') {
    $disable_input = 'disabled="disabled"';
}
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
            <?php if ($status == 'Failed'): ?>
            <row>
                <div class="alert alert-danger" role="alert"><?php echo $pesan ?></div>
            </row>
            <?php endif; ?>
            <row>
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form class="form-horizontal" method="post">
                        <div class="form-group">
                            <label for="username" class="col-sm-3 control-label">Username</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="username" disabled
                                       value="<?php echo $data_user[0]['Username'] ?>">
                                <input type="hidden" class="form-control" id="hidden_username" name="username"
                                       value="<?php echo $data_user[0]['Username'] ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nama" class="col-sm-3 control-label">Nama</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="nama" <?php echo $disable_input; ?>
                                       value="<?php echo $data_user[0]['UserFullName'] ?>">
                                <input type="hidden" class="form-control" id="hidden_nama" name="nama"
                                       value="<?php echo $data_user[0]['UserFullName'] ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-3 control-label">Alamat Email</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="email" name="email"
                                       value="<?php echo $data_user[0]['Email'] ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="jabatan" class="col-sm-3 control-label">Jabatan</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="jabatan" <?php echo $disable_input; ?>
                                       value="<?php echo $data_user[0]['Jabatan'] ?>">
                                <input type="hidden" class="form-control" id="hidden_jabatan" name="jabatan"
                                       value="<?php echo $data_user[0]['Jabatan'] ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="cabang" class="col-sm-3 control-label">Cabang</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="cabang" <?php echo $disable_input; ?>
                                       value="<?php echo $data_user[0]['Cabang'] ?>">
                                <input type="hidden" class="form-control" id="hidden_cabang" name="cabang"
                                       value="<?php echo $data_user[0]['Cabang'] ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="departement" class="col-sm-3 control-label">Departement</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="departement" <?php echo $disable_input; ?>
                                       value="<?php echo $data_user[0]['Departement'] ?>">
                                <input type="hidden" class="form-control" id="hidden_departement" name="departement"
                                       value="<?php echo $data_user[0]['Departement'] ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="divisi" class="col-sm-3 control-label">Divisi</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="divisi" <?php echo $disable_input; ?>
                                       value="<?php echo $data_user[0]['Divisi'] ?>">
                                <input type="hidden" class="form-control" id="hidden_divisi" name="divisi"
                                       value="<?php echo $data_user[0]['Divisi'] ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="divisi" class="col-sm-3 control-label">Type User</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="type_user" disabled="disabled"
                                       value="<?php echo $data_user[0]['TypeDescription'] ?>">
                                <input type="hidden" class="form-control" id="hidden_type_user" name="type_user"
                                       value="<?php echo $data_user[0]['Type'] ?>">
                                <input type="hidden" class="form-control" id="hidden_type_user_dec" name="type_user_dec"
                                       value="<?php echo $data_user[0]['TypeDescription'] ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="status" class="col-sm-3 control-label">Status</label>

                            <div class="col-sm-9">
                                <select class="form-control" name="status">
                                    <option value="1"
                                            <?php if ($data_user[0]['IsActive'] == 1): ?>selected<?php endif; ?> >Aktif
                                    </option>
                                    <option value="0"
                                            <?php if ($data_user[0]['IsActive'] == 0): ?>selected<?php endif; ?> >Non
                                        Aktif
                                    </option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="status" class="col-sm-3 control-label">Akses Admin</label>

                            <div class="col-sm-9">
                                <select class="form-control" name="admin_access">
                                    <option value="1"
                                            <?php if ($data_user[0]['IsAdminAccess'] == 1): ?>selected<?php endif; ?> >
                                        Yes
                                    </option>
                                    <option value="0"
                                            <?php if ($data_user[0]['IsAdminAccess'] == 0): ?>selected<?php endif; ?> >
                                        No
                                    </option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="change_password" class="col-sm-3 control-label">Reset Sandi</label>

                            <div class="col-sm-9">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" id="change_password" name="change_password" value="1">
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-3 control-label">Password</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="password" name="password"
                                       disabled="disabled">
                                <input type="hidden" name="action" value="update">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <a href="<?php echo base_url('admin/users/cari_user') ?>"
                                   class="btn btn-danger">Cancel</a>
                                <button type="submit" class="btn btn-primary">Simpan</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-3"></div>
            </row>
        </section>
    </div>
</div>
<?php include_once APPPATH . 'views/admin/asset/javascript.php' ?>
<script>
    $(document).ready(
        function () {
            setValueNama();
            setValueCabang();
            setValueDivisi();
            setValueJabatan();
            setValueDepartement();
            setChangePassword();
        }
    );

    function setChangePassword(){
        $("#change_password").on("click", function () {
            if (document.getElementById('change_password').checked) {
                $("#password").prop("disabled", false);
            } else {
                $("#password").prop("disabled", true);
            }
        });
    }

    function setValueNama() {
        $("#nama").bind("change paste keyup", function () {
            var input = $("#nama").val();
            $("#hidden_nama").val(input);
        });
    }

    function setValueJabatan() {
        $("#jabatan").bind("change paste keyup", function () {
            var input = $("#jabatan").val();
            $("#hidden_jabatan").val(input);
        });
    }

    function setValueCabang() {
        $("#cabang").bind("change paste keyup", function () {
            var input = $("#cabang").val();
            $("#hidden_cabang").val(input);
        });
    }

    function setValueDivisi() {
        $("#divisi").bind("change paste keyup", function () {
            var input = $("#divisi").val();
            $("#hidden_divisi").val(input);
        });
    }

    function setValueDepartement() {
        $("#departement").bind("change paste keyup", function () {
            var input = $("#departement").val();
            $("#hidden_departement").val(input);
        });
    }
</script>
</body>
</html>
