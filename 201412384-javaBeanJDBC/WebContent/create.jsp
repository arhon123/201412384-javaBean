<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "testBean.studentDAO" %>
<html>
<head>
<!-- 이 페이지는 insert문을 실행하기 위한 페이지 이다. -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<jsp:useBean id="item" scope="page" class="testBean.studentVO">
 <jsp:setProperty name="item" property="*"/>
</jsp:useBean>
</html>
<%
 request.setCharacterEncoding("UTF-8");
 studentDAO insert = new studentDAO();
 insert.insert(item);
%>