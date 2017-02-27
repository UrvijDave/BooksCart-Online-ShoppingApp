<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/menu.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Detail</h1>

            <p class="lead">Here is the detail information of the customer!
            </p>
        </div>

        <div class="container" ng-app = "cartApp">
            

               <div class="form-group">
				<label for="customername">Customer Name</label>
				<form:errors path="customername" cssStyle="color: #ff0000;" />
				<form:input path="customername" id="customername" class="form-control" />
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<form:errors path="password" cssStyle="color: #ff0000;" />
				<form:input path="password" id="password" class="form-control" type="password"/>
			</div>

			<div class="form-group">
				<label for="email">Email</label>
				<form:errors path="customerEmail" cssStyle="color: #ff0000;" />
				<form:input path="customerEmail" id="customerEmail" class="form-control" />
			</div>

			<div class="form-group">
				<label for="address">Billing Address</label>
				<form:input path="billingAddress" id="billingAddress" class="form-control" />
			</div>
			
			<div class="form-group">
				<label for="address">Shipping Address</label>
				<form:input path="shippingAddress" id="shippingAddress" class="form-control" />
			</div>

			<div class="form-group">
				<label for="mobile">Mobile</label>
				<form:input path="customerPhone" id="customerPhone" class="form-control" />
			</div>
			
			<td>${customer.customername}</td>
                    <td>${customer.password}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.billingAddress}</td>
                    <td>${customer.shippingAddress}</td>
                    <td>${customer.customerPhone}</td>
                    
                    <br>

                    <!--<c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/customer/customerList" />
                    <c:if test="${role='admin'}"> -->
                        <c:set var="url" scope="page" value="/admin/customerInventory" />
                    </c:if>

                    <!--<p ng-controller="cartCtrl">
                        <a href="<c:url value="/customer/customerList/all" />" class="btn btn-default">Back</a>
                        <a href="#" class="btn btn-warning btn-large"
                           ng-click="addToCart('${customer.customerId}')"><span
                                class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>
                        <a href="<spring:url value="/customer/cart" />"
                           class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a>
                    </p> -->
                </div>
            </div>
        </div>
<br>
<br>
</div>
</div>

<br>
<br>
    <script src="<c:url value="/resources/js/controller.js" /> "></script>
    <!-- Angular JS -->
	<script type="text/javascript" src="<c:url value="/resources/js/angular.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/angular-resource.js"/>"></script>
	
	<script type="text/javascript" src="<c:url value="/resources/js/angular.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/controller.js" />"></script>
    
    Jquery
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-2.1.4.min.js"/>"></script>
	 --%>




<!-- NEW CODE FOR DESIGN -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Bitter'
	rel='stylesheet' type='text/css'>
<title>View ${customer.customerName}</title>
<jsp:include page="menu.jsp"></jsp:include>
<style type="text/css">
/* body{padding-top:30px;}

.glyphicon {  margin-bottom: 10px;margin-right: 10px;} */
small {
	display: block;
	line-height: 1.428571429;
	color: #999;
}
.info{
	padding:30px;
}
</style>
</head>
<body>
<br>
	
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-2"></div>
			<div class="col-xs-12 col-sm-8 col-md-8">
				<div class="well well-sm info">
					<div class="row">
						
						<div class="col-sm-12 col-md-12">
							<h3>${customer.customerName}</h3>
							<small><cite title="San Francisco, USA">							
								<i class="glyphicon glyphicon-map-marker"></i>
								${customer.billingAddress.apartmentNumber}, ${customer.billingAddress.streetName} <br>
								${customer.billingAddress.city}<br>
								${customer.billingAddress.state}, ${customer.billingAddress.country}<br>
								${customer.billingAddress.zipCode}
								
							</cite></small>
							<br><br>
							<p>
								<i class="glyphicon glyphicon-envelope"></i> <strong>Email: </strong> ${customer.customerEmail}<br />
								<br>
								
								<label><i class="glyphicon glyphicon-lock"></i> <strong>Password</strong></label>
								<div class="input-group">									
                        			<input value="${customer.password}" id="password_show" type="password" class="form-control" disabled>
                        			<span style="width:0%" id="password_show_button" class="input-group-addon"><i class="fa fa-eye-slash" aria-hidden="true"></i></span>
 								</div>	
 								<script>
 								$(document).ready(function(){
 		                            $("#password_show_button").mouseup(function(){
 		                                $("#password_show").attr("type", "password");
 		                            });
 		                            $("#password_show_button").mousedown(function(){
 		                                $("#password_show").attr("type", "text");
 		                            });
 		                        });
 								</script>							
							</p>							
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-2"></div>
		</div>
	</div>

</body>

</html>



















