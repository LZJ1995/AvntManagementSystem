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
    <title>张三</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">

</head>
<body>
<c:import url="heardPage.jsp"></c:import>
<c:import url="menuBar.jsp"></c:import>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title" style="font-weight: bold; font-size: 20px">
                <i class="glyphicon glyphicon-th"></i> 设备管理
            </h3>
        </div>
        <div class="panel-body" style="text-align: center">
            <form class="bs-example bs-example-form" role="form">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
					<span class="input-group-addon">
					<select  id="car_Temporary">
                                            <option>手机</option>
                                            <option>U盘</option>
                    </select>
					</span>
                            <input type="text" class="form-control" placeholder="请输入搜索关键字">
                            <span class="input-group-addon">
						<button class="" type="button">
							Go!
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
                    <th>设备品牌</th>
                    <th>设备类型</th>
                    <th>是否被借用</th>
                    <th>借用时间</th>
                    <th>归还时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>华为</td>
                    <td>手机</td>
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
                    <td>华为</td>
                    <td>手机</td>
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
                    <td>华为</td>
                    <td>手机</td>
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
