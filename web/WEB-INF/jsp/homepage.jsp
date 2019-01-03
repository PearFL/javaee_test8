<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>后台首页</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/dashboard.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div>
    <form action="${pageContext.request.contextPath}/findCustomerByConditions" method="post">
        <table class="table table-striped">
            <tr>
                <td>手机号：</td>
                <td>
                    <input type="text" name="customer_mobile" value="${customer_mobile}"/>
                </td>
                <td>姓名：</td>
                <td>
                    <input type="text" name="customer_name" value="${customer_name}"/>
                </td>
                <td>身份证号：</td>
                <td>
                    <input type="text" name="customer_idcard" value="${customer_idcard}"/>
                </td>
                <td colspan="2">
                    <input type="submit" value="点击查询"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<div>
    <table class="table table-striped">
        <tr>
            <td colspan="7" align="center">客户信息</td>
        </tr>
        <tr>
            <th>序号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>出生日期</th>
            <th>身份证号</th>
            <th>手机号码</th>
            <th>查看详情</th>
        </tr>
        <c:forEach items="${customers}" var="customer" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${customer.customer_name}</td>
                <td>${customer.customer_sex}</td>
                <td>${customer.customer_birth}</td>
                <td>${customer.customer_idcard}</td>
                <td>${customer.customer_mobile}</td>
                <td><a href="${pageContext.request.contextPath}/findCustomerWithBanKcard?id=${customer.id}">详情</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
