<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
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
		</div>
	</div>
