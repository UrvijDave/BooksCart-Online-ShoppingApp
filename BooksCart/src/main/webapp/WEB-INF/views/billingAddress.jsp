<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/menu.jsp"%>


<div class="container">
	<div class="row">
		<div class="page-header">
			<h1> Billing Address </h1>

			<p class="lead">Please fill the belowe informations to get registerted :</p>
		</div>
		<div class="well">
		<form:form action="/BooksCart/admin/addCustomer" method="POST"
			commandName="customer">
			
		
				<c:if test="${not empty message }">
					<div class="alert alert-danger">
						${message}
					</div>
				</c:if>
			
			

			<div class="form-group">
				<label for="streetName">Street Name</label>
				<form:errors path="streetName" cssStyle="color: #ff0000;" />
				<form:input path="streetName" id="streetName" class="form-control" />
			</div>

			<div class="form-group">
				<label for="apartmentNumber">Apartment Number</label>
				<form:errors path="apartmentNumber" cssStyle="color: #ff0000;" />
				<form:input path="apartmentNumber" id="apartmentNumber" class="form-control" />
			</div>

			<div class="form-group">
				<label for="city"> City </label>
				<form:errors path="city" cssStyle="color: #ff0000;" />
				<form:input path="city" id="city" class="form-control" />
			</div>

			<div class="form-group">
				<label for="state"> State</label>
				<form:input path="state" id="state" class="form-control" />
			</div>

			<div class="form-group">
				<label for="country"> Country </label>
				<form:input path="country" id="country" class="form-control" />
			</div>

			<div class="form-group">
				<label for="zipCode"> Zip Code </label>
				<form:input path="zipCode" id="zipCode" class="form-control" />
			</div>
			</div>
		
			<input type="submit" value="submit" class="btn btn-success">
			<a href="<c:url value="/" />" class="btn btn-danger">Cancel</a>
		</form:form>
			</div>
	</div>
</div>
