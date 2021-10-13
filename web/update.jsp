
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改</title>
</head>
<body>
    <h1>空气质量维护页面</h1>
    <form action="/update" method="post">
        <table>
            <tr>
                <td>监测区域：</td>
                <td>
                    <select name="districtId">
                        <c:forEach var="p" items="${list2}">
                            <option value="${p.id}" ${p.id==b.districtId?"selected":""} >${p.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>监测日期：</td>
                <td>
                    <input type="text" name="monitorTime" value="${b.monitorTime}">
                    <input type="hidden" name="id" value="${b.id}">
                </td>
            </tr>
            <tr>
                <td>PM10值：</td>
                <td>
                    <input type="text" name="pm10" value="${b.pm10}">
                </td>
            </tr>
            <tr>
                <td>PM2.5值：</td>
                <td>
                    <input type="text" name="pm25" value="${b.pm25}">
                </td>
            </tr>
            <tr>
                <td>监测站：</td>
                <td>
                    <input type="text" name="monitoringStation" value="${b.monitoringStation}">
                </td>
            </tr>
            <tr>
                <td>最后修改时间</td>
                <td>
                    ${b.lastModifyTime}
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="更新"/>
                    <input type="button" value="删除" onclick="del(${b.id})" />
                    <input type="button" value="返回" onclick="fan()">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
<script src="statics/jquery-1.12.4.js"></script>
<script>
    function fan() {
        location.href="/show";
    }

    function del(id) {
        if (confirm("是否删除")){
            $.ajax({
                url:"/delete",
                data:"id="+id,
                success:function (result) {
                    if (result=="ok"){
                        alert("删除成功");
                    } else{
                        alert("删除失败");
                    }
                }
            })
        }
    }
</script>
