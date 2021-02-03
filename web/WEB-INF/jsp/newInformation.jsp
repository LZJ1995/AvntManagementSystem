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
                <i class="glyphicon glyphicon-th"></i> 新增信息
            </h3>
        </div>
        <div class="panel-body">




             <ul  class="nav nav-tabs">
                 <li class="active"><a href="#device" data-toggle="tab">设备</a></li>
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
                            <h3 class="panel-title" style="text-align: center">新增设备</h3>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" role="form">
                                <div class="form-group" style="text-align: center">
                                    <label for="device_Name" class="col-sm-2 control-label">设备品牌</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="device_Name"
                                               placeholder="请输入设备品牌、华为、联想、金士顿等" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="device_Type" class="col-sm-2 control-label">设备类型</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="device_Type" style="width: 30%">
                                            <option>手机</option>
                                            <option>U盘</option>
                                            <option>CAN工具</option>
                                            <option>拆车工具</option>
                                            <option>其他</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="device_Version_Format" class="col-sm-2 control-label">设备版本或者格式</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="device_Version_Format"
                                               placeholder="请输入设备版本或格式：安卓9、U盘格式等" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="device_Memory" class="col-sm-2 control-label">内存大小</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="device_Memory"
                                               placeholder="请输入手机、U盘内存大小" style="width: 50%">
                                    </div>
                                </div>
                                <%--手机相关信息--%>
                                <div class="form-group" style="text-align: center">
                                    <label for="device_Model" class="col-sm-2 control-label">手机型号</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="device_Model"
                                               placeholder="请输入手机型号" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="device_MEID" class="col-sm-2 control-label">手机MEID</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="device_MEID"
                                               placeholder="请输入手机MEID" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="device_IMEI" class="col-sm-2 control-label">手机IMEI</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="device_IMEI"
                                               placeholder="请输入手机MEID" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="device_AccountPassword" class="col-sm-2 control-label">手机账号密码</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="device_AccountPassword"
                                               placeholder="请输入手机登录、解锁账号密码" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="device_Phone" class="col-sm-2 control-label">手机号码</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="device_Phone"
                                               placeholder="请输入当前手机号码" style="width: 50%">
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
                            <form class="form-horizontal" role="form">
                                <div class="form-group" style="text-align: center">
                                    <label for="materiel_project" class="col-sm-2 control-label">物料项目</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="materiel_project"
                                               placeholder="请输入物料所属项目" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="materiel_Name" class="col-sm-2 control-label">物料名称</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="materiel_Name"
                                               placeholder="请输入物料名称" style="width: 50%">
                                    </div>
                                </div>
                                <div class="form-group" style="text-align: center">
                                    <label for="materiel_Total" class="col-sm-2 control-label">入库数量</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="materiel_Total"
                                               placeholder="请输入物料入库数量" style="width: 10%">
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
</html>
