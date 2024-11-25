<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>Enter College Name</h1>

    <!-- Form to take college name input -->
    <form method="post">
        <label for="collegeName">College Name:</label>
        <input type="text" id="collegeName" name="collegeName" required />
        <button type="submit">Submit</button>
    </form>

    <%
        // Check if the collegeName parameter is present
        String collegeName = request.getParameter("collegeName");
        if (collegeName != null && !collegeName.trim().isEmpty()) {
            out.println("<h2>College Name in Uppercase:</h2>");
            out.println("<ul>");
            // Display the college name in uppercase 10 times
            for (int i = 1; i <= 10; i++) {
                out.println("<li>" + collegeName.toUpperCase() + "</li>");
            }
            out.println("</ul>");
        }
    %>
</body>
</html>