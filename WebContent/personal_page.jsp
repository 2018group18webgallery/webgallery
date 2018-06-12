
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/css.css">
<style>
nav.black {
	background: rgba(0, 0, 0, .8);
	height: 70px;
	padding: 8px 50px;
}

.bg-son {
	background-image:
		url(https://images.pexels.com/photos/33041/antelope-canyon-lower-canyon-arizona.jpg?auto=compress&bri=-20&crop=bottom&cs=tinysrgb&fit=crop&h=360&sharp=30&w=1400);
}

footer {
	background-color: #f2f2f2;
	padding: 25px;
}
</style>
</head>
<body>
	<!--menu-->
	<%--<nav
		class="navbar navbar-dark navbar-expand-lg  navbar-light text-warning navbar-fixed-top bg-dark">
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
	<%@include file="menu.jsp"%>

	<!--profile-header-->
	<div class="jumbotron jumbotron-fluid jumbotron-bg">
		<div class="container">

			<div class="profile-header__avatar">
				<img class="profile-header__img" alt="Min An" width="120"
					height="120"
					src="https://www.gravatar.com/avatar/4d4d2a762ade18bb1e91cb9cf1ca46be?200&d=mm">
				<a href="/hero/invitation/" class="profile-header__badge"
					data-tooltip="Pexels Hero" data-tooltip-align="top-center"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24"> <path
						d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm4.326 18.266l-4.326-2.314-4.326 2.313.863-4.829-3.537-3.399 4.86-.671 2.14-4.415 2.14 4.415 4.86.671-3.537 3.4.863 4.829z"></path></svg>
				</a>
			</div>
			<div class="profile-header__content">
				<h1 class="profile-header__title">Min An</h1>
				<button
					class="btn-follow js-follow js-follow-206851 profile-header__button"
					data-user-id="206851" data-follow-track-label="profile"
					data-initialized="true">
					<svg width="100pt" height="100pt" version="1.1"
						viewBox="0 0 100 100"
						class="svg-icon svg-icon--tiny svg-icon--light"> <path
						d="m40 90.699h-37.301v-12.098c0-2.5 1.1016-5 3.1016-6.6016 10.898-9 22.699-15 25.102-16.102 0.30078-0.10156 0.39844-0.39844 0.39844-0.69922v-6.3008c-1.6016-2.8008-2.5-5.8008-2.8984-8.6016-1-0.10156-2.1992-1.3984-3.6016-6.1992-1.8984-6.6016 0.10156-7.5 1.8008-7.3984 0 0-4.6016-15.602 6.6016-22.301 0 0-2-1.6016-1.8008-3.8984 0 0 10.801 1.1992 16 0.10156 5.1992-1.1016 10.801 3 11.699 7 0 0 11.102-0.89844 6.3984 19 0 0-0.10156 0.39844-0.19922 1.1992h0.30078c1.3008 0.39844 2.1016 2.1992 0.69922 7.3008-1.8008 6.3008-3.3984 6.6992-4.3984 6-0.39844 2.1992-1 4.6016-2.1016 6.8008v7.3008c0 0.30078 0.19922 0.60156 0.39844 0.69922 1.1992 0.60156 4.5 2.1992 8.8984 4.8008v10.699h-13v19.203h-4.8984l-11.199-0.003907zm44.301-27.199h-10v13h-13v10h13v13h10v-13h13v-10h-13z"></path>
					</svg>
					Follow
				</button>
				<button
					class="btn-quiet btn--sm js-paypal-btn profile-header__button"
					data-tooltip="Support this photographer with a PayPal donation"
					data-track-action="profile" data-track-label="paypal"
					data-initialized="true">
					<svg xmlns="http://www.w3.org/2000/svg"
						class="svg-icon svg-icon--small svg-icon svg-icon--tiny"
						width="24" height="24" viewBox="0 0 24 24"> <path
						d="M22 9.761c0 .536-.065 1.084-.169 1.627-.847 4.419-3.746 5.946-7.449 5.946h-.572c-.453 0-.838.334-.908.789l-.803 5.09c-.071.453-.456.787-.908.787h-2.736c-.39 0-.688-.348-.628-.732l1.386-8.88.062-.056h2.155c5.235 0 8.509-2.618 9.473-7.568.812.814 1.097 1.876 1.097 2.997zm-14.216 4.252c.116-.826.459-1.177 1.385-1.179l2.26-.002c4.574 0 7.198-2.09 8.023-6.39.8-4.134-2.102-6.442-6.031-6.442h-7.344c-.517 0-.958.382-1.038.901-2.304 14.835-2.97 18.607-3.038 19.758-.021.362.269.672.635.672h3.989l1.159-7.318z"></path></svg>
					Donate
				</button>
				<h2 class="profile-header__subtitle">If you love my story,
					please donate for me</h2>
				<div class="profile-header__links">
					<a rel="nofollow noopener" target="_blank"
						data-track-action="user-website"
						data-track-label="https://www.facebook.com/Minan1398"
						class="profile-header__link"
						href="https://www.facebook.com/Minan1398?ref=pexels"> <img
						height="14" width="14"
						src="/assets/icons/earth-e06764bba89d3a1a8364b4d0416021320f4ce1d8124c320b43203c04ec4e17db.svg"
						alt="Earth"> www.facebook.com/Minan1398
					</a> <a rel="nofollow noopener" target="_blank"
						class="profile-header__link"
						href="https://instagram.com/minan1398/"> <img height="14"
						width="14"
						src="/assets/icons/instagram-3b3dbebd3a37113de03d6871045bf9e43ab97b1e7cf618299dc601229bc46ff5.svg"
						alt="Instagram"> minan1398
					</a>
				</div>
			</div>

		</div>
	</div>


	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item"><a class="nav-link active" id="home-tab"
			data-toggle="tab" href="#home" role="tab" aria-controls="home"
			aria-selected="true">Photo</a></li>
		<li class="nav-item"><a class="nav-link" id="profile-tab"
			data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
			aria-selected="false"> Collections</a></li>
		<li class="nav-item"><a class="nav-link" id="contact-tab"
			data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
			aria-selected="false">Contact</a></li>
	</ul>
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="home" role="tabpanel"
			aria-labelledby="home-tab">
			<div class="l-container-center">
				<div class="action-box">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" class="action-box__icon"> <path
						d="M19.479 10.092c-.212-3.951-3.473-7.092-7.479-7.092-4.005 0-7.267 3.141-7.479 7.092-2.57.463-4.521 2.706-4.521 5.408 0 3.037 2.463 5.5 5.5 5.5h13c3.037 0 5.5-2.463 5.5-5.5 0-2.702-1.951-4.945-4.521-5.408zm-7.479-1.092l4 4h-3v4h-2v-4h-3l4-4z"></path></svg>
					<h3 class="action-box__title">Start Uploading Your Photos to
						Pexels</h3>
					<p>Do you have outstanding photos that you want to share with
						the Pexels community?</p>
					<div class="show-if-signed-in">
						<a href="/upload/" class="btn-secondary" rel="nofollow">Upload
							Your Photos</a>
					</div>
				</div>
			</div>
		</div>

		<div class="tab-pane fade" id="profile" role="tabpanel"
			aria-labelledby="profile-tab">...</div>
		<div class="tab-pane fade" id="contact" role="tabpanel"
			aria-labelledby="contact-tab">...</div>
	</div>


	<footer class="container-fluid text-center">
	<p>Footer Text</p>
	</footer>

</body>
</html>