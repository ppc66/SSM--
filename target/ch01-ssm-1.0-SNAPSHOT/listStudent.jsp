<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/4/7
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
<script type="text/javascript" src="static/js/jQuery-min-3.6.0.js"></script>
<script type="text/javascript">
    $(function () {
        loadData();
        $("#btnLoader").click(function () {
            $("#info").html("");
            loadData();
        })
    })
    function loadData() {
        $.ajax({
            url: "student/queryStudents.do",
            type: "get",
            dataType: "json",
            success(data){
                $("#info").html("");
                $.each(data,function(i,n){
                    $("#info").append("<tr>")
                        .append("<td>"+n.id+"</td>")
                        .append("<td>"+n.name+"</td>")
                        .append("<td>"+n.age+"</td>")
                        .append("</tr>")
                })
            }
        })
    }
</script>
    <style>
        table>th{
            border:1px saddlebrown solid;
        }
    </style>
<head>
    <title>Title</title>
</head>
<body>]
<div align="center">
        <table>
            <thead>
            <tr>
                <td>学号</td>
                <td>姓名</td>
                <td>年龄</td>
            </tr>
            </thead>
            <tbody id="info">

            </tbody>
            <input type="submit" id="btnLoader" value="显示数据"/>
        </table>
</div>
</body>
</html>
