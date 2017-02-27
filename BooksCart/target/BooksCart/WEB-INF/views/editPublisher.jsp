<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/menu.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Publisher</h1>

            <p class="lead">Please update the publisher information here:</p>
        </div>

  <!--      <form:form action="${pageContext.request.contextPath}/admin/publisher/editPublisher" method="post"
                   commandName="publisher" enctype="multipart/form-data">   --> 
        <form:hidden path="publisherId" value="${publisher.publisherId}" />

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="publisherName" id="name" class="form-Control" value="${publisher.publisherName}"/>
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/publisherInventory" />" class="btn btn-default">Cancel</a>
        </form:form>


