<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/menu.jsp"%>

<script>
	$(document).ready(
			function() {

				$('.table').DataTable(
						{
							"lengthMenu" : [ [ 1, 2, 3, 5, 10, -1 ],
									[ 1, 2, 3, 5, 10, "All" ] ]
						});
			});
</script>
<!-- <script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script> -->
<div class="table-responsive">
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>User Inventory Page</h1>

				<p class="lead">This is the user inventory page!</p>
			</div>

			<table class="table table-striped table-hover">
				<thead>
					<tr class="success">
						
						<th>User Name</th>
						<th>Email Address</th>
						<th>password</th>
						<th>mobile No</th>
						<th>View/Edit/Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users}" var="user">


						<tr>
							
							<td>${user.userName}</td>
							<td>${user.userEmail}</td>
							<td>${user.password}</td>
							<td>${user.mobileNo}</td>
							<td><a
								href="<spring:url value="/admin/user/viewUser/${user.userId}" />"><span
									class="glyphicon glyphicon-info-sign"></span></a> <a
								href="<spring:url value="/admin/user/editUser/${user.userId}" />"><span
									class="glyphicon glyphicon-pencil"></span></a> <a
								href="<spring:url value="/admin/user/deleteUser/${user.userId}" />"><span
									class="glyphicon glyphicon-remove"></span></a></td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</div>
</div>