<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Invoice</title>
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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body onload="window.print();">
    <div class="wrapper">
        <!-- Main content -->
        <section class="invoice">
            <!-- title row -->
            <div class="row">
                <div class="col-xs-12">
                    <h2 class="page-header">
                        <i class="fa fa-globe"></i> TaskiDO.
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
                                <th>Link</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>User</td>
                                <td>get All</td>
                                <td>TaskManager/api/user/all</td>
                            </tr>

                            <tr>
                                <td>1</td>
                                <td>User</td>
                                <td>get</td>
                                <td>TaskManager/api/user/get/<b>{id}</b></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>User</td>
                                <td>Delete</td>
                                <td>TaskManager/api/user/delete/<b>{id}</b></td>
                            </tr>

                            <tr>
                                <td>1</td>
                                <td>User</td>
                                <td>Put</td>
                                <td>TaskManager/api/user/edit/<b>{id}</b></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>User</td>
                                <td>Post</td>
                                <td>TaskManager/api/user/add</td>



                                <tr>
                                    <td>2</td>
                                    <td>organisation</td>
                                    <td>get All</td>
                                    <td>TaskManager/api/organisation/all</td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>organisation</td>
                                    <td>get</td>
                                    <td>TaskManager/api/organisation/get/<b>{id}</b></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>organisation</td>
                                    <td>Delete</td>
                                    <td>TaskManager/api/organisation/delete/<b>{id}</b></td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>organisation</td>
                                    <td>Put</td>
                                    <td>TaskManager/api/organisation/edit/<b>{id}</b></td>
                                </tr>


                                <tr>
                                    <td>2</td>
                                    <td>organisation</td>
                                    <td>Post</td>
                                    <td>TaskManager/api/organisation/add</td>
                                </tr>


                                <tr>
                                    <td>3</td>
                                    <td>project</td>
                                    <td>get All</td>
                                    <td>TaskManager/api/project/all</td>
                                </tr>

                                <tr>
                                    <td>3</td>
                                    <td>project</td>
                                    <td>get</td>
                                    <td>TaskManager/api/project/get/<b>{id}</b></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>project</td>
                                    <td>Delete</td>
                                    <td>TaskManager/api/project/delete/<b>{id}</b></td>
                                </tr>

                                <tr>
                                    <td>3</td>
                                    <td>project</td>
                                    <td>Put</td>
                                    <td>TaskManager/api/project/edit/<b>{id}</b></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>project</td>
                                    <td>Post</td>
                                    <td>TaskManager/api/project/add</td>


                                </tr>




                                <tr>
                                    <td>4</td>
                                    <td>state</td>
                                    <td>get All</td>
                                    <td>TaskManager/api/state/all</td>
                                </tr>

                                <tr>
                                    <td>4</td>
                                    <td>state</td>
                                    <td>get</td>
                                    <td>TaskManager/api/state/get/<b>{id}</b></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>state</td>
                                    <td>Delete</td>
                                    <td>TaskManager/api/state/delete/<b>{id}</b></td>
                                </tr>

                                <tr>
                                    <td>4</td>
                                    <td>state</td>
                                    <td>Put</td>
                                    <td>TaskManager/api/state/edit/<b>{id}</b></td>
                                </tr>

                                <tr>
                                    <td>4</td>
                                    <td>state</td>
                                    <td>Post</td>
                                    <td>TaskManager/api/state/add</td>
                                </tr>




                                <tr>
                                    <td>5</td>
                                    <td>Task</td>
                                    <td>get All</td>
                                    <td>TaskManager/api/task/all</td>
                                </tr>

                                <tr>
                                    <td>5</td>
                                    <td>Task</td>
                                    <td>get</td>
                                    <td>TaskManager/api/task/get/<b>{id}</b></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Task</td>
                                    <td>Delete</td>
                                    <td>TaskManager/api/task/delete/<b>{id}</b></td>
                                </tr>

                                <tr>
                                    <td>5</td>
                                    <td>Task</td>
                                    <td>Put</td>
                                    <td>TaskManager/api/task/edit/<b>{id}</b></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Task</td>
                                    <td>Post</td>
                                    <td>TaskManager/api/task/add</td>
                                </tr>


                                <tr>
                                    <td>6</td>
                                    <td>team</td>
                                    <td>get All</td>
                                    <td>TaskManager/api/team/all</td>
                                </tr>

                                <tr>
                                    <td>6</td>
                                    <td>team</td>
                                    <td>get</td>
                                    <td>TaskManager/api/team/get/<b>{id}</b></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>teamk</td>
                                    <td>Delete</td>
                                    <td>TaskManager/api/team/delete/<b>{id}</b></td>
                                </tr>

                                <tr>
                                    <td>6</td>
                                    <td>team</td>
                                    <td>Put</td>
                                    <td>TaskManager/api/team/edit/<b>{id}</b></td>
                                </tr>

                                <tr>
                                    <td>6</td>
                                    <td>team</td>
                                    <td>Post</td>
                                    <td>TaskManager/api/team/add</td>
                                </tr>




                        </tbody>
                    </table>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="row">
                <!-- accepted payments column -->


                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- ./wrapper -->
</body>

</html>