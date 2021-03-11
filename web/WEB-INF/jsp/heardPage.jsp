<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <img class="navbar-left img-rounded" alt="logo" src="${pageContext.request.contextPath}/imager/logo.png" height="50px" style="margin-top:2px;margin-bottom: 2px;margin-right: 20px">
            <span class="navbar-brand">AVNT管理系统</span>
        </div>

            <ul class="nav navbar-nav navbar-right">

              <c:if test="${empty sessionScope.staff}">
                    <li class="active"><a style="pointer-events: none;" href="#">未登录</a></li>
             </c:if>
               <c:if test="${!empty sessionScope.staff }">
                <li><a style="pointer-events: none;"  href="#">${sessionScope.staff.staffCompany}</a></li>
                <li><a style="pointer-events: none;" href="#">测试工程师</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-user"></span> ${sessionScope.staff.staffName} <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">个人资料</a></li>
                        <li><a href="#">设置</a></li>
                        <li class="divider"></li>
                        <li><a href="#">退出登录</a></li>
                    </ul>
                </li>
           </c:if>
            </ul>
    </div>
</nav>

<%--	<div class="container-fluid">
		<img class="navbar-left" alt="logo" src="${pageContext.request.contextPath}/imager/logo.png" height="50px" style="margin-top:2px;margin-bottom: 2px;margin-right: 20px">
		<span class="navbar-brand" style="font-size: 32px;">AVNT管理系统 </span>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${empty sessionScope.staff}">
					<li style="padding-top: 8px; margin-right: 20px"><label style="color: orange;"
					>未登录</label></li>
				</c:if>
				<c:if test="${!empty sessionScope.staff }">
					<li style="margin-left: 10px; padding-top: 8px; padding-right: 8px">
						<span class="navbar-brand" style="font-size: 14px;">公司:${sessionScope.staff.staffCompany}
					</span></li>

					<li style="padding-top: 8px;"><a style="color: orange;"
													 href="${pageContext.request.contextPath}/empController/showempinfo.do"> 姓名:${sessionScope.staff.staffName}</a></li>
					<li style="margin-left: 10px; padding-top: 8px; padding-right: 8px">
						<a href="${pageContext.request.contextPath}/dailyController/exit.do" style="color: red;">退出系统</a>
					<li style="margin-left: 10px; padding-top: 8px; padding-right: 8px">
					</li>
				</c:if>
			</ul>
		</div>
	</div>--%>
