<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="../../favicon.ico">

	<title>客户信息</title>

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
	<table class="table table-striped">
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
