<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/menu.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Publisher Detail</h1>

            <p class="lead">Here is the detail information of the publisher!
            </p>
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.jpg" /> " alt="image"
                             style="width:100%"/>
                </div>

                <div class="col-md-5">
                    <h3>${publisher.publisherName}</h3>
                    <p>${publisher.publisherDescription}</p>
                    
                    <br>
                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/publisher/publisherList" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/publisherInventory" />
                    </c:if>

                </div>
            </div>
        </div>
<br>
<br>
</div>
</div>

<br>
<br>
    <script src="<c:url value="/resources/js/controller.js" /> "></script>
    <!-- Angular JS -->
	<script type="text/javascript" src="<c:url value="/resources/js/angular.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/angular-resource.js"/>"></script>
	
	<script type="text/javascript" src="<c:url value="/resources/js/angular.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/controller.js" />"></script>
    
    <%--Jquery--%>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-2.1.4.min.js"/>"></script>
	
