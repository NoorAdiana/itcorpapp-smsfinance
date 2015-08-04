<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
</head>
<body class="skin-black sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <a href="<?php echo base_url('welcome/home') ?>" target="iframe_app" class="logo">
            <span class="logo-mini"><b>SMS</b></span>
            <span class="logo-lg"><b>SMS</b> Finance</span>
        </a>

        <nav class="navbar navbar-static-top" role="navigation">
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <?php if($app_access[0]['DailyJobs'] == '1'): ?>
                        <li>
                            <a href="<?php echo base_url('welcome?app=') . strtolower($header_menu[0]['ID']); ?>">
                                        <span class="hidden-xs">
                                            <?php echo $header_menu[0]['Description'] ?>
                                        </span>
                            </a>
                        </li>
                    <?php endif ?>
                    <?php if($app_access[0]['Monitoring'] == '1'): ?>
                        <li>
                            <a href="<?php echo base_url('welcome?app=') . strtolower($header_menu[1]['ID']); ?>">
                                        <span class="hidden-xs">
                                            <?php echo $header_menu[1]['Description'] ?>
                                        </span>
                            </a>
                        </li>
                    <?php endif ?>
                    <?php if($app_access[0]['Ticket'] == '1'): ?>
                        <li>
                            <a href="<?php echo base_url('welcome?app=') . strtolower($header_menu[2]['ID']); ?>">
                                        <span class="hidden-xs">
                                            <?php echo $header_menu[2]['Description'] ?>
                                        </span>
                            </a>
                        </li>
                    <?php endif ?>
                    <?php if($app_access[0]['Tasklog'] == '1'): ?>
                        <li>
                            <a href="<?php echo base_url('welcome?app=') . strtolower($header_menu[3]['ID']); ?>">
                                        <span class="hidden-xs">
                                            <?php echo $header_menu[3]['Description'] ?>
                                        </span>
                            </a>
                        </li>
                    <?php endif ?>
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<?php echo base_url('asset/dist/img/avatar_2x.png') ?>" class="user-image"
                                 alt="User Image"/>
                            <strong class="hidden-xs"><?php echo $full_name; ?></strong>
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
                    <a href="<?php echo base_url('welcome/home') ?>" target="iframe_app">
                        <i class="fa fa-bars"></i> <span>Dashboard</span>
                    </a>
                </li>

                <?php for ($i = 0; $i < sizeof($menu); $i++): ?>
                    <?php $child_menu = $menu[$i]['ChildMenu']; ?>
                    <?php if ($menu[$i]['ChildMenu'] == '0') { ?>
                        <li>
                            <a href="<?php echo $menu[$i]['MenuUrl'] ?>" target="iframe_app">
                                <i class="fa fa-bars"></i> <span><?php echo $menu[$i]['MenuName'] ?></span>
                            </a>
                        </li>
                    <?php } else { ?>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-bars"></i>
                                <span><?php echo $menu[$i]['MenuName'] ?></span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <?php for($j = 0; $j < sizeof($child_menu); $j++):?>
                                        <a href="#"><i class="fa fa-circle-o"></i>
                                            <?php echo $child_menu[$j]['MenuName'] ?>
                                        </a>
                                    <?php endfor; ?>
                                </li>
                            </ul>
                        </li>
                    <?php } ?>
                <?php endfor; ?>
            </ul>
        </section>
    </aside>