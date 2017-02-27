<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ include file="/WEB-INF/views/menu.jsp"%>

<html>
<head>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">


<script type="text/javascript"
	src="<c:url value="/resources/js/angular.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/angular-resource.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/angular.min.js"/>"></script>
	
<script type="text/javascript"
	src="<c:url value="/resources/js/controller.js" />"></script>

<%--Jquery--%>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-2.1.4.min.js"/>"></script>


</head>
<body>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Product Detail</h1>

			<p class="lead">Here is the detail information of the product!</p>
		</div>

		<div class="container" ng-app="cartApp">
			<div class="row">
				<div class="col-md-5">
					<img
						src="<c:url value="/resources/images/${product.productId}.jpg" /> "
						alt="image" style="width: 100%; max-width:300px" />
				</div>

				<div class="col-md-5">
					<h3>${product.productName}</h3>
					<p>${product.productDescription}</p>
					<p>
						<strong>Manufacturer</strong> : ${product.productManufacturer}
					</p>
					<p>
						<strong>Category</strong> : ${product.productCategory}
					</p>
					<p>
						<strong>Condition</strong> : ${product.productCondition}
					</p>
					<h4>${product.productPrice}
						<i class="fa fa-inr"></i>
					</h4>
					<br>

					<c:set var="role" scope="page" value="${param.role}" />
					<c:set var="url" scope="page" value="/product/productList" />
					<c:if test="${role='admin'}">
						<c:set var="url" scope="page" value="/admin/productInventory" />
					</c:if>

					<p ng-controller="cartCtrl">
						<a href="<c:url value="/product/productList/all" />"
							class="btn btn-default">Back</a> 
							
							<a href="" class="btn btn-warning btn-large"
                           ng-click="addToCart('${product.productId}')"><span
                                class="glyphicon glyphicon-shopping-cart"></span> Order Now</a> 
							
							<a href="<spring:url value="/customer/cart" />"
							class="btn btn-default"><span
							class="glyphicon glyphicon-hand-right"></span>View Cart</a>
					</p>
				</div>
			</div>
		</div>
		<br> <br>
	</div>
</div>

<br>
<br>
<!-- Angular JS -->
<script type="text/javascript"
	src="<c:url value="/resources/js/angular.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/angular-resource.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/angular.min.js"/>"></script>
	
<script type="text/javascript"
	src="<c:url value="/resources/js/controller.js" />"></script>

<%--Jquery--%>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-2.1.4.min.js"/>"></script>

</body>
</head>
</html>
