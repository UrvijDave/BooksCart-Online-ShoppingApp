<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/menu.jsp"%>


<div class="container">
	<div class="row">
		<div class="page-header">
			<h1>Register Here</h1>

			<p class="lead">Fill the below information to add a user:</p>
		</div>
		<div class="well">
		<form:form action="/BooksCart/admin/addUser" method="POST"
			commandName="user">
			
		
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
				<label for="password">Password</label>
				<form:errors path="password" cssStyle="color: #ff0000;" />
				<form:input path="password" id="password" class="form-control" type="password"/>
			</div>

			<div class="form-group">
				<label for="email">Email</label>
				<form:errors path="email" cssStyle="color: #ff0000;" />
				<form:input path="email" id="email" class="form-control" />
			</div>

			<div class="form-group">
				<label for="address">Address</label>
				<form:input path="address" id="address" class="form-control" />
			</div>

			<div class="form-group">
				<label for="mobile">Mobile</label>
				<form:input path="mobile" id="mobile" class="form-control" />
			</div>

			</div>
		
			<input type="submit" value="submit" class="btn btn-success">
			<a href="<c:url value="/" />" class="btn btn-danger">Cancel</a>
		</form:form>
			</div>
	</div>
</div>

 --%>