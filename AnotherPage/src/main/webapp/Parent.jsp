<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>Welcome to the Parent JSP Page</h1>
    <p>This content is in the parent JSP page.</p>

    <!-- Including the nested JSP page -->
    <jsp:include page="Nested.jsp" />

    <p>Back to the parent JSP page content.</p>

</body>
</html>