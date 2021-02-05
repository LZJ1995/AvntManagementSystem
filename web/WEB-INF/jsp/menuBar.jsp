<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<div class="tree">
					<li class="list-group-item"><span><i
							class="glyphicon glyphicon-th-large"></i> AVNT系统管理  </span>
						<ul class="nav nav-pills nav-stacked" style="margin-top: 10px;">
							<li class="active"><a
								href="${pageContext.request.contextPath}/homePage.do"><i
									class="glyphicon glyphicon-tags"></i> 首页</a></li>
							<li><a
								href="${pageContext.request.contextPath}/showDeviceManagement.do"><i
									class="glyphicon glyphicon-tags"></i> 设备管理</a></li>
							<li ><a
								href="${pageContext.request.contextPath}/showCarManagement.do"><i
									class="glyphicon glyphicon-tags"></i> 车辆管理</a></li>
							<li ><a
								href="${pageContext.request.contextPath}/showMaterielManagement.do"><i
									class="glyphicon glyphicon-tags"></i> 物料管理</a></li>

								<li ><a
									href="${pageContext.request.contextPath}/showBugManagement.do"><i
										class="glyphicon glyphicon-tags"></i> 禅道管理</a></li>
							<li ><a
									href="${pageContext.request.contextPath}/showNoticeManagement.do"><i
									class="glyphicon glyphicon-tags"></i> 公告管理</a></li>
										<li ><a
									href="${pageContext.request.contextPath}/showNewInformation.do"><i
										class="glyphicon glyphicon-tags"></i> 新增信息</a></li>
						</ul></li>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>