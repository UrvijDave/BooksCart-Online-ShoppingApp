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

<style>
	.prod-img{
		width: 100%;
    max-width: 100px;
    max-height: 100px;
    object-fit: cover;
	}
</style>
<div class="table-responsive">
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Product Inventory Page</h1>

				<p class="lead">This is the product inventory page!</p>
			</div>

			<table class="table table-striped table-hover">
				<thead>
					<tr class="success">
						<th>Photo Thumb</th>
						<th>Product Name</th>
						<th>Description</th>
						<th>Condition</th>
						<th>Price</th>
						<th>View/Edit/Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${products}" var="product">


						<tr>
							<td><img
								src="<c:url value="../resources/images/${product.productId}.jpg" /> "
								alt="image" style="width: 100%" class="prod-img"/></td>
							
							<td>${product.productName}</td>
							<td>${product.productDescription}</td>
							<td>${product.productCondition}</td>
							<td>${product.productPrice}INR</td>
							<td><a
								href="<spring:url value="/product/viewProduct/${product.productId}" />"><span
									class="glyphicon glyphicon-info-sign"></span></a> <a
								href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span
									class="glyphicon glyphicon-pencil"></span></a> <a
								href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span
									class="glyphicon glyphicon-remove"></span></a></td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</div>
</div>