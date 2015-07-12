<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
</head>
<body class="skin-black sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <a href="<?php echo base_url('welcome/home')?>" target="iframe_app" class="logo">
            <span class="logo-mini"><b>SMS</b></span>
            <span class="logo-lg"><b>SMS</b> Finance</span>
        </a>

        <nav class="navbar navbar-static-top" role="navigation">
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<?php echo base_url('asset/dist/img/avatar_2x.png') ?>" class="user-image"
                                 alt="User Image"/>
                            <span class="hidden-xs"><?php echo $full_name; ?></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="user-header">
                                <img src="<?php echo base_url('asset/dist/img/avatar_2x.png') ?>" class="img-circle"
                                     alt="User Image"/>

                                <p><?php echo $full_name; ?> - <?php echo $cabang; ?>
                                    <small><?php echo $divisi; ?></small>
                                </p>
                            </li>
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat" disabled="disabled">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="<?php echo base_url('welcome/logout')?>" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <aside class="main-sidebar">
        <section class="sidebar">
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="<?php echo base_url('asset/dist/img/avatar_2x.png') ?>" class="img-circle"
                         alt="User Image"/>
                </div>
                <div class="pull-left info">
                    <p><?php echo $full_name; ?></p>
                    <a href="#"><i class="fa fa-circle text-success"></i> <?php echo $cabang; ?></a>
                </div>
            </div>

            <ul class="sidebar-menu">
                <li class="header">MAIN NAVIGATION</li>
                <li>
                    <a href="<?php echo base_url('welcome/home')?>" target="iframe_app">
                        <i class="fa fa-calendar"></i> <span>Dashboard</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-users"></i>
                        <span>User Management</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<?php echo base_url('admin/users/tambah_user')?>" target="iframe_app"><i class="fa fa-circle-o"></i> Tambah User</a></li>
                        <li><a href="<?php echo base_url('admin/users/cari_user')?>" target="iframe_app"><i class="fa fa-circle-o"></i> Daftar User</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-bars"></i>
                        <span>Menu Management</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i> Tambah Menu</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> User Menu</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Daftar Menu</a></li>
                    </ul>
                </li>
            </ul>
        </section>
    </aside>