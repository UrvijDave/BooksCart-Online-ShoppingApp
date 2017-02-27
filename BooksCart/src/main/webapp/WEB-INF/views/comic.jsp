<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<title> Comic Books </title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700"
	rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<style type="text/css">
.btn-product {
	width: 100%;
}
.tab-pane img{
	width: 100%;
	object-fit:cover;
}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<br />
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<div class="tab-pane active" id="pic-1">
							<img src="/BooksCart/resources/images/Chacha Caudhary.jpg" />
							<div class="caption">
								<div class="row">
									<div class="col-md-6 col-xs-6">
										<h3>Chacha Caudhary</h3>
									</div>
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label><i class="fa fa-inr"></i>60</label>
										</h3>
									</div>
								</div>
								<p>Daily life mischieves of Chacha Chaudhary and Sabu</p>
								<div class="row">
									<div class="col-md-6">
										<a class="btn btn-primary btn-product"><span
											class="glyphicon glyphicon-heart"></span> Wish List</a>
									</div>
									<div class="col-md-6">
										<a href="#" class="btn btn-success btn-product"><span
											class="glyphicon glyphicon-shopping-cart"></span> Add to Cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<div class="tab-pane active" id="pic-1">
							<img src="/BooksCart/resources/images/Draupadi.jpg" />
							<div class="caption">
								<div class="row">
									<div class="col-md-6 col-xs-6">
										<h3> Draupadi </h3>
									</div>
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label><i class="fa fa-inr"></i>45</label>
										</h3>
									</div>
								</div>
								<p>A comical representation of Mahabharata character - Draupadi</p>
								<div class="row">
									<div class="col-md-6">
										<a class="btn btn-primary btn-product"><span
											class="glyphicon glyphicon-heart"></span> Wish List</a>
									</div>
									<div class="col-md-6">
										<a href="#" class="btn btn-success btn-product"><span
											class="glyphicon glyphicon-shopping-cart"></span> Add to Cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<div class="tab-pane active" id="pic-1">
							<img src="/BooksCart/resources/images/Tom and Jerry.jpg" />
							<div class="caption">
								<div class="row">
									<div class="col-md-6 col-xs-6">
										<h3>Tom and Jerry</h3>
									</div>
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label><i class="fa fa-inr"></i>85</label>
										</h3>
									</div>
								</div>
								<p>A life of Tom and Jerry </p>
								<div class="row">
									<div class="col-md-6">
										<a class="btn btn-primary btn-product"><span
											class="glyphicon glyphicon-heart"></span> Wish List</a>
									</div>
									<div class="col-md-6">
										<a href="#" class="btn btn-success btn-product"><span
											class="glyphicon glyphicon-shopping-cart"></span> Add to Cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>