<%--
  Created by IntelliJ IDEA.
  User: Zhao
  Date: 2021/9/27
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>新增</title>
</head>
<body>
    <h3>添加空气质量信息</h3>
    <form action="/add" method="post">
        <table>
            <tr>
                <td>监测区域：</td>
                <td>
                    <select name="districtId">
                        <c:forEach var="p" items="${list2}">
                            <option value="${p.id}">${p.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>监测日期：</td>
                <td>
                    <input type="text" name="monitorTime" id="monitorTime">
                </td>
            </tr>
            <tr>
                <td>PM10值：</td>
                <td>
                    <input type="text" name="pm10" id="pm10">
                </td>
            </tr>
            <tr>
                <td>PM2.5值：</td>
                <td>
                    <input type="text" name="pm25" id="pm25">
                </td>
            </tr>
            <tr>
                <td>监测站：</td>
                <td>
                    <input type="text" name="monitoringStation" id="monitoringStation">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="保存"/>
                    <input type="reset" value="重置"/>
                    <input type="button" value="返回" onclick="fan()">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
<script src="statics/jquery-1.12.4.js"></script>
<script>


    $("form").submit(function () {
        var monitorTime=$("#monitorTime").val();
        var regtime=/^\d{4}-\d{2}-\d{2}$/;
        if (regtime.test(monitorTime)==false){
            alert("监测日期必须符合日期格式。如2021-01-01");
            return false;
        }

        var pm10=$("#pm10").val();
        var  regpm10=/^[1-9]\d*$/;
        if (regpm10.test(pm10)==false){
            alert("PM10 值必须是正整数");
            return false;
        }


        var pm25=$("#pm25").val();
        var  regpm10=/^[1-9]\d*$/;
        if (regpm10.test(pm25)==false){
            alert("PM25 值必须是正整数");
            return false;
        }

        var monitoringStation=$("#monitoringStation").val();
        if (monitoringStation==""){
            alert("监测站不能为空");
            return false;
        }

        return true;
    });

    function fan() {
        location.href="/show";
    }
</script>

