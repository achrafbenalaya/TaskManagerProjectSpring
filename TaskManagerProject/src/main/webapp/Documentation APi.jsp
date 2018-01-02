<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TaskIdo | API</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="resources/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="resources/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="resources/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="resources/dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

        <header class="main-header">
            <!-- Logo -->
            <a href="#" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>T</b>DO</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>Task</b>IDo</span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>

                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope-o"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Support Team
                                                    <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="resources/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    AdminLTE Design Team
                                                    <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="resources/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Developers
                                                    <small><i class="fa fa-clock-o"></i> Today</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="resources/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Sales Department
                                                    <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="resources/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Reviewers
                                                    <small><i class="fa fa-clock-o"></i> 2 days</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
                        <!-- Notifications: style can be found in dropdown.less -->
                        <li class="dropdown notifications-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell-o"></i>
                                <span class="label label-warning">10</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 10 notifications</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-users text-red"></i> 5 new members joined
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-user text-red"></i> You changed your username
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">View all</a></li>
                            </ul>
                        </li>
                        <!-- Tasks: style can be found in dropdown.less -->
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-flag-o"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 9 tasks</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Design some buttons
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">20% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <!-- end task item -->
                                        <li>
                                            <!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Create a nice theme
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">40% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <!-- end task item -->
                                        <li>
                                            <!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Some task I need to do
                                                    <small class="pull-right">60%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">60% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <!-- end task item -->
                                        <li>
                                            <!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Make beautiful transitions
                                                    <small class="pull-right">80%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">80% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">View all tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="resources/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                                <span class="hidden-xs">Alexander Pierce</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                    <p>
                                        Alexander Pierce - Web Developer
                                        <small>Member since Nov. 2012</small>
                                    </p>
                                </li>
                                <!-- Menu Body -->
                                <li class="user-body">
                                    <div class="row">
                                        <div class="col-xs-4 text-center">
                                            <a href="#">Followers</a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#">Sales</a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#">Friends</a>
                                        </div>
                                    </div>
                                    <!-- /.row -->
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <!-- Control Sidebar Toggle Button -->
                        <!-- <li>
                            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                        </li> -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="/TaskManager/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>user.name</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
                <!-- search form -->
                <form action="#" method="get" class="sidebar-form">
                    <div class="input-group">
                        <input type="text" name="q" class="form-control" placeholder="Search..."> <span class="input-group-btn">
					<button type="submit" name="search" id="search-btn"
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
                    </div>
                </form>
                <!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu" data-widget="tree">
                    <li class="header">MAIN NAVIGATION</li>
                    <li>
                        <a href="#"> <i class="fa fa-calendar"></i>
                            <span>Calendar</span> <span class="pull-right-container"> <small
						class="label pull-right bg-red">3</small> <small
						class="label pull-right bg-blue">17</small>
				</span>
                        </a>
                    </li>

                    <li class="treeview">
                        <a href="#"> <i class="fa fa-folder"></i>
                            <span>TaskIdo</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>

                        </a>
                        <ul class="treeview-menu">
                            <li><a href="TaskIdo.jsp"><i class="fa fa-circle-o"></i>
							Home</a></li>
                            <li><a href="./admin/team/list"><i class="fa fa-circle-o"></i>
							My Teams</a></li>
                            <li><a href="./admin/task/list"><i class="fa fa-circle-o"></i>
							My Tasks</a></li>
                            <li><a href="./admin/organisation/list"><i
							class="fa fa-circle-o"></i> My Organisations</a></li>
                            <li><a href="./admin/project/list"><i class="fa fa-circle-o"></i>My
							Projects</a></li>

							<li><a href="./admin/user/list"><i class="fa fa-circle-o"></i>My
							Users</a></li>

                            <li><a href="./admin/project/list"><i class="fa fa-circle-o"></i>
							Progress</a></li>
                            <li><a href="./admin/project/list"><i class="fa fa-circle-o"></i>
							Notifications</a></li>
                            <li><a href="admin/project/list"><i class="fa fa-circle-o"></i>
							Contact</a></li>
                        </ul>

                    </li>

                    <li><a href="#"><i class="fa fa-microchip"></i> <span>All
						Notifications</span></a></li>
                    <li><a href="lockscreen.jsp"><i
					class="fa fa-code"></i> <span>Lock session</span></a></li>
                    <li><a href="Documentation APi.jsp"><i
					class="fa fa-book"></i> <span>Documentation</span></a></li>

                    <li class="header">Notification</li>
                    <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span>
					<b>10</b></a></li>
                    <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span>
					<b>73</b></a></li>
                    <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span>
					<b>12</b></a></li>
                </ul>

            </section>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    API
                    <small>#TaskIDO</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li><a href="#">TaskIDO</a></li>
                    <li class="active">API</li>
                </ol>
            </section>

            <!-- <div class="pad margin no-print">
                <div class="callout callout-info" style="margin-bottom: 0!important;">
                    <h4><i class="fa fa-info"></i> Note:</h4>
                    This page has been enhanced for printing. Click the print button at the bottom of the invoice to test.
                </div>
            </div> -->

            <!-- Main content -->
            <section class="invoice">
                <!-- title row -->
                <div class="row">
                    <div class="col-xs-12">
                        <h2 class="page-header">
                            <i class="fa fa-globe"></i> TASKIDO API

                            <small class="pull-right">Date: 31/12/2017</small>
                        </h2>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- info row -->

                <!-- /.row -->

                <!-- Table row -->
                <div class="row">
                    <div class="col-xs-12 table-responsive">
                        <table class="table table-bordered table-hover dataTable">
                            <thead>
                                <tr>
                                    <th>API N</th>
                                    <th>API</th>
                                    <th>Methode</th>
                                    <th>LInk</th>
                                    <th>Test</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>User</td>
                                    <td>get All</td>
                                    <td>TaskManager/api/user/all</td>
                                    <td><a href="http://localhost:8080/TaskManager/api/user/all" type="button" class="btn btn-block btn-primary btn-sm">GET</a></td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td>User</td>
                                    <td>get</td>
                                    <td>TaskManager/api/user/get/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/user/get/{id}" type="button" class="btn btn-block btn-info btn-sm">GET</a></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>User</td>
                                    <td>Delete</td>
                                    <td>TaskManager/api/user/delete/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/user/delete/{id}" type="button" class="btn btn-block btn-danger btn-sm">DELETE</a></td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td>User</td>
                                    <td>Put</td>
                                    <td>TaskManager/api/user/edit/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/user/edit/{id}" type="button" class="btn btn-block btn-warning btn-sm">PUT</a></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>User</td>
                                    <td>Post</td>
                                    <td>TaskManager/api/user/add</td>
                                    <td><a href="http://localhost:8080/TaskManager/api/user/add" type="button" class="btn btn-block btn-success btn-sm">PUT</a></td>
                                </tr>



                                <tr>
                                    <td>2</td>
                                    <td>organisation</td>
                                    <td>get All</td>
                                    <td>TaskManager/api/organisation/all</td>
                                    <td><a href="http://localhost:8080/TaskManager/api/organisation/all" type="button" class="btn btn-block btn-primary btn-sm">GET</a></td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>organisation</td>
                                    <td>get</td>
                                    <td>TaskManager/api/organisation/get/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/organisation/get/{id}" type="button" class="btn btn-block btn-info btn-sm">GET</a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>organisation</td>
                                    <td>Delete</td>
                                    <td>TaskManager/api/organisation/delete/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/organisation/delete/{id}" type="button" class="btn btn-block btn-danger btn-sm">DELETE</a></td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>organisation</td>
                                    <td>Put</td>
                                    <td>TaskManager/api/organisation/edit/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/organisation/edit/{id}" type="button" class="btn btn-block btn-warning btn-sm">PUT</a></td>
                                </tr>


                                <tr>
                                    <td>2</td>
                                    <td>organisation</td>
                                    <td>Post</td>
                                    <td>TaskManager/api/organisation/add</td>
                                    <td><a href="http://localhost:8080/TaskManager/api/organisation/add" type="button" class="btn btn-block btn-success btn-sm">PUT</a></td>
                                </tr>


                                <tr>
                                    <td>3</td>
                                    <td>project</td>
                                    <td>get All</td>
                                    <td>TaskManager/api/project/all</td>
                                    <td><a href="http://localhost:8080/TaskManager/api/project/all" type="button" class="btn btn-block btn-primary btn-sm">GET</a></td>
                                </tr>

                                <tr>
                                    <td>3</td>
                                    <td>project</td>
                                    <td>get</td>
                                    <td>TaskManager/api/project/get/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/project/get/{id}" type="button" class="btn btn-block btn-info btn-sm">GET</a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>project</td>
                                    <td>Delete</td>
                                    <td>TaskManager/api/project/delete/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/project/delete/{id}" type="button" class="btn btn-block btn-danger btn-sm">DELETE</a></td>
                                </tr>

                                <tr>
                                    <td>3</td>
                                    <td>project</td>
                                    <td>Put</td>
                                    <td>TaskManager/api/project/edit/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/project/edit/{id}" type="button" class="btn btn-block btn-warning btn-sm">PUT</a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>project</td>
                                    <td>Post</td>
                                    <td>TaskManager/api/project/add</td>
                                    <td><a href="http://localhost:8080/TaskManager/api/project/add" type="button" class="btn btn-block btn-success btn-sm">PUT</a></td>


                                </tr>




                                <tr>
                                    <td>4</td>
                                    <td>state</td>
                                    <td>get All</td>
                                    <td>TaskManager/api/state/all</td>
                                    <td><a href="http://localhost:8080/TaskManager/api/state/all" type="button" class="btn btn-block btn-primary btn-sm">GET</a></td>
                                </tr>

                                <tr>
                                    <td>4</td>
                                    <td>state</td>
                                    <td>get</td>
                                    <td>TaskManager/api/state/get/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/state/get/{id}" type="button" class="btn btn-block btn-info btn-sm">GET</a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>state</td>
                                    <td>Delete</td>
                                    <td>TaskManager/api/state/delete/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/state/delete/{id}" type="button" class="btn btn-block btn-danger btn-sm">DELETE</a></td>
                                </tr>

                                <tr>
                                    <td>4</td>
                                    <td>state</td>
                                    <td>Put</td>
                                    <td>TaskManager/api/state/edit/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/state/edit/{id}" type="button" class="btn btn-block btn-warning btn-sm">PUT</a></td>
                                </tr>

                                <tr>
                                    <td>4</td>
                                    <td>state</td>
                                    <td>Post</td>
                                    <td>TaskManager/api/state/add</td>
                                    <td><a href="http://localhost:8080/TaskManager/api/state/add" type="button" class="btn btn-block btn-success btn-sm">PUT</a></td>
                                </tr>




                                <tr>
                                    <td>5</td>
                                    <td>Task</td>
                                    <td>get All</td>
                                    <td>TaskManager/api/task/all</td>
                                    <td><a href="http://localhost:8080/TaskManager/api/task/all" type="button" class="btn btn-block btn-primary btn-sm">GET</a></td>
                                </tr>

                                <tr>
                                    <td>5</td>
                                    <td>Task</td>
                                    <td>get</td>
                                    <td>TaskManager/api/task/get/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/task/get/{id}" type="button" class="btn btn-block btn-info btn-sm">GET</a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Task</td>
                                    <td>Delete</td>
                                    <td>TaskManager/api/task/delete/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/task/delete/{id}" type="button" class="btn btn-block btn-danger btn-sm">DELETE</a></td>
                                </tr>

                                <tr>
                                    <td>5</td>
                                    <td>Task</td>
                                    <td>Put</td>
                                    <td>TaskManager/api/task/edit/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/task/edit/{id}" type="button" class="btn btn-block btn-warning btn-sm">PUT</a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Task</td>
                                    <td>Post</td>
                                    <td>TaskManager/api/task/add</td>
                                    <td><a href="http://localhost:8080/TaskManager/api/task/add" type="button" class="btn btn-block btn-success btn-sm">PUT</a></td>
                                </tr>


                                <tr>
                                    <td>6</td>
                                    <td>team</td>
                                    <td>get All</td>
                                    <td>TaskManager/api/team/all</td>
                                    <td><a href="http://localhost:8080/TaskManager/api/team/all" type="button" class="btn btn-block btn-primary btn-sm">GET</a></td>
                                </tr>

                                <tr>
                                    <td>6</td>
                                    <td>team</td>
                                    <td>get</td>
                                    <td>TaskManager/api/team/get/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/team/get/{id}" type="button" class="btn btn-block btn-info btn-sm">GET</a></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>teamk</td>
                                    <td>Delete</td>
                                    <td>TaskManager/api/team/delete/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/team/delete/{id}" type="button" class="btn btn-block btn-danger btn-sm">DELETE</a></td>
                                </tr>

                                <tr>
                                    <td>6</td>
                                    <td>team</td>
                                    <td>Put</td>
                                    <td>TaskManager/api/team/edit/<b>{id}</b></td>
                                    <td><a href="http://localhost:8080/TaskManager/api/team/all" type="button" class="btn btn-block btn-warning btn-sm">PUT</a></td>
                                </tr>

                                <tr>
                                    <td>6</td>
                                    <td>team</td>
                                    <td>Post</td>
                                    <td>TaskManager/api/team/add</td>
                                    <td><a href="http://localhost:8080/TaskManager/api/team/add" type="button" class="btn btn-block btn-success btn-sm">PUT</a></td>
                                </tr>




                            </tbody>
                        </table>
                        <p class="text-yellow"><b>Note Method : POST,PUT et DELETE must be tested with Postman</b></p>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->


                <!-- /.row -->

                <!-- this row will not appear when printing -->
                <div class="row no-print">
                    <div class="col-xs-12">
                        <a href="invoice-print.jsp" target="_blank" class="btn btn-success"><i class="fa fa-print"></i> Print</a>
                        <!-- <button type="button" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Submit Payment
          </button> -->
                        <!-- <button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">
            <i class="fa fa-download"></i> Generate PDF
          </button> -->
                    </div>
                </div>
            </section>
            <!-- /.content -->
            <div class="clearfix"></div>
        </div>
        <!-- /.content-wrapper -->
        <footer class="main-footer no-print">
            <div class="pull-right hidden-xs">
                <b>Version</b> 1.0
            </div>
            <strong>Copyright &copy; 2017-2018 <a href="https://adminlte.io">TaskIDO</a>.</strong> All rights reserved.
        </footer>

        <!-- Control Sidebar -->

        <!-- /.control-sidebar -->
        <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>
    </div>
    <!-- ./wrapper -->

    <!-- jQuery 3 -->
    <script src="resources/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="resources/bower_components/fastclick/lib/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="resources/dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="resources/dist/js/demo.js"></script>
</body>

</html>