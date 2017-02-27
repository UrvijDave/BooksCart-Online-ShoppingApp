<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<title> Fiction Books </title>

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
							<img src="/BooksCart/resources/images/3_Mistakes_of_My_Life.jpg" />
							<div class="caption">
								<div class="row">
									<div class="col-md-6 col-xs-6">
										<h3>3 Mistakes of My Life</h3>
									</div>
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label><i class="fa fa-inr"></i> 124 </label>
										</h3>
									</div>
								</div>
								<p>Based on real events, the book starts with a dramatic twist, 
								where Bhagat is reading an e-mail sent by some young person Govind, 
								who has consumed sleeping pills for some reason and is writing to Bhagat, while waiting for his life to end. 
								This book revolves around the three major mistakes committed by Govind in his life; 
								he also happens to be the central character of the novel.</p>
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
							<img src="/BooksCart/resources/images/meluha.jpg" />
							<div class="caption">
								<div class="row">
									<div class="col-md-6 col-xs-6">
										<h3> The Immortals of Meluha </h3>
									</div>
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label><i class="fa fa-inr"></i>45</label>
										</h3>
									</div>
								</div>
								<p> An intense story 'The Immortals of Meluha' draws heavily from stories and legends of Hindu mythology
								that have been passed on from generation to generation.First book of the trilogy, 
								the Immortals tale unfolds in Meluha, a land that is ruled by the Suryavanshi tribe 
								that firmly believes in the prophecy of 'Neelkanth' Shiva being their saviour. 
								The Suryavanshi's (Sun worshipers) are of the firm belief that it would be Shiva,
								who would save them from the wrath of Chandravanshi's. </p>
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
							<img src="/BooksCart/resources/images/One_Night_@_Call_Center.jpg" />
							<div class="caption">
								<div class="row">
									<div class="col-md-6 col-xs-6">
										<h3> One Night @ Call Center </h3>
									</div>
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label><i class="fa fa-inr"></i>103</label>
										</h3>
									</div>
								</div>
								<p> This book is the story of one night's happening with 6 people 
										working together at a call centre in Gurgaon, India. The employees are focused on giving technical support to American clients. 
										The 6 characters who are friends, are all working on this particular night shift together.
										In America, it is the THANKSGIVING time and the phone lines are ringing frantically.
										The call centre receives one call from a very special caller, GOD. A call that alters everything. </p>
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