<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	int num = 100;
	com.user.User user = new com.user.User("222", 19);
	session.setAttribute("user", user);
	
	//String name=request.getParameter("name");
	//String age=request.getParameter("age");
	//com.user.User user1=new com.user.User(name,Integer.valueOf(age));
	//session.setAttribute("user1", user1);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<c:out value="hello Jsp 2.0"></c:out>
	<br>
	<c:out value="<%=num%>"></c:out>
	<br>
	<c:out value="<p>jjjjjj</p>"></c:out>
	<br>
	<c:set value="123" var="num" scope="session" />
	<c:out value="${sessionScope.num }"></c:out>
	<br>
	<c:if test="${param.date=='admin' }">
 Hallo ADMIN!!
 </c:if>
	<c:choose>
		<c:when test="${param.date=='1'}">
 这个数是1
 </c:when>
		<c:when test="${param.date=='2'}">
  这个数是2
 </c:when>
		<c:otherwise>
 我不认识
 </c:otherwise>
	</c:choose>
	<jsp:useBean id="admin" scope="session" class="com.user.User "></jsp:useBean>
<jsp:setProperty property="name" name="admin" value="zhangsan"/>
<c:out value="${admin.name}"></c:out><br>
<jsp:useBean id="user1" scope="session" class="com.user.User"></jsp:useBean>
<jsp:setProperty property="*" name="user1"/>
<c:out value="${user1}"></c:out>

</body>
</html>
