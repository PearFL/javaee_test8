<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>客户详情</title>
</head>
<body>
<div>
    <table border="1">
        <tr>客户基本信息如下：</tr>
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
    <table border="1">
        <tr> 客户的银行卡信息如下:</tr>
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
