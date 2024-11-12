<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Laptops page</h1>
	<p>The laptop is <b><c:out value="${brand}"/></b></p>
	<p>And it has <b><c:out value="${numberOfCharacters}"/></b> characters</p>
	<p>Este <b><c:out value="${parSauImpar}"/></b></p>
</body>
</html>