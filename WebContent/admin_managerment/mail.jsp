<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Admin | Mail</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
<link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- Main Header -->
		<%@include file="header.jsp"%>
		<%@include file="menu.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Mail<small>Trang quản lý mail</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
				<li class="active">Here</li>
			</ol>
			<!-- Main content --> <section class="content">
			<div class="row">
				<div class="col-md-3">
					<a href="#" class="btn btn-primary btn-block margin-bottom">Soạn
						Thư</a>

					<div class="box box-solid">
						<div class="box-header with-border">
							<h3 class="box-title">Hộp thư</h3>

							<div class="box-tools">
								<button type="button" class="btn btn-box-tool"
									data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
							</div>
						</div>
						<div class="box-body no-padding">
							<ul class="nav nav-pills nav-stacked">
								<li class="active"><a href="#"><i class="fa fa-inbox"></i>
										Hộp thư đến <span class="label label-primary pull-right">7</span></a></li>
								<li><a href="#"><i class="fa fa-envelope-o"></i>Thư đã
										gửi</a></li>
								<li><a href="#"><i class="fa fa-file-text-o"></i> Thư
										nháp</a></li>
								<li><a href="#"><i class="fa fa-trash-o"></i>Thùng rác</a></li>
							</ul>
						</div>
						<!-- /.box-body -->
					</div>
				</div>
				<!-- /.col -->
				<div class="col-md-9">
					<div class="box box-primary">
						<div class="box-header with-border">
							<h3 class="box-title">Hộp thư đến</h3>

							<div class="box-tools pull-right">
								<div class="has-feedback">
									<input type="text" class="form-control input-sm"
										placeholder="Search Mail"> <span
										class="glyphicon glyphicon-search form-control-feedback"></span>
								</div>
							</div>
							<!-- /.box-tools -->
						</div>
						<!-- /.box-header -->
						<div class="box-body no-padding">
							<div class="mailbox-controls">
								<!-- Check all button -->
								<button type="button"
									class="btn btn-default btn-sm checkbox-toggle">
									<i class="fa fa-square-o"></i>
								</button>
								<div class="btn-group">
									<button type="button" class="btn btn-default btn-sm">
										<i class="fa fa-trash-o"></i>
									</button>
									<button type="button" class="btn btn-default btn-sm">
										<i class="fa fa-reply"></i>
									</button>
									<button type="button" class="btn btn-default btn-sm">
										<i class="fa fa-share"></i>
									</button>
								</div>
								<!-- /.btn-group -->
								<button type="button" class="btn btn-default btn-sm">
									<i class="fa fa-refresh"></i>
								</button>
								<div class="pull-right">
									1-50/200
									<div class="btn-group">
										<button type="button" class="btn btn-default btn-sm">
											<i class="fa fa-chevron-left"></i>
										</button>
										<button type="button" class="btn btn-default btn-sm">
											<i class="fa fa-chevron-right"></i>
										</button>
									</div>
									<!-- /.btn-group -->
								</div>
								<!-- /.pull-right -->
							</div>
							<div class="table-responsive mailbox-messages">
								<table class="table table-hover table-striped">
									<tbody>
										<tr>
											<td><input type="checkbox"></td>
											<td class="mailbox-star"><a href="#"><i
													class="fa fa-star text-yellow"></i></a></td>
											<td class="mailbox-name"><a href="#">Tom </a></td>
											<td class="mailbox-subject"><b>Mua hàng</b> - Cảm ơn cửa
												hàng của bạn sản phẩm của bạn thật sự rất tuyệt vời...</td>
											<td class="mailbox-attachment"></td>
											<td class="mailbox-date">5 mins ago</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td class="mailbox-star"><a href="#"><i
													class="fa fa-star-o text-yellow"></i></a></td>
											<td class="mailbox-name"><a href="#">Tom </a></td>
											<td class="mailbox-subject"><b>Mua Hàng</b> - Tôi muốn
												mua một dây chuyền kim cương nhân dịp ngày cưới...</td>
											<td class="mailbox-attachment"><i
												class="fa fa-paperclip"></i></td>
											<td class="mailbox-date">28 mins ago</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td class="mailbox-star"><a href="#"><i
													class="fa fa-star-o text-yellow"></i></a></td>
											<td class="mailbox-name"><a href="#">Jerry </a></td>
											<td class="mailbox-subject"><b>Khách hàng thân thiết</b>
												- Cảm ơn những ưu đãi rất tuyệt vời của cửa hàng Sunshine...</td>
											<td class="mailbox-attachment"><i
												class="fa fa-paperclip"></i></td>
											<td class="mailbox-date">11 hours ago</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td class="mailbox-star"><a href="#"><i
													class="fa fa-star text-yellow"></i></a></td>
											<td class="mailbox-name"><a href="#"> Nami</a></td>
											<td class="mailbox-subject"><b>Khách hàng thân thiết</b>
												- Sản Phẩm của bạn thật tuyệt...</td>
											<td class="mailbox-attachment"></td>
											<td class="mailbox-date">15 hours ago</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td class="mailbox-star"><a href="#"><i
													class="fa fa-star text-yellow"></i></a></td>
											<td class="mailbox-name"><a href="#"> Nami</a></td>
											<td class="mailbox-subject"><b>Khách hàng thân thiết</b>
												- Tôi muốn đặt một cặp nhẫn cưới tặng cho con gái tôi nhân
												nhịp ngày cưới của nó...</td>
											<td class="mailbox-attachment"><i
												class="fa fa-paperclip"></i></td>
											<td class="mailbox-date">Yesterday</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td class="mailbox-star"><a href="#"><i
													class="fa fa-star-o text-yellow"></i></a></td>
											<td class="mailbox-name"><a href="#">Sanji </a></td>
											<td class="mailbox-subject"><b>Khách hàng thân thiết</b>
												- Tôi muốn đặt mua một lô sản phẩm về mặt dây chuyền vàng
												của cửa hàng Sunshine...</td>
											<td class="mailbox-attachment"><i
												class="fa fa-paperclip"></i></td>
											<td class="mailbox-date">2 days ago</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td class="mailbox-star"><a href="#"><i
													class="fa fa-star-o text-yellow"></i></a></td>
											<td class="mailbox-name"><a href="#"> Luffy</a></td>
											<td class="mailbox-subject"><b>Khách hàng thân thiết</b>
												- Tôi thấy rất thoãi mái khi sử dụng trang sức của
												Sunshine...</td>
											<td class="mailbox-attachment"><i
												class="fa fa-paperclip"></i></td>
											<td class="mailbox-date">2 days ago</td>
										</tr>

									</tbody>
								</table>
								<!-- /.table -->
							</div>
							<!-- /.mail-box-messages -->
						</div>
						<!-- /.box-body -->
						<div class="box-footer no-padding">
							<div class="mailbox-controls">
								<!-- Check all button -->
								<button type="button"
									class="btn btn-default btn-sm checkbox-toggle">
									<i class="fa fa-square-o"></i>
								</button>
								<div class="btn-group">
									<button type="button" class="btn btn-default btn-sm">
										<i class="fa fa-trash-o"></i>
									</button>
									<button type="button" class="btn btn-default btn-sm">
										<i class="fa fa-reply"></i>
									</button>
									<button type="button" class="btn btn-default btn-sm">
										<i class="fa fa-share"></i>
									</button>
								</div>
								<!-- /.btn-group -->
								<button type="button" class="btn btn-default btn-sm">
									<i class="fa fa-refresh"></i>
								</button>
								<div class="pull-right">
									1-50/200
									<div class="btn-group">
										<button type="button" class="btn btn-default btn-sm">
											<i class="fa fa-chevron-left"></i>
										</button>
										<button type="button" class="btn btn-default btn-sm">
											<i class="fa fa-chevron-right"></i>
										</button>
									</div>
									<!-- /.btn-group -->
								</div>
								<!-- /.pull-right -->
							</div>
						</div>
					</div>
					<!-- /. box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row --> </section> <!-- ./col --> </section>

			<!-- Main content -->
			<section class="content"> <!-- Your Page Content Here --> </section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Main Footer -->
		<footer class="main-footer"> <!-- To the right -->
		<div class="pull-right hidden-xs">Anything you want</div>
		<!-- Default to the left --> <strong>Thiết Kế &copy; 2017 <a
			href="#">Bảo Lee</a>.
		</strong> Nhằm mục đích học tập. </footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark"> <!-- Create the tabs -->
		<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
			<li class="active"><a href="#control-sidebar-home-tab"
				data-toggle="tab"><i class="fa fa-home"></i></a></li>
			<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
					class="fa fa-gears"></i></a></li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<!-- Home tab content -->
			<div class="tab-pane active" id="control-sidebar-home-tab">
				<h3 class="control-sidebar-heading">Recent Activity</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript:;"> <i
							class="menu-icon fa fa-birthday-cake bg-red"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

								<p>Will be 23 on April 24th</p>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

				<h3 class="control-sidebar-heading">Tasks Progress</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript:;">
							<h4 class="control-sidebar-subheading">
								Custom Template Design <span class="pull-right-container">
									<span class="label label-danger pull-right">70%</span>
								</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

			</div>
			<!-- /.tab-pane -->
			<!-- Stats tab content -->
			<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
				Content</div>
			<!-- /.tab-pane -->
			<!-- Settings tab content -->
			<div class="tab-pane" id="control-sidebar-settings-tab">
				<form method="post">
					<h3 class="control-sidebar-heading">General Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading"> Report panel
							usage <input type="checkbox" class="pull-right" checked>
						</label>

						<p>Some information about this general settings option</p>
					</div>
					<!-- /.form-group -->
				</form>
			</div>
			<!-- /.tab-pane -->
		</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED JS SCRIPTS -->

	<!-- jQuery 2.2.3 -->
	<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/app.min.js"></script>

	<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
</body>
</html>
