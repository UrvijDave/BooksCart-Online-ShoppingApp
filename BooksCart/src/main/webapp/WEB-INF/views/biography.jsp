<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<title> Biography </title>

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
							<img src="/BooksCart/resources/images/Steve_Jobs_by_Walter_Isaacson.jpg" />
							<div class="caption">
								<div class="row">
									<div class="col-md-6 col-xs-6">
										<h3>Steve Jobs</h3>
									</div>
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label><i class="fa fa-inr"></i>347</label>
										</h3>
									</div>
								</div>
								<p>The book provides unique insights into thoughts and life of Steve Jobs,
								Written by renowned author Walter Isaacson, the autobiography is based on more than 
								forty interviews with Steve Jobs. A man who literally transformed the digital lifestyle 
								that billions of people all over the world have made part of their lives today.
								the autobiography is based on more than forty interviews with Steve Jobs.</p>
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
							<img src="/BooksCart/resources/images/I am Malala.jpg" />
							<div class="caption">
								<div class="row">
									<div class="col-md-6 col-xs-6">
										<h3> I am Malala </h3>
									</div>
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label><i class="fa fa-inr"></i> 120 </label>
										</h3>
									</div>
								</div>
								<p>Malala Yousafzai, the educational campaigner from Swat Valley, Pakistan, 
								came to public attention by writing for BBC Urdu about life under the Taliban. 
								Using the pen name Gul Makai, she often spoke about her family's fight for girls' education in her community.
								 In October 2012 Malala was targeted by the Taliban and shot in the head as she was returning from school on a bus.
								  She miraculously survived and continues her campaign for education.</p>
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
							<img src="/BooksCart/resources/images/AbdulKalam.jpg" />
							<div class="caption">
								<div class="row">
									<div class="col-md-6 col-xs-6">
										<h3>Wings of Fire </h3>
									</div>
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label><i class="fa fa-inr"></i>128</label>
										</h3>
									</div>
								</div>
								<p> Every common man who by his sheer grit and hard work achieves success should share his story
								 with the rest for they may find inspiration and strength to go on, in his story. 
								 The 'Wings of Fire' is one such autobiography by visionary scientist Dr. APJ Abdul Kalam, 
								 who from very humble beginnings rose to be the President of India. The book is full of insights, 
								 personal moments and life experiences of Dr. Kalam. It gives us an understanding on his journey of success. </p>
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