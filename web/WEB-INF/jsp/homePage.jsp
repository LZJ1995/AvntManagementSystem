<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
	<script src="${pageContext.request.contextPath}/jquery/echarts.min.js"/>
<title>工作报告系统</title>
</head>
<body>
 	<c:import url="heardPage.jsp"></c:import>
<c:import url="menuBar.jsp"></c:import>
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
						<div style="height: 300px;width: 50%;float: left;text-align: center;background-color: inherit">
						<div class="panel-heading" style="width: 100%;height: 20%;margin-top: -10px">
							<h5 class="panel-title">设备信息</h5>
							<select class="input-sm">
									<option value="手机" selected="selected">手机</option>
									<option value="U盘">U盘</option>
									<option value="电将军">电将军</option>
									<option value="Vspy">Vspy</option>
									<option value="CONOE">CONOE</option>
									<option value="拆车工具">拆车工具</option>
							</select>
								<input class="input-sm" type="text" style="width: 200px" placeholder="请输入关键字搜索">
								<input type="button" class="btn btn-primary" value="搜索">

						</div>
					<div class="panel-body"  style="height:80%;width: 100%;" >
						<table class="table  table-bordered">
							<thead>
							<tr style="background-color: #1d7db1">
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
					<div class="table-responsive" style="height: 300px;width: 50% ;margin: 1px;text-align: center" >
						<div class="panel-heading" style="width: 100%;height: 20%;margin-top: -10px">
							<h5 class="panel-title">自定义链接</h5>
						<span>双击可编辑链接</span>
						</div>
						<div class="panel-body"  style="height:80%;width: 100%;" >

						</div>
					</div>
				</div>
				<br/>
				<div  style="height: 50%;width: 100%; background-color: #2b542c" >
					<%--使用echarts 制作报表--%>
					<div id="zenDataShow" class="table-responsive" style="height: 300px;width: 50%;float: left" >
					</div>
					<div class="table-responsive" style="height: 300px;width: 50%;float: left;text-align: center ">
						<table class="table  table-bordered">
							<thead>
							<tr>
								<td style="background-color: #1d7db1"><h5>公告信息</h5></td>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>
									第一条公告111111111111111111111111111111111111111
								</td>
							</tr>
							<tr>
								<td>
									第一条公告111111111111111111111111111111111111111
								</td>
							</tr>
							<tr>
								<td>
									第一条公告111111111111111111111111111111111111111
								</td>
							</tr>
							<tr>
								<td>
									第一条公告111111111111111111111111111111111111111
								</td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	var myChart = echarts.init(document.getElementById('zenDataShow'));
	var option = {
		title:{
			text:"禅道BUG数"
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