
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>首页</title>
  </head>
  <body>
  <h1>空气质量监测信息库</h1>
  <form action="/show" method="post">
     按区域查询
    <select name="districtId">
      <option value="-1">不限</option>
      <c:forEach var="p" items="${list2}">
        <option value="${p.id}" ${p.id==param.districtId?"selected":""}>${p.name}</option>
      </c:forEach>
    </select>
    <input type="submit" value="查找" />
    <a href="/toadd" >添加空气质量信息</a>
  </form>

  <c:if test="${list!=null}">
    <table width="600px" border="1">
      <tr>
        <th>序号</th>
        <th>区域</th>
        <th>监测时间</th>
        <th>PM10数据</th>
        <th>PM2.5数据</th>
        <th>监测站</th>
      </tr>
      <c:forEach items="${list}" var="p">
        <tr>
          <td>${p.id}</td>
          <td><a href="/toselect?id=${p.id}">${p.name}</a></td>
          <td>${p.monitorTime}</td>
          <td>${p.pm10}</td>
          <td>${p.pm25}</td>
          <td>${p.monitoringStation}</td>
        </tr>
      </c:forEach>
    </table>
  </c:if>

  <c:if test="${list==null}">
    <div>
      <h1>抱歉，暂无数据!</h1>
    </div>
  </c:if>

  </body>
</html>
<script src="statics/jquery-1.12.4.js"></script>
<script>
  $("table tr:even").css("background","palegreen");
  $("table tr:first").css("background","gray");
</script>