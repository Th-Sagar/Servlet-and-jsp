<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Password Validation</title>
</head>
<body>
    <h2>Password Change Result</h2>
    
    <%
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");

        if (oldPassword.equals(newPassword)) {
            out.println("<p style='color:red;'>New password must be different from old password!</p>");
        } else {
            out.println("<p style='color:green;'>Password changed successfully!</p>");
        }
    %>
    
    <br>
    <a href="index.jsp">Go Back</a>
    
</body>
</html>
