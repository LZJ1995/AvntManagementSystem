<%--
  Created by IntelliJ IDEA.
  User: ll
  Date: 2021/2/1
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <title>AVNT管理系统</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="shortcut icon" href="http://www.weather.com.cn/favicon.ico" type="image/x-icon" />
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
                        <li ><a
                                href="${pageContext.request.contextPath}/homePage.do"><i
                                class="glyphicon glyphicon-home"></i> 首页</a></li>
                        <li><a
                                href="${pageContext.request.contextPath}/showDeviceManagement.do"><i
                                class="glyphicon glyphicon-wrench"></i> 设备管理</a></li>
                        <li class="active"  ><a
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
                <i class="glyphicon glyphicon-th"></i> 车辆管理
            </h3>
        </div>
        <div class="panel-body" style="text-align: center">
            <form class="bs-example bs-example-form" role="form">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="请输入搜索关键字">
                        <span class="input-group-btn">
						<button class="btn btn-default" type="button">
							搜索
						</button>
					</span>
                        </div><!-- /input-group -->
                    </div>
                    <br/>
                    <br/>
                </div>
            </form>

            <table class="table table-hover " >
                <thead>
                <tr>
                    <th>车辆编号</th>
                    <th>所属项目</th>
                    <th>是否被借用</th>
                    <th>借用时间</th>
                    <th>归还时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>PVT_096</td>
                    <td>A39</td>
                    <td>是</td>
                    <td>2021/2/2</td>
                    <td>2021/2/4</td>
                    <td><div class="btn-group">
                        <button type="button" class="btn btn-default">查看详情</button>
                        <button type="button" class="btn btn-default">去借还</button>
                        <button type="button" class="btn btn-default">删除设备</button>
                    </div></td>
                </tr>
                <tr>
                    <td>PVT_027</td>
                    <td>A27</td>
                    <td>是</td>
                    <td>2021/2/2</td>
                    <td>2021/2/4</td>
                    <td><div class="btn-group">
                        <button type="button" class="btn btn-default">查看详情</button>
                        <button type="button" class="btn btn-default">去借还</button>
                        <button type="button" class="btn btn-default">删除设备</button>
                    </div></td>
                </tr>
                <tr>
                    <td>PVT_056</td>
                    <td>A5K</td>
                    <td>是</td>
                    <td>2021/2/2</td>
                    <td>2021/2/4</td>
                    <td><div class="btn-group">
                        <button type="button" class="btn btn-default">查看详情</button>
                        <button type="button" class="btn btn-default">去借还</button>
                        <button type="button" class="btn btn-default">删除设备</button>
                    </div></td>
                </tr>
                </tbody>
            </table>
            <ul class="pagination">
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
