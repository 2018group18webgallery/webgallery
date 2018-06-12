<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
<link rel="stylesheet" href="css/css.css">
<title>Wellcome to Bigga</title>
</head>
<body>
	<!--menu-->
	<%--	<nav
		class="navbar navbar-dark navbar-expand-lg  navbar-light text-warning fixed-top  ">
	<a class="navbar-brand" href="#">WED BIGGA</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Browse </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Discover</a> <a
						class="dropdown-item" href="#">Popular Photos</a> <a
						class="dropdown-item" href="#">Popular Searches</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Leaderboard</a>
				</div></li>
			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
	</nav>
 --%>
	<%@ include file="menu.jsp"%>

	<div class="jumbotron  p-3 p-md-5 text-white rounded bg-son">
		<div class="container">
			<div class="col-md-6 px-0">
				<h1 class="display-4 font-italic">longer featurst</h1>
				<p class="lead my-3">Multiple lines of text that fo this post's
					contents.</p>
				<p class="lead mb-0">
					<a href="#" class="text-white font-weight-bold">Continue
						reading...</a>
				</p>
			</div>
		</div>
	</div>

	<div class="container gallery-container">

		<div class="tz-gallery">

			<div class="row">

				<div class="col-sm-6 col-md-4">
					<div class="card">
						<a class="lightbox" href="images/pard.jpg"> <img
							src="images/park.jpg" alt="Park" class="card-img-top">
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-4">
					<div class="card">
						<a class="lightbox" href="images/bridge.jpg"> <img
							src="images/bridge.jpg" alt="Bridge" class="card-img-top">
						</a>

					</div>
				</div>
				<div class="col-sm-6 col-md-4">
					<div class="card">
						<a class="lightbox" href="images/tunnel.jpg"> <img
							src="images/tunnel.jpg" alt="Tunnel" class="card-img-top">
						</a>

					</div>
				</div>
				<div class="col-sm-6 col-md-4">
					<div class="card">
						<a class="lightbox" href="images/coast.jpg"> <img
							src="images/coast.jpg" alt="Coast" class="card-img-top">
						</a>

					</div>
				</div>
				<div class="col-sm-6 col-md-4">
					<div class="card">
						<a class="lightbox" href="images/rails.jpg"> <img
							src="images/rails.jpg" alt="Rails" class="card-img-top">
						</a>

					</div>
				</div>
				<div class="col-sm-6 col-md-4">
					<div class="card">
						<a class="lightbox" href="images/traffic.jpg"> <img
							src="images/traffic.jpg" alt="Traffic" class="card-img-top">
						</a>

					</div>
				</div>
			</div>

		</div>

	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
	<script>
		baguetteBox.run('.tz-gallery');
	</script>

	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript">
		$(window).on("scroll", function() {
			if ($(window).scrollTop()) {
				$('nav').addClass('black');
			}

			else {
				$('nav').removeClass('black');
			}
		})
	</script>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>
</body>
</html>