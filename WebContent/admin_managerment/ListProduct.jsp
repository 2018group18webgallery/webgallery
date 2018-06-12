<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Admin | Product</title>
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
<link rel="stylesheet"
	href="http://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

<script
	src="http://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script
	src="http://cdn.datatables.net/plug-ins/1.10.13/sorting/alt-string.js"></script>

<script>
	$(document).ready(function() {
		$('#myTable1').DataTable({

		});

	});
</script>
<style>
* {
	box-sizing: border-box;
}

.input {
	background-image: url('/css/searchicon.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	width: 100%;
	font-size: 16px;
	padding: 12px 20px 12px 40px;
	border: 1px solid #ddd;
	margin-bottom: 12px;
}

.table {
	border-collapse: collapse;
	width: 100%;
	border: 1px solid #ddd;
	font-size: 18px;
	font-family: monospace;
}

.table th, .table td {
	text-align: left;
	padding: 12px;
}

.table tr {
	border-bottom: 1px solid #ddd;
}

.table tr.header, .table tr:hover {
	background-color: #f1f1f1;
}
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- Main Header -->
		<header class="main-header"> <!-- Logo --> <a
			href="HomeAdmin.jsp" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>A</b>S</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Admin Shunshine</b></span>
		</a> <!-- Header Navbar --> <nav class="navbar navbar-static-top"
			role="navigation"> <!-- Sidebar toggle button--> <a href="#"
			class="sidebar-toggle" data-toggle="offcanvas" role="button"> <span
			class="sr-only">Toggle navigation</span>
		</a> <!-- Navbar Right Menu -->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Messages: style can be found in dropdown.less-->
				<li class="dropdown messages-menu">
					<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="fa fa-envelope-o"></i> <span
						class="label label-success">4</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 4 messages</li>
						<li>
							<!-- inner menu: contains the messages -->
							<ul class="menu">
								<li>
									<!-- start message --> <a href="#">
										<div class="pull-left">
											<!-- User Image -->
											<img src="img/photo_large.png" class="img-circle"
												alt="User Image">
										</div> <!-- Message title and timestamp -->
										<h4>
											Hello Admin <small><i class="fa fa-clock-o"></i> 5
												mins</small>
										</h4> <!-- The message -->
										<p>You are awsome...!!</p>
								</a>
								</li>
								<!-- end message -->
							</ul> <!-- /.menu -->
						</li>
						<li class="footer"><a href="#">See All Messages</a></li>
					</ul>
				</li>
				<!-- /.messages-menu -->

				<!-- Notifications Menu -->
				<li class="dropdown notifications-menu">
					<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="fa fa-bell-o"></i> <span
						class="label label-warning">10</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 10 notifications</li>
						<li>
							<!-- Inner Menu: contains the notifications -->
							<ul class="menu">
								<li>
									<!-- start notification --> <a href="#"> <i
										class="fa fa-users text-aqua"></i> 5 new members joined today
								</a>
								</li>
								<!-- end notification -->
							</ul>
						</li>
						<li class="footer"><a href="#">View all</a></li>
					</ul>
				</li>
				<!-- Tasks Menu -->
				<li class="dropdown tasks-menu">
					<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="fa fa-flag-o"></i> <span
						class="label label-danger">1</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 1 tasks</li>
						<li>
							<!-- Inner menu: contains the tasks -->
							<ul class="menu">
								<li>
									<!-- Task item --> <a href="#"> <!-- Task title and progress text -->
										<h3>
											Design some buttons <small class="pull-right">20%</small>
										</h3> <!-- The progress bar -->
										<div class="progress xs">
											<!-- Change the css width attribute to simulate progress -->
											<div
												class="progress-bar progress-bar-danger  progress-bar-striped active"
												style="width: 40%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">40% Complete</span>


											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
							</ul>
						</li>
						<li class="footer"><a href="#">View all tasks</a></li>
					</ul>
				</li>
				<!-- User Account Menu -->
				<li class="dropdown user user-menu">
					<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <!-- The user image in the navbar--> <img
						src="img/photo_large.png" class="user-image" alt="User Image">
						<!-- hidden-xs hides the username on small devices so only the image appears. -->
						<span class="hidden-xs">Bảo Lee</span>
				</a>
					<ul class="dropdown-menu">
						<!-- The user image in the menu -->
						<li class="user-header"><img src="img/photo_large.png"
							class="img-circle" alt="User Image">

							<p>
								Bảo Lee - Web Developer <small>30 March 2017</small>
							</p></li>
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
							</div> <!-- /.row -->
						</li>
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="Profile.jsp" class="btn btn-default btn-flat">Profile</a>
							</div>
							<div class="pull-right">
								<a href="loginAdmin.jsp" class="btn btn-default btn-flat">Sign
									out</a>
							</div>
						</li>
					</ul>
				</li>
				<!-- Control Sidebar Toggle Button -->
				<li><a href="#" data-toggle="control-sidebar"><i
						class="fa fa-gears"></i></a></li>
			</ul>
		</div>
		</nav> </header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel (optional) -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="img/photo_large.png" class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>Bảo Lee</p>
				<!-- Status -->
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>

		<!-- search form (Optional) -->
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
		<!-- /.search form --> <!-- Sidebar Menu -->
		<ul class="sidebar-menu">
			<!-- Optionally, you can add icons to the links -->
			<li><a href="HomeAdmin.jsp"><i class="fa fa-home"></i> <span>Home</span></a></li>
			<li><a href="Mail.jsp"><i class="fa fa-envelope-o"></i> <span>Mail</span></a></li>
			<li><a href="UserManager.jsp"><i class="fa fa-users"></i> <span>User</span></a></li>
			<li class="treeview" class="active"><a href="#"><i
					class="fa fa-shopping-bag"></i> <span>Sản phẩm</span> <span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span> </a>
				<ul class="treeview-menu">
					<li><a href="#" class="fa fa-circle-o"> Danh sách sản phẩm</a></li>
					<li><a href="UpdateProduct.jsp" class="fa fa-circle-o"> Thêm, Xóa , Cập nhật
							sản phẩm</a></li>
				</ul></li>
			<li><a href="Profile.jsp"><i class="fa fa-edit"></i> <span>
						thông tin Admin</span></a></li>
			<li><a href="loginAdmin.jsp"><i class="fa fa-sign-out"></i>
					<span>Sign out</span></a></li>
		</ul>
		<!-- /.sidebar-menu --> </section> <!-- /.sidebar --> </aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Product<small>Trang quản lý danh sách sản phẩm</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
				<li class="active">Here</li>
			</ol>
			<hr />
			<h2>Danh Sách Sản Phẩm</h2>
			<%
			Locale here = request.getLocale();
			NumberFormat nf = NumberFormat.getCurrencyInstance(here);
			nf.setMinimumFractionDigits(0);
			nf.setMaximumFractionDigits(0);
			
			ProductDAO productDAO = new ProductDAO();
			ArrayList<Product> listProduct =  productDAO.selectProduct();
			%>

			
			<table id="myTable1" class="table">
				<a href="UpdateProduct.jsp" type="button" class="btn btn-success">
										<span class="glyphicon glyphicon-plus"></span> THÊM SẢN PHẨM
						</a>
				<br />
				<thead>
					<tr class="header">
						<th>ID</th>
						<th>Tên Sản Phẩm</th>
						<th>Loại Sản Phẩm</th>
						<th>Số lượng còn lại</th>
						<th>Giá Tiền</th>
						<th></th>
						<th></th>
						
					</tr>
				</thead>
				<tbody>
					<%
				for(Product p : listProduct){
				%>
					<tr>
						<td><%=p.getId() %></td>
						<td><%=p.getName() %></td>
						<td><%=p.getDescription() %></td>
						<td><%=p.getNumber() %></td>
						<td><%=nf.format(p.getPrice()) %></td>
						<td>
						<form action="../DeleteProductAdmin" method="get">
						<input type="hidden" name="productId" value="<%=p.getId()%>">
						<button type="submit" class="btn btn-danger">
										<span class="glyphicon glyphicon-remove"></span> Xóa
						</button>				
						</form>
						</td>
						<td>
						
						
						<a  href="UpdateProduct.jsp?idProduct=<%=p.getId() %>" type="button" class="btn btn-primary">
										<span class="glyphicon glyphicon-refresh"></span> Cập Nhật
						</a>
							
						
						</td>
						

					</tr>
					<%} %>

				</tbody>
			</table>
			<script>
				
			</section>
			<!-- /.box-footer -->
			<!-- Main content -->
			<section class="content">
				<!-- Your Page Content Here -->
			</section>
			<!-- /.content -->
			<!-- /.content-wrapper -->
		</div>
		<!-- Main Footer -->
		<footer class="main-footer">
			<!-- To the right -->
			<div class="pull-right hidden-xs">Anything you want</div>
			<!-- Default to the left -->
			<strong>Thiết Kế &copy; 2017 <a href="#">Bảo Lee</a>.
			</strong> Nhằm mục đích học tập.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Create the tabs -->
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
									<div class="progress-bar progress-bar-danger"
										style="width: 70%"></div>
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
	<!-- ./wrapper -->

	
	
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script> <!-- Bootstrap 3.3.6 --> <script src="bootstrap/js/bootstrap.min.js"></script>
			<!-- Morris.js charts --> <script
				src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
			<script src="plugins/morris/morris.min.js"></script> <!-- Sparkline -->
			<script src="plugins/sparkline/jquery.sparkline.min.js"></script> <!-- jvectormap -->
			<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
			<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
			<!-- jQuery Knob Chart --> <script src="plugins/knob/jquery.knob.js"></script>
			<!-- daterangepicker --> <script
				src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
			<script src="plugins/daterangepicker/daterangepicker.js"></script> <!-- datepicker -->
			<script src="plugins/datepicker/bootstrap-datepicker.js"></script> <!-- Bootstrap WYSIHTML5 -->
			<script
				src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
			<!-- Slimscroll --> <script
				src="plugins/slimScroll/jquery.slimscroll.min.js"></script> <!-- FastClick -->
			<script src="plugins/fastclick/fastclick.js"></script> <!-- AdminLTE App -->
			<script src="dist/js/app.min.js"></script> <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
			<script src="dist/js/pages/dashboard.js"></script> <!-- AdminLTE for demo purposes -->
			<script src="dist/js/demo.js"></script>
</body>
</html>
