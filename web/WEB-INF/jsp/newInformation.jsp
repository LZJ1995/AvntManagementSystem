<%--
  Created by IntelliJ IDEA.
  User: ll
  Date: 2021/2/1
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>AVNT管理系统</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://blog-static.cnblogs.com/files/china-li/jquery.form.js"></script>
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
                                href="${pageContext.request.contextPath}/searchAll.do"><i
                                class="glyphicon glyphicon-wrench"></i> 资源管理</a></li>
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
                        <li class="active" ><a
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
                <i class="glyphicon glyphicon-th"></i> 新增信息
            </h3>
        </div>
        <div class="panel-body">
             <ul  class="nav nav-tabs">
                 <li class="active"><a href="#device" data-toggle="tab">资源</a></li>
                 <li><a href="#newStaff" data-toggle="tab">员工</a></li>
                 <li><a href="#newMateriel" data-toggle="tab">物料</a></li>
                 <li><a href="#newCar" data-toggle="tab">实车</a></li>
                 <li><a href="#newNotice" data-toggle="tab">公告</a></li>
                 <li><a href="#newBug" data-toggle="tab">禅道bug信息</a></li>
             </ul>
            <div class="tab-content">
                <div class="tab-pane fade in active" id="device" >
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="text-align: center">新增资源</h3>
                        </div>
                            <div class="panel-body">
                            <form:form id="deviceInfo" modelAttribute="devices" method="post" class="form-horizontal" role="form" action="${pageContext.request.contextPath}/addDeviceInfo">
                                <div class="form-group" style="text-align: center">
                                    <label for="deviceName" class="col-sm-2 control-label">资源名称</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" class="form-control" id="deviceName" path="deviceName"
                                               placeholder="请输入设备品牌、华为、联想、金士顿等" style="width: 50%"/>
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="deviceType" class="col-sm-2 control-label">资源类型</label>
                                    <div class="col-sm-10">
                                        <form:select class="form-control" onchange="typeSelect()" path="deviceType" id="deviceType" style="width: 30%">
                                            <option>手机</option>
                                            <option>U盘</option>
                                            <option>CAN工具</option>
                                            <option>拆车工具</option>
                                            <option>其他</option>
                                        </form:select>
                                    </div>
                                </div>
                                <div id="version" class="form-group" style="text-align: center" >
                                    <label for="deviceVersionFormat" class="col-sm-2 control-label">资源版本或者格式</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" class="form-control" id="deviceVersionFormat" path="deviceVersionFormat"
                                               placeholder="请输入设备版本或格式：安卓9、U盘格式等" style="width: 50%"/>
                                    </div>
                                </div>
                                <div id="memory" class="form-group" style="text-align: center">
                                    <label for="deviceMemory" class="col-sm-2 control-label">内存大小</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" class="form-control" id="deviceMemory" path="deviceMemory"
                                               placeholder="请输入手机、U盘内存大小" style="width: 50%"/>
                                    </div>
                                </div>
                                <%--手机相关信息--%>
                                <div id="model" class="form-group" style="text-align: center">
                                    <label for="deviceModel" class="col-sm-2 control-label">手机型号</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" class="form-control" id="deviceModel" path="deviceModel"
                                               placeholder="请输入手机型号" style="width: 50%"/>
                                    </div>
                                </div>
                                <div id="mied" class="form-group" style="text-align: center">
                                    <label for="deviceMeid" class="col-sm-2 control-label">手机MEID</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" class="form-control" id="deviceMeid" path="deviceMeid"
                                               placeholder="请输入手机MEID" style="width: 50%"/>
                                    </div>
                                </div>
                                <div id="imei" class="form-group" style="text-align: center">
                                    <label for="deviceImei" class="col-sm-2 control-label">手机IMEI</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" class="form-control" id="deviceImei" path="deviceImei"
                                               placeholder="请输入手机MEID" style="width: 50%"/>
                                    </div>
                                </div>
                                <div id="account" class="form-group" style="text-align: center">
                                    <label for="deviceAccountPassword" class="col-sm-2 control-label">手机账号密码</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" class="form-control" id="deviceAccountPassword" path="deviceAccountPassword"
                                               placeholder="请输入手机登录、解锁账号密码" style="width: 50%"/>
                                    </div>
                                </div>
                                <div id="Phone" class="form-group" style="text-align: center">
                                    <label for="devicePhone" class="col-sm-2 control-label">手机号码</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" class="form-control" id="devicePhone" path="devicePhone"
                                               placeholder="请输入当前手机号码" style="width: 50%"/>
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="devicePhone" class="col-sm-2 control-label">备注</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" class="form-control" id="deviceRemarks" path="deviceRemarks"
                                                    placeholder="请输入当前手机号码" style="width: 50%"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default" id="submitDevice" >提交信息</button>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="newStaff">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="text-align: center">新增员工</h3>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" role="form">
                                <div class="form-group" style="text-align: center">
                                    <label for="staff_Name" class="col-sm-2 control-label">员工姓名</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="staff_Name"
                                               placeholder="请输入员工姓名" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="staff_Account" class="col-sm-2 control-label">员工账号</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="staff_Account"
                                               placeholder="请输入员工登录账号" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="staff_Password" class="col-sm-2 control-label">员工密码</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="staff_Password"
                                               placeholder="请输入员工登录密码" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="staff_Telephone" class="col-sm-2 control-label">员工联系方式</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="staff_Telephone"
                                               placeholder="请输入员工联系方式" style="width: 50%">
                                    </div>
                                </div>
                                <%--手机相关信息--%>
                                <div class="form-group" style="text-align: center">
                                    <label for="staff_Company" class="col-sm-2 control-label">所属公司</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="staff_Company"
                                               placeholder="请输入员工所属公司名" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="staff_Email" class="col-sm-2 control-label">公司邮箱</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="staff_Email"
                                               placeholder="请输入员工所属公司邮箱" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">提交信息</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="newMateriel">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="text-align: center">新增物料</h3>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/importMaterielInfo" method="POST" onsubmit=" return submitMateriel()" enctype="multipart/form-data">
                                <div class="form-group" style="text-align: center">
                                    <label for="materielProject" class="col-sm-2 control-label">物料项目</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="materielProject" name="materielProject"
                                               placeholder="请输入物料所属项目" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="materielName" class="col-sm-2 control-label">物料名称</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="materielName" name="materielName"
                                               placeholder="请输入物料名称" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="materielTotal" class="col-sm-2 control-label">入库数量</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="materielTotal" name="materielTotal"
                                               placeholder="请输入物料入库数量" style="width: 20%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="materielPosition" class="col-sm-2 control-label">物料位置</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="materielPosition" name="materielPosition"
                                               placeholder="请输入物料所在货架位置" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="materielType" class="col-sm-2 control-label">物料分类</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="materielType" name="materielType"
                                               placeholder="请输入物料分类、如仪表、屏幕、按键等！" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="materielType" class="col-sm-2 control-label">导入数据</label>
                                    <div class="col-sm-10">
                                        <input type="file" class="form-control" id="importMateriel" name="importMateriel"
                                               placeholder="" style="width: 30%">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">提交信息</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="newCar">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="text-align: center">新增车辆信息</h3>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" role="form">
                                <div class="form-group" style="text-align: center">
                                    <label for="car_Number" class="col-sm-2 control-label">车辆编号</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="car_Number"
                                               placeholder="请输入车辆编号" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="car_ProjectName" class="col-sm-2 control-label">所属项目名</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="car_ProjectName"
                                               placeholder="请输入车辆所属项目" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="car_Director" class="col-sm-2 control-label">责任人</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="car_Director"
                                               placeholder="请输入车辆责任人" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="car_VIN" class="col-sm-2 control-label">车架号</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="car_VIN"
                                               placeholder="请输入车辆VIN码" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="car_Temporary" class="col-sm-2 control-label">是否有临牌</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="car_Temporary" style="width: 10%">
                                            <option>是</option>
                                            <option>否</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="car_Temporary_Number" class="col-sm-2 control-label">临时牌号码</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="car_Temporary_Number"
                                               placeholder="请输入车辆临时号牌号码" style="width: 30%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="car_TemporaryExpire" class="col-sm-2 control-label">临时牌到期时间</label>
                                    <div class="col-sm-10">
                                        <input type="date" class="form-control" id="car_TemporaryExpire"
                                               style="width: 20%">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">提交信息</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="newNotice">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="text-align: center">新增公告信息</h3>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" role="form">
                                <div class="form-group" style="text-align: center">
                                    <label for="notice_title" class="col-sm-2 control-label">公告标题</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="notice_title"
                                               placeholder="请输入公告标题" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="notice_content" class="col-sm-2 control-label">公告内容</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="notice_content"
                                               placeholder="请输入公告内容" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">提交信息</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="newBug">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="text-align: center">导入BUG数据</h3>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" role="form">
                                <div class="form-group" style="text-align: center">
                                    <label for="bug_file" class="col-sm-2 control-label">导入BUG数据</label>
                                    <div class="col-sm-10">
                                        <input type="file" class="form-control" id="bug_file"  accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" style="width: 30%">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">提交信息</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    //页面加载完
    $(function() {
        $("#submitDevice").click(function () {
            if ($("#deviceName").val() == "") {
                alert("请填写资源名称")
                return false;
            } else if ($("#deviceType").val() == "手机") {
                if ($("#deviceVersionFormat").val() == "") {
                    alert("请填写手机安卓版本")
                    return false;
                } else if ($("#deviceMemory").val() == "") {
                    alert("请填写手机内存大小")
                    return false;
                } else if ($("#deviceModel").val() == "") {
                    alert("请填写手机型号")
                    return false;
                }
            } else if ($("#deviceType").val() == "U盘") {
                if ($("#deviceVersionFormat").val() == "") {
                    alert("请填写U盘格式")
                    return false;
                } else if ($("#deviceMemory").val() == "") {
                    alert("请填写U盘内存大小")
                    return false;
                } else if ($("#deviceMemory").val() != "" && !/^[0-9]*$/.test($("#deviceMemory").val())) {
                    alert("请填内存大小数字类型")
                    return false;
                }
            }
        });
        $("#deviceInfo").ajaxForm(function (data) {
                alert(data);
            window.location.replace("/welcome/showNewInformation.do");
            }
        );
    })
    function typeSelect() {
        if($("#deviceType").val()=="手机"){
            $("#version").css("display","block")
            $("#memory").css("display","block")
            $("#model").css("display","block")
            $("#mied").css("display","block")
            $("#imei").css("display","block")
            $("#account").css("display","block")
            $("#Phone").css("display","block")
        }else if($("#deviceType").val()=="U盘"){
            $("#version").css("display","block")
            $("#memory").css("display","block")
            $("#model").css("display","none")
            $("#mied").css("display","none")
            $("#imei").css("display","none")
            $("#account").css("display","none")
            $("#Phone").css("display","none")
        }
        else {
            $("#version").css("display","none")
            $("#memory").css("display","none")
            $("#model").css("display","none")
            $("#mied").css("display","none")
            $("#imei").css("display","none")
            $("#account").css("display","none")
            $("#Phone").css("display","none")

        }
    }
    function submitMateriel() {
        if ($("#importMateriel").val()==""){
            if ($("#materielName").val()==""){
                    alert("请填写物料名！")
                return false;
            }else if ($("#materielProject").val()==""){
                alert("请填写物料所属项目！")
                return false;
            }else if ($("#materielTotal").val()==""){
                alert("请填写物料数量！")
                return false;
            }else if ($("#materielType").val()==""){
                alert("请填写物料分类！")
                return false;
            }else if ($("#materielPosition").val()==""){
                alert("请填写物料所在货架位置")
                return false;
            }
        }else {
            return true;
        }
    }
</script>
</html>
