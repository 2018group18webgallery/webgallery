<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
<link rel="stylesheet" href="css/css.css">

</head>
<body>
	<!--menu-->
	<nav class="navbar navbar-dark navbar-expand-lg navbar-light bg-dark">
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




	<div class="l-container-center l-container--sm">
		<h1 class="headline">Upload Photos &amp; Videos</h1>
		<ul class="upload-info-list">
			<li>Your uploads will be distributed for free under the CC0
				license. <a href="/photo-license/" target="_blank">Learn more</a>
			</li>
			<li>Ensure that people who are the main subject agreed to
				publish your photo or video.</li>
			<li>We'll review your submission and if it's selected, you'll
				get an email notification. Then it'll be featured on our home page
				and in the search.</li>
		</ul>
		<div class="upload-form"
			onclick="document.querySelector('.custom-file-input').click()">
			<a href="<%=request.getContextPath()%>/Account " name="action"
				value="upload">
				<button class="btn  btn-primary">Browse</button>
			</a> <strong class="upload-form__or">or drag &amp; drop</strong> <input
				type="file" class="hidden custom-file-input"
				accept="image/jpg, image/jpeg, image/png, video/mp4, video/quicktime, video/x-ms-wmv, video/x-msvideo, video/x-ms-wmv, video/x-flv, video/3gpp"
				multiple="">
		</div>

	</div>
	<div class="js-photo-upload-list upload-list l-row"></div>
	<form method="post" action="/Account"
		class="js-submit-form upload-submit">
		<input type="hidden" name="authenticity_token" id="authenticity_token"
			value="EFe4xXD/krUJDg+Gx6JkTwIL/l9+sqckSKSNYCsGukSNd34+WrIW0o72pDZgX6LKpEysF5421UyuTORAOKibDw==">
		<input type="hidden" value="" name="media" class="js-submit-photos">
		<label class="upload-submit__check"> <input type="checkbox"
			required="required"> I only uploaded content I own the rights
			to
		</label> <span class="js-submit-btn-tooltip"
			data-tooltip="Wait until all photos are uploaded."
			data-tooltip-align="top-center" data-tooltip-disabled=""> <input
			type="submit" class="btn btn-secondary btn--big js-submit-btn"
			value="Publish" disabled="disabled">
		</span>
	</form>
	</div>

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