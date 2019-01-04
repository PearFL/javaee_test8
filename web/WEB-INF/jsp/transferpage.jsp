<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>转账页面</title>
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>

<form>
    <table>
        <tr>
            <td>卡号</td>
            <td><input type="text" name="card_id" id="card_id"/></td>
        </tr>
        <tr>
            <td>金额</td>
            <td><input type="text" name="transfer_amount" id="transfer_amount"/></td>
        </tr>
        <tr><td colspan="2"><input type="button" value="提交转账" onclick="transfer()"/></td></tr>
    </table>
</form>

</body>
<script type="text/javascript">
    function transfer() {
        // alert(1)
        // console.log($("#card_id").val());//入账卡号
        var id= "${carid}";
        //获取输入的转入卡号和金额
        var card_id= $("#card_id").val();
        var transfer_amount = $("#transfer_amount").val();
        alert("id："+id +" card_id: "+ card_id +" transfer_amount: "+ transfer_amount);
        $.ajax({
            url : "${pageContext.request.contextPath}/AccountTransfer",
            type : "post",
            //data表示发送的数据
            data : JSON.stringify({'id':id,'card_id':card_id,'transfer_amount':transfer_amount}),
            contentType : "application/json;charset=UTF-8",
            //定义回调响应的数据格式为JSON字符串，该属性可以省略
            dataType : "json",
            //成功响应的结果
            success : function (data) {
                if(data.message=="转账成功"){
                    location.href="${pageContext.request.contextPath}/findCustomerWithBanKcard?id=${cusid}";
                }else {
                    alert("转账失败："+data.message);
                }
            },
            error : function (data) {
                alert("${pageContext.request.contextPath}/AccountTransfer");
            }
        });
    }
</script>
</html>