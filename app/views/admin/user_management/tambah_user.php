<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$nip = $data_user['NIP'];
$nama = $data_user['NAMA'];
$email = $data_user['EMAIL'];
$jabatan = $data_user['JABATAN'];
$cabang = $data_user['CABANG'];
$departement = $data_user['DEPARTEMENT'];
$divisi = $data_user['DIVISI'];
$select_type_user = $data_user['TYPE'];
$disable_input = '';
$disable_select_type = 'disabled="disabled"';
if($select_type_user === 'KRY'){
    $disable_input = 'disabled="disabled"';
    $disable_select_type = '';
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
            <?php if ($status == 'Failed'){ ?>
                <row>
                    <div class="alert alert-danger" role="alert"><?php echo $pesan ?></div>
                </row>
            <?php }elseif($status == 'Success'){ ?>
                <row>
                    <div class="alert alert-info" role="alert"><?php echo $pesan ?></div>
                </row>
            <?php } ?>
            <row>
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form class="form-horizontal" method="post">
                        <div class="form-group">
                            <label for="type" class="col-sm-3 control-label">Type User</label>

                            <div class="col-sm-9">
                                <select name="type" class="form-control" id="select_type">
                                    <option value="0">Pilih Type User</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="view_nomor_induk" class="col-sm-3 control-label">Nomor Induk</label>

                            <div class="col-sm-7">
                                <input type="text" class="form-control" id="view_nomor_induk" name="view_nomor_induk"
                                       value="<?php echo $nip; ?>" <?php echo $disable_select_type ?>>
                                <input type="hidden" class="form-control" id="nomor_induk" name="nomor_induk"
                                       value="<?php echo $nip; ?>">
                                <input type="hidden" id="action_load_user" name="action" value="load_user">
                            </div>
                            <button type="button" class="btn btn-primary"
                                    style="text-align: center; padding-left: 1em; padding-right: 1em; margin-left: 1em;"
                                    id="cari_user" <?php echo $disable_select_type ?>>View
                            </button>
                        </div>
                    </form>

                    <form class="form-horizontal" method="post">
                        <div class="form-group">
                            <div class="col-sm-9">
                                <input type="hidden" class="form-control" id="nomor_induk2" name="nomor_induk"
                                       value="<?php echo $nip; ?>">
                                <input type="hidden" class="form-control" id="type2" name="type_user"
                                       value="<?php echo $select_type_user; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nama" class="col-sm-3 control-label">Nama</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="nama" placeholder="Input nama user disini"
                                       value="<?php echo $nama; ?>" <?php echo $disable_input ?>>
                                <input type="hidden" class="form-control" id="hidden_nama" name="nama"
                                       value="<?php echo $nama; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-3 control-label">Alamat Email</label>

                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="email" name="email"
                                       placeholder="Input email user disini" required="required"
                                       value="<?php echo $email; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="jabatan" class="col-sm-3 control-label">Jabatan</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="jabatan"
                                       placeholder="Input jabatan user disini" value="<?php echo $jabatan; ?>" <?php echo $disable_input ?>>
                                <input type="hidden" class="form-control" id="hidden_jabatan" name="jabatan"
                                       value="<?php echo $jabatan; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="cabang" class="col-sm-3 control-label">Cabang</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="cabang"
                                       placeholder="Input cabang user disini" value="<?php echo $cabang; ?>" <?php echo $disable_input ?>>
                                <input type="hidden" class="form-control" id="hidden_cabang" name="cabang"
                                       value="<?php echo $cabang; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="departement" class="col-sm-3 control-label">Departement</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="departement"
                                       placeholder="Input departement user disini" value="<?php echo $departement; ?>" <?php echo $disable_input ?>>
                                <input type="hidden" class="form-control" id="hidden_departement" name="departement"
                                       value="<?php echo $departement; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="divisi" class="col-sm-3 control-label">Divisi</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="divisi"
                                       placeholder="Input divisi user disini" value="<?php echo $divisi; ?>" <?php echo $disable_input ?>>
                                <input type="hidden" class="form-control" id="hidden_divisi" name="divisi"
                                       value="<?php echo $divisi; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-3 control-label">Password</label>

                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="password" name="password" value="1111"
                                       required="required">
                                <input type="hidden" name="action" value="simpan">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <a href="<?php echo base_url('admin/users/tambah_user') ?>" class="btn btn-danger">Cancel</a>
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
            setTypeUser();
            setValueNomorInduk();
            setValueNama();
            setValueCabang();
            setValueDivisi();
            setValueJabatan();
            setValueDepartement();
            setDisableInput();
            setValueInput();
            $('#<?php echo $select_type_user; ?>').attr('selected', true);
        }
    );

    function setTypeUser() {
        var type = <?php echo $type_user ?>;

        for ($i = 0; $i < type.length; $i++) {
            $('#select_type').append($('<option>').text(type[$i].Description).attr('value', type[$i].ID).attr('id', type[$i].ID));
        }
    }

    function setValueNomorInduk() {
        $("#view_nomor_induk").bind("change paste keyup", function () {
            var input = $("#view_nomor_induk").val();
            $("#nomor_induk").val(input);
            $("#nomor_induk2").val(input);
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

    function setDisableInput() {
        $("#select_type").bind("change click", function () {
            var key_select = $("#select_type").val();
            if (key_select == "KRY") {
                $('#type2').val(key_select);
                $("#nama").prop('disabled', true);
                $("#jabatan").prop('disabled', true);
                $("#cabang").prop('disabled', true);
                $("#departement").prop('disabled', true);
                $("#divisi").prop('disabled', true);
                $("#cari_user").prop('disabled', false);
                $("#view_nomor_induk").prop('disabled', false);
            } else {
                $('#type2').val(key_select);
                $("#nama").prop('disabled', false).val('');
                $("#email").prop('disabled', false).val('');
                $("#jabatan").prop('disabled', false).val('');
                $("#cabang").prop('disabled', false).val('');
                $("#departement").prop('disabled', false).val('');
                $("#divisi").prop('disabled', false).val('');
                $("#cari_user").prop('disabled', true);
                $("#view_nomor_induk").prop('disabled', true);

                $("#hidden_nama").val('');
                $("#hidden_jabatan").val('');
                $("#hidden_cabang").val('');
                $("#hidden_departement").val('');
                $("#hidden_divisi").val('');
            }
        });
    }

    function setValueInput() {
        $("#cari_user").click(function () {
            var type = $("#select_type").val();
            if (type === "KRY") {
                $.post("<?php echo base_url('admin/users/get_employee')?>",
                    {
                        type: $("#select_type").val(),
                        action: $("#action_load_user").val(),
                        nomor_induk: $("#view_nomor_induk").val()
                    },
                    function (data, status) {
                        $("#nomor_induk").val(data[0].NIP);
                        $("#nama").val(data[0].NAMA);
                        $("#jabatan").val(data[0].JABATAN);
                        $("#cabang").val(data[0].CABANG);
                        $("#departement").val(data[0].DEPARTEMENT);
                        $("#divisi").val(data[0].DIVISI);

                        $("#nomor_induk2").val(data[0].NIP);
                        $("#hidden_nama").val(data[0].NAMA);
                        $("#hidden_jabatan").val(data[0].JABATAN);
                        $("#hidden_cabang").val(data[0].CABANG);
                        $("#hidden_departement").val(data[0].DEPARTEMENT);
                        $("#hidden_divisi").val(data[0].DIVISI);
                    });
            }
        });
    }
</script>
</body>
</html>
