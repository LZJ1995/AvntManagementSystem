<%--
  Created by IntelliJ IDEA.
  User: ll
  Date: 2021/1/22
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/bootstrap.min.js"></script>
<link rel="shortcut icon" href="http://www.weather.com.cn/favicon.ico" type="image/x-icon" />
<html>
  <head>
      <title>${title}</title>
  </head>
  <body>
  <c:import url="heardPage.jsp"/>
  <br /> <br />
  <form name="form1" method="post" action="/welcome/loginPage.do"
        id="form1">
    <div align="center">
      <br /> <br /> <br />
      <span name="TextBox1" rows="2" cols="20" class="form-control"style="font-size: Larger; height: 238px; width: 668px;" >
        温馨提示<br/>
      1、物料的借用、归还、记录系统
      </span>
      <br /> <br /> <input type="submit" value="OK" style="width: 153px;" class="btn btn-lg btn-success btn-block" />
    </div>
  </form>
  </body>
</html>
