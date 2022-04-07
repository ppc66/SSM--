<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/4/7
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>Title</title>
    <title>SSM整合案例</title>
</head>
<body>
<div>
    <table>
        <tr>
            <td>
                <a href="addStudent.jsp">注册用户</a>
            </td>
        </tr>
        <tr>
            <td>
                <a href="listStudent.jsp">查看用户</a>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
