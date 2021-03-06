<%--
  Created by IntelliJ IDEA.
  User: 赖红
  Date: 2018/1/4
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改生活信息</title>
    <style type="text/css">
        .STYLE1 {
            color: #F5CBFF;
            font-weight: bold;
            font-size: 36px;
            font-family: "楷体_GB2312";
        }
    </style>

    <script>
        function checkAll() {
            var name = document.getElementById("lifeName");
            var content = document.getElementById("lifeContent");
            if (name.value == null || name.value == "") {
                document.getElementById("errorA").innerHTML = "请填写名称再提交！";
                return false;
            }if (content.value == null || content.value == "") {
                document.getElementById("errorA").innerHTML = "请填写描述再提交！";
                return false;
            }else {
                return true;
            }
        }

    </script>
</head>
<body background="${path}/image/1.jpg">

<table align="center" border="1" cellpadding="8" bgcolor="#F5CBFF" style="width:800px;height:30px">
    <tr>
        <p align="center" class="STYLE1">修改生活信息</p>
    </tr>
    <form action="LifeServlet" method="post" onsubmit="return checkAll()">
        <input type="hidden" name="lifeId" value="${life.lifeId}">
        <tr>
            <td>名称</td>
            <td><input type="text" name="lifeName" id="lifeName"value="${life.lifeName}"/>
            </td>
        </tr>
        <tr>
            <td>描述</td>
            <td><textarea rows="20" cols="85" name="lifeContent" id="lifeContent" >${life.lifeContent}</textarea></td>
        </tr>
        <tr>
            <td><input type="submit" value="修改"></td>
            <td><div id="errorA" style="display:inline;color:red;"/></td>
        </tr>
    </form>
</table>

</body>
</html>
