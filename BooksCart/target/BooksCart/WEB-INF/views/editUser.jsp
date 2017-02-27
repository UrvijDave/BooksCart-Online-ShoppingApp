<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/menu.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit User</h1>

            <p class="lead">Please update the user information here:</p>
        </div>

  <!--      <form:form action="${pageContext.request.contextPath}/admin/user/editProduct" method="post"
                   commandName="user" enctype="multipart/form-data">   --> 
        <form:hidden path="userId" value="${user.userId}" />

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="userName" id="name" class="form-Control" value="${user.userName}"/>
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/userInventory" />" class="btn btn-default">Cancel</a>
        </form:form>