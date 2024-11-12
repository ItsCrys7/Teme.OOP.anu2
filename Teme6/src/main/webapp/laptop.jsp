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
	<p>Avem de vanzare un <c:out value="${lap.brand}"/>, la pretul de <c:out value="${lap.pret}"/>, cu <c:out value="${lap.ram}"/> GB de RAM</p>
</body>
</html>