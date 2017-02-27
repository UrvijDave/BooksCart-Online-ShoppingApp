<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- Bootstrap -->

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<c:url value="/resources/css/owl.carousel.min.css" var="owlCarouselCss" />
<c:url value="/resources/css/owl.theme.green.min.css" var="owlCarouselTheme" />
<c:url value="/resources/js/owl.carousel.js" var="owlCarouselJs" />
<script src="${owlCarouselJs }"></script>
<link href="${owlCarouselCss }" rel="stylesheet">
<link href="${owlCarouselTheme }" rel="stylesheet">
<script>
	(function($) {
		$(document).ready(function($) {
			$('.owl-carousel').owlCarousel({
				loop : true,
				margin : 10,
				autoplay : true,
				dots : true,
				nav : false,
				responsiveClass : true,
				responsive : {
					0 : {
						items : 1,
						
					},
					600 : {
						items : 3,
						
					},
					1000 : {
						items : 4,
						
					}
				}
			});
		})
	})(jQuery);
</script>
<style>
.owl-carousel {
	display: block !important;
}
</style>


<link rel="icon" href="">
<!--   symbol is not displayed on the browser  -->
<title>BooksCart</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>


	<c:if test="${empty successMsg}">

	</c:if>
	<c:if test="${empty successMsg }">

		<h1>${successMsg}</h1>
		<c:if test="${showLoginPage}">
			<jsp:include page="login.jsp"></jsp:include>
		</c:if>

		<c:if test="${not empty errorMsg}">
										${errorMsg}

					

			<c:if test="${showPublisherPage}">
				<jsp:include page="publisher.jsp"></jsp:include>
			</c:if>

			<c:if test="${showCategoryPage}">
				<jsp:include page="category.jsp"></jsp:include>
			</c:if>
			<c:if test="${showFictionPage}">
				<jsp:include page="fiction.jsp"></jsp:include>
			</c:if>

			<c:if test="${showComicPage}">
				<jsp:include page="comic.jsp"></jsp:include>
			</c:if>

			<c:if test="${showSpiritualPage}">
				<jsp:include page="spiritual.jsp"></jsp:include>
			</c:if>
			<jsp:include page="login.jsp"></jsp:include>
		</c:if>
	</c:if>


	<div class="container">
		<div class="row">
			<div class="owl-carousel owl-theme">
				<div class="item">
					<div class="col-xs-12">
						<div class="thumbnail">
							<img src="https://upload.wikimedia.org/wikipedia/en/7/79/To_Kill_a_Mockingbird.JPG"
								class="img-responsive">
							<div class="caption">
								<div class="row">
									<div class="col-md-4 col-sm-4 col-xs-4 price">
										<h3 style="margin: 5px auto;">
											<!-- <label><i class="fa fa-inr"></i>135</label> -->
										</h3>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-8">
										<!-- <a href="/BooksCart" class="btn btn-success btn-product"><span
											class="glyphicon glyphicon-shopping-cart"></span> Add 2 Cart</a> -->
									</div>
								</div>

								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-xs-12">
						<div class="thumbnail">
							<img src="https://www.theorwellprize.co.uk/wp/wp-content/uploads/2010/09/9780141183053.jpg"
								class="img-responsive">
							<div class="caption">
								<div class="row">
									<div class="col-md-4 col-sm-4 col-xs-4 price">
										<h3 style="margin: 5px auto;">
											<!-- <label><i class="fa fa-inr"></i>220</label> -->
										</h3>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-8">
										<!-- <a href="#" class="btn btn-success btn-product"><span
											class="glyphicon glyphicon-shopping-cart"></span> Add 2 Cart</a> -->
									</div>
								</div>

								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-xs-12 ">
						<div class="thumbnail">
							<img src="https://images-na.ssl-images-amazon.com/images/I/51yqNUCZu6L.jpg"
								class="img-responsive">
							<div class="caption">
								<div class="row">
									<div class="col-md-4 col-sm-4 col-xs-4 price">
										<h3 style="margin: 5px auto;">
											<!-- <label><i class="fa fa-inr"></i>250</label>  -->
										</h3>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-8">
									 <!--	<a href="#" class="btn btn-success btn-product"><span
											class="glyphicon glyphicon-shopping-cart"></span> Add 2 Cart</a>  -->
									</div>
								</div>

								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-xs-12 ">
						<div class="thumbnail">
							<img src="https://bosilawhat.files.wordpress.com/2011/12/einstein.jpeg"
								class="img-responsive">
							<div class="caption">
								<div class="row">
									<div class="col-md-4 col-sm-4 col-xs-4 price">
										<h3 style="margin: 5px auto;">
										<!-- 	<label><i class="fa fa-inr"></i>285</label>  -->
										</h3>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-8">
										 <!-- <a href="#" class="btn btn-success btn-product"><span
											class="glyphicon glyphicon-shopping-cart"></span> Add 2 Cart</a> -->
									</div>
								</div>

								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-xs-12 ">
						<div class="thumbnail">
							<img src="http://images.gr-assets.com/books/1344271943l/7997697.jpg"
								class="img-responsive">
							<div class="caption">
								<div class="row">
									<div class="col-md-4 col-sm-4 col-xs-4 price">
										<h3 style="margin: 5px auto;">
											<!-- <label><i class="fa fa-inr"></i>360</label>  -->
										</h3>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-8">
									<!-- <a href="#" class="btn btn-success btn-product"><span
											class="glyphicon glyphicon-shopping-cart"></span> Add 2 Cart</a>  -->	
									</div>
								</div>

								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-xs-12 ">
						<div class="thumbnail">
							<img src=https://images-na.ssl-images-amazon.com/images/I/41K6Y862TVL._SX302_BO1,204,203,200_.jpg
								class="img-responsive">
							<div class="caption">
								<div class="row">
									<div class="col-md-4 col-sm-4 col-xs-4 price">
										<h3 style="margin: 5px auto;">
										<!-- <label><i class="fa fa-inr"></i>450</label>  -->	
										</h3>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-8">
									<!-- 	<a href="#" class="btn btn-success btn-product"><span
											class="glyphicon glyphicon-shopping-cart"></span> Add 2 Cart</a> -->
									</div>
								</div>

								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-xs-12 ">
						<div class="thumbnail">
							<img src="http://siyahi.in/wordpress/wp-content/uploads/2013/07/sita_final-cover5.jpg"
								class="img-responsive">
							<div class="caption">
								<div class="row">
									<div class="col-md-4 col-sm-4 col-xs-4 price">
										<h3 style="margin: 5px auto;">
											<!-- <label><i class="fa fa-inr"></i>128</label> -->
										</h3>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-8">
									<!-- <a href="#" class="btn btn-success btn-product"><span
											class="glyphicon glyphicon-shopping-cart"></span> Add 2 Cart</a>  -->	
									</div>
								</div>

								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-xs-12 ">
						<div class="thumbnail">
							<img src="https://i1.wp.com/devdutt.com/w/wp-content/uploads/2013/07/BusinessSutra_Cover.jpg"
								class="img-responsive">
							<div class="caption">
								<div class="row">
									<div class="col-md-4 col-sm-4 col-xs-4 price">
										<h3 style="margin: 5px auto;">
										<!-- 	<label><i class="fa fa-inr"></i>95</label>  -->
										</h3>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-8">
									<!-- 	<a href="#" class="btn btn-success btn-product"><span
											class="glyphicon glyphicon-shopping-cart"></span> Add 2 Cart</a>  -->
									</div>
								</div>

								<p></p>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>




</body>
</html>
