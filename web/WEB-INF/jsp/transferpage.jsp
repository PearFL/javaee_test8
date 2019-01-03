<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>转账页面</title>

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

<form>
    <table class="table table-striped">
        <tr>
            <td align="center">转入卡号</td>
            <td align="center"><input type="text" name="card_id" id="card_id"/></td>
        </tr>
        <tr>
            <td align="center">金额</td>
            <td align="center"><input type="text" name="transfer_amount" id="transfer_amount"/></td>
        </tr>
        <tr><td colspan="2" align="center"><input class="btn btn-lg btn-primary btn-shadow" role="button" value="提交转账" onclick="transfer()"/></td></tr>
    </table>

</form>
</body>

<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js" />
<script type="text/javascript">
    function transfer() {
        var id= "${carid}";
        //获取输入的转入卡号和金额
        var card_id= $("#card_id").val();
        var transfer_amount = $("#transfer_amount").val();
        alert("id："+id +" card_id: "+ card_id +" transfer_amount: "+ transfer_amount);

        $.ajax({
            url : "${pageContext.request.contextPath}/AccountTransfer",
            type : "post",
            data : JSON.stringify({'id':id,'card_id':card_id,'transfer_amount':transfer_amount}),
            contentType : "application/json;charset=UTF-8",
            dataType : "json",
            success : function (data) {
                if(data.message=="转账成功"){
                    location.href="${pageContext.request.contextPath}/findCustomerWithBanKcard?id=${cusid}";
                }else {
                    alert("转账失败："+data.message);
                }
            },
            error : function (data) {
                alert("出错啦");
            }
        });
    }
</script>
</html>
