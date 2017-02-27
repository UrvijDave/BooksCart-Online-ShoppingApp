<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/menu.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Customer</h1>

            <p class="lead">Please update the customer information here:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/customer/editCustomer" method="post"
                   commandName="customer" enctype="multipart/form-data">
        <form:hidden path="customerId" value="${customer.customerId}" />

        <div class="form-group">
				<label for="userrname">Customer Name</label>
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
                    

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/customerInventory" />" class="btn btn-default">Cancel</a>
        </form:form>


