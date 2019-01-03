<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>客户详情</title>

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
    <table class="table table-striped">
        <tr><td colspan="5" align="center">客户信息</td></tr>
        <tr>
            <th>姓名</th>
            <th>性别</th>
            <th>出生日期</th>
            <th>身份证号</th>
            <th>手机号码</th>
        </tr>
        <tr>
            <td>${customer.customer_name}</td>
            <td>${customer.customer_sex}</td>
            <td>${customer.customer_birth}</td>
            <td>${customer.customer_idcard}</td>
            <td>${customer.customer_mobile}</td>
        </tr>
    </table>
    <table class="table table-striped">
        <tr> <td colspan="4" align="center">客户信息</td></tr>
        <tr>
            <th>卡号</th>
            <th>办卡日期</th>
            <th>余额</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${customer.banKcardList}" var="card" varStatus="status">
            <%--${customer.banKcardList}--%>

        <tr>
            <td>${card.card_id}</td>
            <td>${card.card_date}</td>
            <td>${card.card_balance}</td>
            <td><a href="${pageContext.request.contextPath}/transferpage?carid=${card.id}&cusid=${customer.id}">转账</a></td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
