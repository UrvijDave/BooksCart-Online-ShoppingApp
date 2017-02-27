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
            <h1>All Users</h1>

            <p class="lead">Checkout all the awesome users available now!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>User Id</th>
                <th>User Name</th>
                <th>Password</th>
                <th>Email Address</th>
                <th>View/Delete/Edit </th>
            </tr>
            </thead>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><img src="<c:url value="/resources/images/${user.userId}.jpg" /> " alt="image"
                             style="width:100%"/></td>
                    <td>${user.userName}</td>
                    <td>${user.userId}</td>
                    <td>${user.userPassword}</td>
                    <td>${user.userEmailAddress}</td>
                    <td><a href="<spring:url value="/user/viewUser/${user.userId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>
        </table>

