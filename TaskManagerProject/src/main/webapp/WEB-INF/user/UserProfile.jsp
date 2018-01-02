<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page
	import="org.springframework.security.core.context.SecurityContextHolder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	String name = auth.getName(); // get logged in username
%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>TaskIDO</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="/TaskManager/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/TaskManager/resources/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="/TaskManager/resources/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="/TaskManager/resources//dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="/TaskManager/resources/dist/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="/TaskManager/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/TaskManager/resources/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="/TaskManager/resources/bower_components/Ionicons/css/ionicons.min.css">
<!-- daterange picker -->
<link rel="stylesheet"
	href="/TaskManager/resources/bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap datepicker -->
<link rel="stylesheet"
	href="/TaskManager/resources/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet"
	href="/TaskManager/resources/plugins/iCheck/all.css">
<!-- Bootstrap Color Picker -->
<link rel="stylesheet"
	href="/TaskManager/resources/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
<!-- Bootstrap time Picker -->
<link rel="stylesheet"
	href="/TaskManager/resources/plugins/timepicker/bootstrap-timepicker.min.css">
<!-- Select2 -->
<link rel="stylesheet"
	href="/TaskManager/resources/bower_components/select2/dist/css/select2.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="/TaskManager/resources/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="/TaskManager/resources/dist/css/skins/_all-skins.min.css">


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header"> <!-- Logo --> <a
			href="#" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>T</b>DO</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Task</b>Ido</span>
		</a> <!-- Header Navbar: style can be found in header.less --> <nav
			class="navbar navbar-static-top"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="push-menu"
			role="button"> <span class="sr-only">Toggle navigation</span> <span
			class="icon-bar"></span> <span class="icon-bar"></span> <span
			class="icon-bar"></span>
		</a>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Messages: style can be found in dropdown.less-->
				<li class="dropdown messages-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-envelope-o"></i> <span class="label label-success">4</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 4 messages</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<!-- start message --> <a href="#">
										<div class="pull-left">
											<img src="/TaskManager/resourcesdist/img/user2-160x160.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											Support Team <small><i class="fa fa-clock-o"></i> 5
												mins</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a>
								</li>
								<!-- end message -->
								<li><a href="#">
										<div class="pull-left">
											<img src="/TaskManager/resourcesdist/img/user3-128x128.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											AdminLTE Design Team <small><i class="fa fa-clock-o"></i>
												2 hours</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<img src="/TaskManager/resourcesdist/img/user4-128x128.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											Developers <small><i class="fa fa-clock-o"></i> Today</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<img src="/TaskManager/resourcesdist/img/user3-128x128.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											Sales Department <small><i class="fa fa-clock-o"></i>
												Yesterday</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<img src="/TaskManager/resourcesdist/img/user4-128x128.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											Reviewers <small><i class="fa fa-clock-o"></i> 2 days</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
							</ul>
						</li>
						<li class="footer"><a href="#">See All Messages</a></li>
					</ul></li>
				<!-- Notifications: style can be found in dropdown.less -->
				<li class="dropdown notifications-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-bell-o"></i> <span class="label label-warning">10</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 10 notifications</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li><a href="#"> <i class="fa fa-users text-aqua"></i>
										5 new members joined today
								</a></li>
								<li><a href="#"> <i class="fa fa-warning text-yellow"></i>
										Very long description here that may not fit into the page and
										may cause design problems
								</a></li>
								<li><a href="#"> <i class="fa fa-users text-red"></i> 5
										new members joined
								</a></li>
								<li><a href="#"> <i
										class="fa fa-shopping-cart text-green"></i> 25 sales made
								</a></li>
								<li><a href="#"> <i class="fa fa-user text-red"></i>
										You changed your username
								</a></li>
							</ul>
						</li>
						<li class="footer"><a href="#">View all</a></li>
					</ul></li>
				<!-- Tasks: style can be found in dropdown.less -->
				<li class="dropdown tasks-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-flag-o"></i> <span class="label label-danger">9</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 9 tasks</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Design some buttons <small class="pull-right">20%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-aqua"
												style="width: 20%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">20% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Create a nice theme <small class="pull-right">40%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-green"
												style="width: 40%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">40% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Some task I need to do <small class="pull-right">60%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-red" style="width: 60%"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Make beautiful transitions <small class="pull-right">80%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-yellow"
												style="width: 80%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">80% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
							</ul>
						</li>
						<li class="footer"><a href="#">View all tasks</a></li>
					</ul></li>
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="/TaskManager/resources/dist/img/user2-160x160.jpg"
						class="user-image" alt="User Image"> <span class="hidden-xs">USER</span>
				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img
							src="/TaskManager/resources/dist/img/user2-160x160.jpg"
							class="img-circle" alt="User Image">

							<p>
								<%
									out.print(name);
								%>
								<small>Member since @Date</small>
							</p></li>
						<!-- Menu Body -->
						<li class="user-body">
							<div class="row">
								<!-- 								<div class="col-xs-4 text-center"> -->
								<!-- 									<a href="#">Followers</a> -->
								<!-- 								</div> -->
								<!-- 								<div class="col-xs-4 text-center"> -->
								<!-- 									<a href="#">Sales</a> -->
								<!-- 								</div> -->
								<!-- 								<div class="col-xs-4 text-center"> -->
								<!-- 									<a href="#">Friends</a> -->
								<!-- 								</div> -->
							</div> <!-- /.row -->
						</li>
						<!-- Menu Footer-->
						<li class="user-footer">
							<form action="../user/showProfile">
								<div class="pull-left">
									<button type="submit" class="btn btn-default btn-flat">Profile</button>
									<!-- <a href="" class="btn btn-default btn-flat"></a> -->
								</div>
							</form>
							<form action="/TaskManager/spring_security_logout">
								<div class="pull-right">
									<button type="submit" class="btn btn-default btn-flat">Sign
										out</button>
								</div>
							</form>
						</li>
					</ul></li>
				<!-- Control Sidebar Toggle Button -->
				<!-- <li>
                            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                        </li> -->
			</ul>
		</div>
		</nav> </header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="/TaskManager/resources/dist/img/user2-160x160.jpg"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>
					<%
						out.print(name);
					%>
				</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control"
					placeholder="Search..."> <span class="input-group-btn">
					<button type="submit" name="search" id="search-btn"
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form --> <!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">MAIN NAVIGATION</li>
			<li><a href="#"> <i class="fa fa-calendar"></i> <span>Calendar</span>
					<span class="pull-right-container"> <small
						class="label pull-right bg-red">3</small> <small
						class="label pull-right bg-blue">17</small>
				</span>
			</a></li>

			<li class="treeview"><a href="#"> <i class="fa fa-folder"></i>
					<span>TaskIdo</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>

			</a>
				<ul class="treeview-menu">
					<li><a href="../../TaskIdo.jsp"><i class="fa fa-circle-o"></i>
							Home</a></li>
					<li><a href="../../admin/team/list"><i
							class="fa fa-circle-o"></i> My Teams</a></li>
					<li><a href="../../admin/task/list"><i
							class="fa fa-circle-o"></i> My Tasks</a></li>
					<li><a href="../../admin/organisation/list"><i
							class="fa fa-circle-o"></i> My Organisations</a></li>
					<li><a href="../../admin/project/list"><i
							class="fa fa-circle-o"></i>My Projects</a></li>
					<li><a href="../../admin/state/list"><i
							class="fa fa-circle-o"></i>My States</a></li>
					<li><a href="../../admin/user/list"><i
							class="fa fa-circle-o"></i>My Users</a></li>
					<li><a href="#"><i class="fa fa-circle-o"></i> Progress</a></li>
					<li><a href="#"><i class="fa fa-circle-o"></i>
							Notifications</a></li>

					<li><a href="../../ContactUs.jsp"><i
							class="fa fa-circle-o"></i> Contact</a></li>
				</ul></li>

			<li><a href="#"><i class="fa fa-microchip"></i> <span>All
						Notifications</span></a></li>
			<li><a href="../../lockscreen.jsp"><i class="fa fa-code"></i>
					<span>Lock session</span></a></li>
			<li><a href="../../Documentation APi.jsp"><i
					class="fa fa-book"></i> <span>Documentation</span></a></li>

			<li class="header">Notification</li>
			<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span>
					<b>10</b></a></li>
			<li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span>
					<b>73</b></a></li>
			<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span>
					<b>12</b></a></li>
		</ul>

		</section> <!-- /.sidebar --> </aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>User Profile</h1>
			<ol class="breadcrumb">
				<li><a href="/TaskManager/TaskIdo.jsp"><i
						class="fa fa-dashboard"></i> Home</a></li>
				<li><a href="#">Examples</a></li>
				<li class="active">User profile</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content">

			<div class="row">

				<!-- /.col -->
				<div class="col-md-9">
					<div class="nav-tabs-custom">
						<ul class="nav nav-tabs">
							<!-- <li class="active"><a href="#activity" data-toggle="tab">Activity</a></li>
                                <li><a href="#timeline" data-toggle="tab">Timeline</a></li> -->
							<li><a href="#settings" data-toggle="tab">Settings</a></li>
						</ul>
						<div class="tab-content">

							<!-- Post -->

							<!-- END timeline item -->
							<!-- timeline item -->
							<!-- <li>
                                        <i class="fa fa-user bg-aqua"></i>

                                        <div class="timeline-item">
                                            <span class="time"><i class="fa fa-clock-o"></i> 5 mins ago</span>

                                            <h3 class="timeline-header no-border"><a href="#">Sarah Young</a> accepted your friend request
                                            </h3>
                                        </div>
                                    </li> -->
							<!-- END timeline item -->
							<!-- timeline item -->
							<!-- <li>
                                        <i class="fa fa-comments bg-yellow"></i>

                                        <div class="timeline-item">
                                            <span class="time"><i class="fa fa-clock-o"></i> 27 mins ago</span>

                                            <h3 class="timeline-header"><a href="#">Jay White</a> commented on your post</h3>

                                            <div class="timeline-body">
                                                Take me to your leader! Switzerland is small and neutral! We are more like Germany, ambitious and misunderstood!
                                            </div>
                                            <div class="timeline-footer">
                                                <a class="btn btn-warning btn-flat btn-xs">View comment</a>
                                            </div>
                                        </div>
                                    </li> -->
							<!-- END timeline item -->
							<!-- timeline time label -->
							<!-- <li class="time-label">
                                        <span class="bg-green">
                          3 Jan. 2014
                        </span>
                                    </li> -->
							<!-- /.timeline-label -->
							<!-- timeline item -->
							<!-- <li>
                                            <i class="fa fa-camera bg-purple"></i>

                                            <div class="timeline-item">
                                                <span class="time"><i class="fa fa-clock-o"></i> 2 days ago</span>

                                                <h3 class="timeline-header"><a href="#">Mina Lee</a> uploaded new photos</h3>

                                                <div class="timeline-body">
                                                    <img src="http://placehold.it/150x100" alt="..." class="margin">
                                                    <img src="http://placehold.it/150x100" alt="..." class="margin">
                                                    <img src="http://placehold.it/150x100" alt="..." class="margin">
                                                    <img src="http://placehold.it/150x100" alt="..." class="margin">
                                                </div>
                                            </div>
                                        </li> -->
							<!-- END timeline item -->
							<!-- <li>
                                        <i class="fa fa-clock-o bg-gray"></i>
                                    </li> -->
							</ul>
						</div>
						<!-- /.tab-pane -->

						<div class="tab-pane" id="settings">
							<form class="form-horizontal" action="editProfile" method="post"
								data-toggle="validator">
								<input type="hidden" name="id" required="true"
									value='<c:out value="${UserAuthentified.id }"/>'>
								<div class="form-group">
									<label for="inputName" class="col-sm-2 control-label">Login</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" required="true"
											id="inputName"
											value='<c:out value="${UserAuthentified.login }"/>'
											placeholder=" Name" name="login">
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-2 control-label">Name</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" required="true"
											id="inputName"
											value='<c:out value="${UserAuthentified.firstname }"/>'
											placeholder=" Name" name="firstname">
									</div>
								</div>


								<div class="form-group">
									<label for="inputName" class="col-sm-2 control-label">Last
										Name</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" required="true"
											id="inputName"
											value='<c:out value="${UserAuthentified.lastname }"/>'
											placeholder=" Last Name" name="lastname">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-2 control-label">Email</label>

									<div class="col-sm-10">
										<input type="email" class="form-control" required="true"
											id="inputEmail"
											value='<c:out value="${UserAuthentified.email }"/>'
											placeholder="Email" name="email"> <span
											class="glyphicon glyphicon-envelope form-control-feedback"></span>
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-2 control-label">Password</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" required="true"
											data-minlength="6" id="inputName"
											value='<c:out value="${UserAuthentified.password }"/>'
											placeholder="Password" name="password"><span
											class="glyphicon glyphicon-lock form-control-feedback"></span>
									</div>
								</div>
								<!-- <div class="form-group">
                                        <label for="inputExperience" class="col-sm-2 control-label">Experience</label>

                                        <div class="col-sm-10">
                                            <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
                                        </div>
                                    </div> -->
								<!-- <div class="form-group">
                                        <label for="inputSkills" class="col-sm-2 control-label">Skills</label>

                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="inputSkills" placeholder="Skills">
                                        </div>
                                    </div> -->
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<div class="checkbox">
											<label> <input type="checkbox" required="true"
												data-error="you must agree to the terms"> I agree to
												the <a href="#">terms and conditions</a> <span
												class="glyphicon glyphicon-lock form-control-feedback"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button type="submit" class="btn btn-danger">Submit</button>
									</div>
								</div>
							</form>
						</div>
						<!-- /.tab-pane -->
					</div>
					<!-- /.tab-content -->
				</div>
				<!-- /.nav-tabs-custom -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->

		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer no-print">
	<div class="pull-right hidden-xs">
		<b>Version</b> 1.0
	</div>
	<strong>Copyright &copy; 2017-2018 <a
		href="https://adminlte.io">TaskIDO</a>.
	</strong> All rights reserved. </footer>

	<!-- Control Sidebar -->

	<!-- /.control-sidebar -->
	<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
	<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->
	<!-- jQuery 3 -->
	<script
		src="/TaskManager/resources/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script
		src="/TaskManager/resources/bower_components/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>

	<!-- Bootstrap 3.3.7 -->
	<script
		src="/TaskManager/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Morris.js charts -->
	<script
		src="/TaskManager/resources/bower_components/raphael/raphael.min.js"></script>
	<script
		src="/TaskManager/resources/bower_components/morris.js/morris.min.js"></script>
	<!-- Sparkline -->
	<script
		src="/TaskManager/resources/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script
		src="/TaskManager/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="/TaskManager/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script
		src="/TaskManager/resources/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script
		src="/TaskManager/resources/bower_components/moment/min/moment.min.js"></script>
	<script
		src="/TaskManager/resources/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script
		src="/TaskManager/resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="/TaskManager/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="/TaskManager/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="/TaskManager/resources/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="/TaskManager/resources/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="/TaskManager/resources/dist/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/TaskManager/resources/dist/js/demo.js"></script>
	<!--scriptdate-->
	<!-- date-range-picker -->

	<!-- InputMask -->
	<script
		src="/TaskManager/resources/bower_components/select2/dist/js/select2.full.min.js"></script>
	<script
		src="/TaskManager/resources/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="/TaskManager/resources/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="/TaskManager/resources/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<!-- date-range-picker -->
	<script
		src="/TaskManager/resources/bower_components/moment/min/moment.min.js"></script>
	<script
		src="/TaskManager/resources/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap datepicker -->
	<script
		src="/TaskManager/resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- bootstrap color picker -->
	<script
		src="/TaskManager/resources/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<!-- bootstrap time picker -->
	<script
		src="/TaskManager/resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<!-- SlimScroll -->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>

	<script>
		$(function() {
			//Initialize Select2 Elements
			$('.select2').select2()

			//Datemask dd/mm/yyyy
			$('#datemask').inputmask('dd/mm/yyyy', {
				'placeholder' : 'dd/mm/yyyy'
			})
			//Datemask2 mm/dd/yyyy
			$('#datemask2').inputmask('mm/dd/yyyy', {
				'placeholder' : 'mm/dd/yyyy'
			})
			//Money Euro
			$('[data-mask]').inputmask()

			//Date range picker
			$('#reservation').daterangepicker()
			//Date range picker with time picker
			$('#reservationtime').daterangepicker({
				timePicker : true,
				timePickerIncrement : 30,
				format : 'MM/DD/YYYY h:mm A'
			})
			//Date range as a button
			$('#daterange-btn').daterangepicker(
					{
						ranges : {
							'Today' : [ moment(), moment() ],
							'Yesterday' : [ moment().subtract(1, 'days'),
									moment().subtract(1, 'days') ],
							'Last 7 Days' : [ moment().subtract(6, 'days'),
									moment() ],
							'Last 30 Days' : [ moment().subtract(29, 'days'),
									moment() ],
							'This Month' : [ moment().startOf('month'),
									moment().endOf('month') ],
							'Last Month' : [
									moment().subtract(1, 'month').startOf(
											'month'),
									moment().subtract(1, 'month')
											.endOf('month') ]
						},
						startDate : moment().subtract(29, 'days'),
						endDate : moment()
					},
					function(start, end) {
						$('#daterange-btn span').html(
								start.format('MMMM D, YYYY') + ' - '
										+ end.format('MMMM D, YYYY'))
					})

			//Date picker
			$('#datepicker').datepicker({
				autoclose : true
			})
			$('#datepicker1').datepicker({
				autoclose : true
			})
			//iCheck for checkbox and radio inputs
			$('input[type="checkbox"].minimal, input[type="radio"].minimal')
					.iCheck({
						checkboxClass : 'icheckbox_minimal-blue',
						radioClass : 'iradio_minimal-blue'
					})
			//Red color scheme for iCheck
			$(
					'input[type="checkbox"].minimal-red, input[type="radio"].minimal-red')
					.iCheck({
						checkboxClass : 'icheckbox_minimal-red',
						radioClass : 'iradio_minimal-red'
					})
			//Flat red color scheme for iCheck
			$('input[type="checkbox"].flat-red, input[type="radio"].flat-red')
					.iCheck({
						checkboxClass : 'icheckbox_flat-green',
						radioClass : 'iradio_flat-green'
					})

			//Colorpicker
			$('.my-colorpicker1').colorpicker()
			//color picker with addon
			$('.my-colorpicker2').colorpicker()

			//Timepicker
			$('.timepicker').timepicker({
				showInputs : false
			})
		})
	</script>
</body>

</html>