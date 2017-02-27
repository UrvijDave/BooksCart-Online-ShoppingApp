<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<title>Spiritual Books</title>

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
							<img src="/BooksCart/resources/images/Gita.jpg" />
							<div class="caption">
								<div class="row">
									<div class="col-md-6 col-xs-6">
										<h3>Bhagwad Gita</h3>
									</div>
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label><i class="fa fa-inr"></i>450</label>
										</h3>
									</div>
								</div>
								<p>The Yoga of the Gita, along with its companion volume The Yoga of Jesus, 
								provides a groundbreaking treatise on the deeper meaning of Yoga the science of God-realization 
								that is the birthright of all individuals.
								In this compact book,a compilation of excerpts from his monumental translation of and 
								commentary on the Bhagavad Gita, God Talks with Arjuna </p>
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
							<img src="/BooksCart/resources/images/AutoBiographyOfAYogi.jpg" />
							<div class="caption">
								<div class="row">
									<div class="col-md-6 col-xs-6">
										<h3>Auto Biography Of A Yogi</h3>
									</div>
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label><i class="fa fa-inr"></i>175</label>
										</h3>
									</div>
								</div>
								<p>Autobiography of a Yogi introduces the reader to the life of Paramahansa Yogananda and his encounters with spiritual figures of both the East and West. 
								The book begins with his childhood family life, to finding his guru, to becoming a monk and establishing his teachings of Kriya Yoga meditation. 
								 </p>
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
							<img src="/BooksCart/resources/images/The Divine Romance.jpg" />
							<div class="caption">
								<div class="row">
									<div class="col-md-6 col-xs-6">
										<h3>The Divine Romance</h3>
									</div>
									<div class="col-md-6 col-xs-6 price">
										<h3>
											<label><i class="fa fa-inr"></i> 157 </label>
										</h3>
									</div>
								</div>
								<p> The Divine Romance includes over fifty talks and essays by Paramahansa Yogananda. 
								Readers will find these talks alive with the unique blend of all-embracing wisdom, 
								encouragement and love for humanity that have made the author one of our era's most trusted guides to the spiritual life.</p>
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