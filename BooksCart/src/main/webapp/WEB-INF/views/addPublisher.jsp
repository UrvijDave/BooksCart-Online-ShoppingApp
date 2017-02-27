<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/menu.jsp" %>


<div class="container">
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<div class="panel-body">
				<h1>Add Publisher</h1>
				<p class="text-info">Fill the below information to add a publisher:</p>
			</div>
			<div class="well">
				<form:form action="/BooksCart/admin/addPublisher" method="post"
					commandName="publisher" enctype="multipart/form-data">

					<div class="form-group">
						<label for="publishername">Publisher Name</label>
						<form:errors path="publishername" cssStyle="color: #ff0000;" />
						<form:input path="publishername" id="publishername"
							class="form-control" />
					</div>

					<div class="form-group">
						<label for="password">Password</label>
						<form:errors path="password" cssStyle="color: #ff0000;" />
						<form:input path="password" id="password" class="form-control" />
					</div>

					<div class="form-group">
						<label for="email">Email Address</label>
						<form:errors path="email" cssStyle="color: #ff0000;" />
						<form:input path="email" id="email" class="form-control" />
					</div>

					<div class="form-group">
						<label for="address">Address</label>
						<form:input path="address" id="address" class="form-control" />
					</div>

					<div class="form-group">
						<label for="mobile">Contact Details </label>
						<form:input path="mobile" id="mobile" class="form-control" />
					</div>

					<br>
					<br>
					<input type="submit" value="submit" class="btn btn-success">
					<a href="<c:url value="/admin/publisherInventory" />"
						class="btn btn-danger">Cancel</a>
				</form:form>
			</div>
		</div>
		<div class="col-sm-2"></div>
	</div>
</div>
