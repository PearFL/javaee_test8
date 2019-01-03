<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户信息</title>
</head>
<body>
	<table border=1>
		<tr>
			<td>数据库编号</td>
			<td>名称</td>
			<td>性别</td>
			<td>生日</td>
			<td>卡号</td>
			<td>电话</td>
		</tr>
		<tr>
			<td>${customer.id}</td>
			<td>${customer.customer_name}</td>
			<td>${customer.customer_sex}</td>
			<td>${customer.customer_birth}</td>
			<td>${customer.customer_idcard}</td>
			<td>${customer.customer_mobile}</td>

		</tr>
	</table>
</body>
</html>
