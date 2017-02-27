<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/menu.jsp"%>


<div class="container">
	<div class="row">
		<div class="page-header">
			<h1>Register Here</h1>

			<p class="lead">Fill the below information to add a customer:</p>
		</div>
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
		<div class="well">
		<form:form action="/BooksCart/addCustomer" method="POST" commandName="customer">
			
		
			 <c:if test="${not empty message }">
					<div class="alert alert-danger">
						${message}
					</div>
				</c:if>
			 
			<div class="form-group">
				<label for="username">User Name</label>
				<form:errors path="username" cssStyle="color: #ff0000;" />
				<form:input path="username" id="username" class="form-control" />
			</div>

			<div class="form-group">
				<label for="customerName">Customer Name</label>
				<form:errors path="customerName" cssStyle="color: #ff0000;" />
				<form:input path="customerName" id="customerName" class="form-control" />
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<form:errors path="password" cssStyle="color: #ff0000;" />
				<form:input path="password" id="password" class="form-control" type="password"/>
			</div>

			<div class="form-group">
				<label for="email">Email Address</label>
				<form:errors path="customerEmail" cssStyle="color: #ff0000;" />
				<form:input path="customerEmail" id="customerEmail" class="form-control" />
			</div>
			<div class="form-group">
				<label for="mobile">Mobile</label>
				<form:input path="customerPhone" id="customerPhone" class="form-control" />
			</div>

			<h3><label for="address">Billing Address</label></h3>
			<div class="form-group">
				<label for="address">Apartment/House Number and Name </label>
				<form:input path="billingAddress.apartmentNumber" id="billingAddress.apartmentNumber" class="form-control" />
			</div>
			<div class="form-group">
				<label for="address">Street Name</label>	
				<form:input path="billingAddress.streetName" id="billingAddress.streetName" class="form-control" />
			</div>
			<div class="form-group">
				<label for="address"> City </label>	
				<form:input path="billingAddress.city" id="billingAddress.city" class="form-control" />
			</div>	
				<div class="form-group">
				<label for="address"> Zipcode </label>	
				<form:input path="billingAddress.zipCode" id="billingAddress.zipCode" class="form-control" />
			</div>	
				<div class="form-group">
				<label for="address"> State </label>	
				<form:input path="billingAddress.state" id="billingAddress.state" class="form-control" />
			</div>
			<div class="form-group">
				<label for="address"> Country </label>		
				<form:input path="billingAddress.country" id="billingAddress.country" class="form-control" />
			</div>
			
			
			
								<!-- SHIPPING ADDRESS DETAILS -->
			
			
			<div class="form-group">
				<h3><label for="address">Shipping Address</label></h3>
				
			<div class="form-group">
				<label for="address">Apartment/House Number and Name </label>
				<form:input path="shippingAddress.apartmentNumber" id="shippingAddress.apartmentNumber" class="form-control" />
			</div>
			<div class="form-group">
				<label for="address">Street Name</label>	
				<form:input path="shippingAddress.streetName" id="shippingAddress.streetName" class="form-control" />
			</div>
			<div class="form-group">
				<label for="address"> City </label>	
				<form:input path="shippingAddress.city" id="shippingAddress.city" class="form-control" />
			</div>	
				<div class="form-group">
				<label for="address"> Zipcode </label>	
				<form:input path="shippingAddress.zipCode" id="shippingAddress.zipCode" class="form-control" />
			</div>	
				<div class="form-group">
				<label for="address"> State </label>	
				<form:input path="shippingAddress.state" id="shippingAddress.state" class="form-control" />
			</div>
			<div class="form-group">
				<label for="address"> Country </label>		
				<form:input path="shippingAddress.country" id="shippingAddress.country" class="form-control" />
			</div>	
			</div>
			<input type="submit" value="submit" class="btn btn-success">
			<a href="<c:url value="/" />" class="btn btn-danger">Cancel</a>
		</form:form>
			</div>
			</div>
			<div class="col-sm-2"></div>
	</div>
