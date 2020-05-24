<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5 Numbers between 1-90</title>
</head>
<body>
	<jsp:useBean id="numbers" class="it.ilker.websystems.beans.NumberProducer" />
	<p>Your numbers as list: <%= numbers.getNumbers() %></p>
	
	<ol>
		<li><jsp:getProperty name="numbers" property="first" /></li>
		<li><jsp:getProperty name="numbers" property="second" /></li>
		<li><jsp:getProperty name="numbers" property="third" /></li>
		<li><jsp:getProperty name="numbers" property="fourth" /></li>
		<li><jsp:getProperty name="numbers" property="fifth" /></li>
	</ol>
</body>
</html>