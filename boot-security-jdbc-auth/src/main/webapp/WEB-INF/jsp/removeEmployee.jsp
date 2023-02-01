<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove Employee</title>
</head>
<jsp:include page="menu.jsp" />
<body>
	<h3 style="color: red;">Remove Employee</h3>

	<div id="removeEmployee">
		<form:form action="/removeOneEmployee" method="post"
			modelAttribute="emp2">
			<p>
				<label>Enter Employee Id</label>
				<form:input path="empId" />
			</p>
			
			<input type="SUBMIT" value="Submit" />
		</form:form>
	</div>
</body>
</html>