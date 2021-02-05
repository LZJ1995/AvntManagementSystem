<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>AVNT管理系统</title>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="shortcut icon" href="http://www.weather.com.cn/favicon.ico" type="image/x-icon" />
	<script src="${pageContext.request.contextPath}/jquery/jquery-2.1.1.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
 	<c:import url="heardPage.jsp"></c:import>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<div class="tree">
					<li class="list-group-item"><span><i
							class="glyphicon glyphicon-th-large"></i> AVNT管理系统  </span>
						<ul class="nav nav-pills nav-stacked" style="margin-top: 10px;">
							<li class="active"><a
									href="${pageContext.request.contextPath}/homePage.do"><i
									class="glyphicon glyphicon-home"></i> 首页</a></li>
							<li><a
									href="${pageContext.request.contextPath}/showDeviceManagement.do"><i
									class="glyphicon glyphicon-wrench"></i> 设备管理</a></li>
							<li ><a
									href="${pageContext.request.contextPath}/showCarManagement.do"><i
									class="glyphicon glyphicon-dashboard"></i> 车辆管理</a></li>
							<li ><a
									href="${pageContext.request.contextPath}/showMaterielManagement.do"><i
									class="glyphicon glyphicon-cog"></i> 物料管理</a></li>

							<li ><a
									href="${pageContext.request.contextPath}/showBugManagement.do"><i
									class="glyphicon glyphicon-globe"></i> 禅道管理</a></li>
							<li ><a
									href="${pageContext.request.contextPath}/showNoticeManagement.do"><i
									class="	glyphicon glyphicon-bullhorn"></i> 公告管理</a></li>
							<li ><a
									href="${pageContext.request.contextPath}/showNewInformation.do"><i
									class="glyphicon glyphicon-tags"></i> 新增信息</a></li>
						</ul></li>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title" style="font-weight: bold; font-size: 20px">
					<i class="glyphicon glyphicon-th"></i>首页
				</h3>
			</div>
			<div class="panel-body">
				<div  style="height: 50%;width: 100%;" >
					<%--设备信息div--%>
						<div class="panel panel-default" style="height: 300px;width: 50%;float: left;text-align: center;background-color: inherit">
						<div class="panel-heading">
							<h3 class="panel-title">设备信息</h3>
						</div>
					<div class="panel-body" >
						<table class="table table-hover">
							<thead>
							<tr>
								<td colspan="5"><select class="input-sm">
									<option value="手机" selected="selected">手机</option>
									<option value="U盘">U盘</option>
									<option value="电将军">电将军</option>
									<option value="Vspy">Vspy</option>
									<option value="CONOE">CONOE</option>
									<option value="拆车工具">拆车工具</option>
								</select>
									<input class="input-sm" type="text" style="width: 200px" placeholder="请输入关键字搜索">
									<input type="button" class="btn btn-default" value="搜索"></td>
							</tr>
							<tr>
								<td>设备名</td>
								<td>库存</td>
								<td>已借用</td>
								<td>可借用</td>
								<td>操作</td>
							</tr>
							</thead>
						<tbody>
						<tr ><td colspan="5">暂未设备</td>
						</tr>
						</tbody>
						</table>
					</div>
						</div>
					<%--自定义链接div--%>
					<div class="panel panel-default" style="height: 300px;width: 50% ;text-align: center;float: right" >
						<div class="panel-heading">
							<h5 class="panel-title">自定义链接</h5>
						</div>
						<div class="panel-body" >
							暂未开发。。。。。
						</div>
					</div>
				</div>
				<br/>
				<div  style="height: 50%;width: 100%; background-color: #2b542c" >
					<%--使用echarts 制作禅道数据报表--%>
						<div class="panel panel-default" style="height: 300px;width: 50%;float: left;text-align: center " >
							<div class="panel-heading">
									<h3 class="panel-title">禅道数据</h3>
							</div>
							<div class="panel-body">
								<div id="chandaoDataShow" class="table-responsive" style="height: 300px;width: 100%;">
								</div>
							</div>
						</div>

						<%--公告栏--%>
					<div class="panel panel-default" style="height: 300px;width: 50%;float: right;text-align: center ">
						<div class="panel-heading">
							<h3 class="panel-title">
								公告信息
							</h3>
						</div>
						<div class="panel-body">
							<table class="table table-hover">
								<thead>
									<tr>
										<td>序号</td>
										<td>内容</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>今天天气不错，适合遛弯</td>
									</tr>
									<tr>
										<td>2</td>
										<td>今年过年不回家！</td>
									</tr>
									<tr>
										<td>3</td>
										<td>去哪里玩呢！</td>
									</tr>
									<tr>
										<td>4</td>
										<td>出去旅游不咯！</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	var myChart = echarts.init(document.getElementById("chandaoDataShow"));
	var option = {
		title:{
			text:""
		},
		tooltip: {},
		xAxis:{
			data:['A26','A3K','A55','A39','A27','A26-T']
		},
		yAxis:{
		},
		legend: {
			data:['BUG数']
		},
		series : [
			{
				name: 'BUG数',
				type: 'line',
				data:[100,250,350,750,236,241]
			}
		]
	};
	myChart.setOption(option);
</script>
</html>