<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/menu.jsp"%>

<script>
    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[5,10,-1], [5,10, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });

</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Customers</h1>

            <p class="lead">Welcome to the Page</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
               
                <th>Customer Name</th>
                <th>Password</th>
                <th>Email</th>
                <th>Address</th>
                <th>Mobile</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${customers}" var="customer">
                <tr>
                     <td>${customer.customername}</td>
                    <td>${customer.password}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.billingAddress}</td>
                    <td>${customer.shippingAddress}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.enabled}</td>
                    <td><a href="<spring:url value="/admin/customerList/${customer.customerId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>
        </table>

</div></div>