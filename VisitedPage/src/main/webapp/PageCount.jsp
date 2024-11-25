<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <h1>Welcome to the Page Visit Counter</h1>
    <%
        // Retrieve the application context
        ServletContext context = getServletContext();
        
        // Initialize the counter if not already done
        Integer visitCount = (Integer) context.getAttribute("visitCount");
        if (visitCount == null) {
            visitCount = 0; // Start at 0 if this is the first visit
        }
        
        // Increment the counter
        visitCount++;
        
        // Store the updated counter back into the application context
        context.setAttribute("visitCount", visitCount);

        // Display the visit count
    %>
    <p>This page has been visited <strong><%= visitCount %></strong> times.</p>

</body>
</html>