<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
	


	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Add User</h1>

				<p class="lead">Fill the below information to add a User:</p>
			</div>

			<form:form action="/BooksCart/admin/addUser" method="post"
				commandName="user" enctype="multipart/form-data">
				<div class="form-group">
					<label for="name">Name</label>
					<form:errors path="userName" cssStyle="color: #ff0000;" />
					<form:input path="userName" id="name" class="form-Control" />
				</div>
				<div class="form-group">
					<label for="">user Email</label>
					<form:errors path="userEmail" cssStyle="color: #ff0000;" />
					<form:input path="userEmail" id="" class="form-Control" />
				</div>

				<div class="form-group">
					<label for="">Password</label>
					<form:errors path="Password" cssStyle="color: #ff0000;" />
					<form:input path="Password" id="" class="form-Control" />
				</div>
				
				<div class="form-group">
					<label for="">MobileNo</label>
					<form:errors path="MobileNo" cssStyle="color: #ff0000;" />
					<form:input path="MobileNo" id="" class="form-Control" />
				</div>
				<br>
				<br>
				<input type="submit" value="submit" class="btn btn-default">
				<a href="<c:url value="/admin/productInventory" />"
					class="btn btn-default">Cancel</a>
			</form:form>

		</div>
	</div>
</body>
</html>