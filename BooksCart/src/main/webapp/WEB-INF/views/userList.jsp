<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

            <p class="lead">Welcome to the Page</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
               
                <th>User Name</th>
                <th>Password</th>
                <th>Email</th>
                <th>Address</th>
                <th>Mobile</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${users}" var="user">
                <tr>
                     <td>${user.userName}</td>
                    <td>${user.Password}</td>
                    <td>${user.Email}</td>
                    <td>${user.Address}</td>
                    <td>${user.Mobile}</td>
                    <td><a href="<spring:url value="/admin/userList/${user.userId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>
        </table>

 --%>