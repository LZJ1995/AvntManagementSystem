<%--
  Created by IntelliJ IDEA.
  User: ll
  Date: 2021/2/1
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>AVNT管理系统</title>
    <script src="${pageContext.request.contextPath}/jquery/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/jquery/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/jquery/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="shortcut icon" href="http://www.weather.com.cn/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
</head>
<script>
    $(function () {
    })

    function changePageno(pageno) {
        window.location.href = "${pageContext.request.contextPath}/searchAll.do?presentPages=" + pageno + "&" + "searchContent=" + "${searchContent}";
    }
    function viewDetails(id) {
        $.ajax({
            async : true,
            url : "${pageContext.request.contextPath}/showDeviceInfo.do",
            type : "POST",
            data : {
                "deviceId":id
            },
            success : function(data) {
                if (data.deviceStatus=="是"){
                    $("#return").show();
                    $("#borrow").hide();
                }else {
                    $("#return").hide();
                    $("#borrow").show();
                }
                $("#list").html('');
                $("#list").html($("#list").html() +"<dt>设备品牌</dt><dd>"+data.deviceName+"</dd>\n" +
                    "                <dt>设备类型</dt>\n" +
                    "                <dd>"+data.deviceType+"</dd>\n" +
                    "                <dt>是否被借用</dt>\n" +
                    "                <dd>"+data.deviceStatus+"</dd>\n" +
                    "                <dt>借用时间</dt>\n" +
                    "                <dd>"+data.borrowTime+"</dd>\n" +
                    "                <dt>归还时间</dt>\n" +
                    "                <dd>"+data.borrowReturntime+"</dd>\n" +
                    "                <dt>设备版本或者格式</dt>\n" +
                    "                <dd>"+data.deviceVersionFormat+"</dd>\n" +
                    "                <dt>设备入库时间</dt>\n" +
                    "                <dd>"+new Date(data.deviceCreateTime).toLocaleString()+"</dd>\n" +
                    "                <dt>手机型号</dt>\n" +
                    "                <dd>"+data.deviceModel+"</dd>\n" +
                    "                <dt>手机MEID</dt>\n" +
                    "                <dd>"+data.deviceMeid+"</dd>\n" +
                    "                <dt>手机IMEI</dt>\n" +
                    "                <dd>"+data.deviceImei+"</dd>\n" +
                    "                <dt>内存大小</dt>\n" +
                    "                <dd>"+data.deviceMemory+"</dd>\n" +
                    "                <dt>手机账号密码</dt>\n" +
                    "                <dd>"+data.deviceAccountPassword+"</dd>\n" +
                    "                <dt>手机号码</dt>\n" +
                    "                <dd>"+data.devicePhone+"</dd>\n" +
                    "                <dt>备注</dt>\n" +
                    "                <dd>"+data.deviceRemarks+"</dd>");


            }
        })
    }

</script>
<body>
<c:import url="heardPage.jsp"></c:import>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <div class="tree">
                <li class="list-group-item"><span><i
                        class="glyphicon glyphicon-th-large"></i> AVNT管理系统  </span>
                    <ul class="nav nav-pills nav-stacked" style="margin-top: 10px;">
                        <li><a
                                href="${pageContext.request.contextPath}/homePage.do"><i
                                class="glyphicon glyphicon-home"></i> 首页</a></li>
                        <li class="active"><a
                                href="${pageContext.request.contextPath}/searchAll.do"><i
                                class="glyphicon glyphicon-wrench"></i> 资源管理</a></li>
                        <li><a
                                href="${pageContext.request.contextPath}/showCarManagement.do"><i
                                class="glyphicon glyphicon-dashboard"></i> 车辆管理</a></li>
                        <li><a
                                href="${pageContext.request.contextPath}/showMaterielManagement.do"><i
                                class="glyphicon glyphicon-cog"></i> 物料管理</a></li>

                        <li><a
                                href="${pageContext.request.contextPath}/showBugManagement.do"><i
                                class="glyphicon glyphicon-globe"></i> 禅道管理</a></li>
                        <li><a
                                href="${pageContext.request.contextPath}/showNoticeManagement.do"><i
                                class="	glyphicon glyphicon-bullhorn"></i> 公告管理</a></li>
                        <li><a
                                href="${pageContext.request.contextPath}/showNewInformation.do"><i
                                class="glyphicon glyphicon-tags"></i> 新增信息</a></li>
                    </ul>
                </li>
            </div>
        </div>
    </div>
</div>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title" style="font-weight: bold; font-size: 20px">
                <i class="glyphicon glyphicon-th"></i> 资源管理
            </h3>
        </div>
        <div class="panel-body" style="text-align: center">
            <form class="bs-example bs-example-form" role="form"
                  action="${pageContext.request.contextPath}/searchAll.do">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="请输入搜索关键字" id="searchContent"
                                   name="searchContent">
                            <span class="input-group-btn">
						<button class="btn btn-default" type="submit" id="search">
							搜索
						</button>
					</span>
                        </div>
                    </div>
                    <br/>
                    <br/>
                </div>
            </form>
            <table class="table table-hover ">
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
                <c:if test="${!empty AlldeviceInfo.datas}">
                    <c:forEach items="${AlldeviceInfo.datas}" var="device">
                        <tr>
                            <td>${device.deviceName}</td>
                            <td>${device.deviceType}</td>
                            <td>${device.deviceStatus}</td>
                            <td>2021/2/2</td>
                            <td>2021/2/4</td>
                            <td>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" data-target="#myModal"
                                            data-toggle="modal" onclick="viewDetails(${device.deviceId})">查看详情
                                    </button>
                                    <button type="button" class="btn btn-default">删除设备</button>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>
                <c:if test="${empty AlldeviceInfo.datas}">
                    <tr style="align-content: center">
                        <td colspan="6">暂无内容</td>
                    </tr>
                </c:if>
                </tbody>
            </table>
            <ul class="pagination">
                <c:if test="${AlldeviceInfo.presentPages == 1}">
                    <li class="disabled"><a class="weath" href="">上一页</a></li>
                </c:if>
                <c:if test="${AlldeviceInfo.presentPages != 1}">
                    <li><a href="#"
                           onclick="changePageno(${AlldeviceInfo.presentPages-1})">上一页</a></li>
                </c:if>
                <c:forEach begin="1" end="${ AlldeviceInfo.totalPages}"
                           var="num">
                    <li <c:if test="${AlldeviceInfo.presentPages eq num }">class="active"</c:if>>
                        <a href="#" onclick="changePageno(${num})">${num}</a>
                    </li>

                </c:forEach>

                <c:if
                        test="${AlldeviceInfo.presentPages != AlldeviceInfo.totalPages}">
                    <li><a href="#"
                           onclick="changePageno(${AlldeviceInfo.presentPages+1})">下一页</a></li>
                </c:if>
                <c:if
                        test="${AlldeviceInfo.presentPages == AlldeviceInfo.totalPages}">
                    <li class="disabled"><a class="weath" href="">下一页</a></li>
                </c:if>
            </ul>
        </div>
    </div>
</div>
<%--查看详情模态弹窗--%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">资源详情</h4>
            </div>
            <div class="modal-body">
                <div class="panel panel-info">
                    <div class="panel-body">
                        <dl class="dl-horizontal info" id="list">
                        </dl>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button id="borrow" type="button" class="btn btn-primary">借用</button>
                <button id="return" type="button" class="btn btn-primary">归还</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>
