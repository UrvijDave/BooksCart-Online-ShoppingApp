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
				<h1>Publisher Inventory Page</h1>

				<p class="lead">This is  publisher inventory page!</p>
			</div>

			<table class="table table-striped table-hover">
				<thead>
					<tr class="success">
						
						<th>Publisher_Id</th>
						<th>Publisher_Name</th>
						<th>Email_Address</th>
						<th>Password</th>
						<th>Mobile No</th>
						<th>View/Edit/Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${publishers}" var="publisher">


						<tr> 
							<td>${publisher.publisherId}</td>
							<td>${publisher.publisherName}</td>
							<td>${publisher.publisherEmail}</td>
							<td>${publisher.password}</td>
							<td>${publisher.mobileNo}</td>
							<td><a
								href="<spring:url value="/publisher/viewPublisher/${publisher.publisherId}" />"><span
									class="glyphicon glyphicon-info-sign"></span></a> <a
								href="<spring:url value="/admin/publisher/editPublisher/${publisher.publisherId}" />"><span
									class="glyphicon glyphicon-pencil"></span></a> <a
								href="<spring:url value="/admin/publisher/deletePublisher/${publisher.publisherId}" />"><span
									class="glyphicon glyphicon-remove"></span></a></td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</div>
</div>