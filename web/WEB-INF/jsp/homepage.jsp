<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>后台首页</title>
</head>
<body>
<div>
    <form action="${pageContext.request.contextPath}/findCustomerByConditions" method="post">
        <table>
            <tr>
                <td>手机号：</td>
                <td>
                    <input type="text" name="phone" value="${phone}"/>
                </td>
                <td>姓名：</td>
                <td>
                    <input type="text" name="cname" value="${cname}"/>
                </td>
                <td>身份证号：</td>
                <td>
                    <input type="text" name="idcard" value="${idcard}"/>
                </td>
                <td colspan="2">
                    <input type="submit" value="点击查询"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<div>
    <table border="1">
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
