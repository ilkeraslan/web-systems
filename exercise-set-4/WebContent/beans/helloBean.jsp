<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Using JavaBeans with JSP</title>
</head>
<body>
	<h1>Using JavaBeans with JSP</h1>
	<jsp:useBean id="stringBean" class="it.ilker.websystems.beans.StringBean" />
	<ol>
		<li>Initial value (using jsp:getProperty): <jsp:getProperty name="stringBean" property="message" /></li>
		<li>Initial value (using JSP expression): <%= stringBean.getMessage() %></li>
		<li>
			<jsp:setProperty name="stringBean" property="message" value="Best string bean: Foo" /> 
			Value after setting property with jsp:setProperty: 
			<jsp:getProperty name="stringBean" property="message" />
		</li>
		<li>
			<% stringBean.setMessage("My favorite: Bar"); %> 
			Value after setting property with scriptlet: 
			<%= stringBean.getMessage() %>
		</li>
	</ol>
</body>
</html>