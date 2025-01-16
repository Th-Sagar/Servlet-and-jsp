<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Password Check</title>
</head>
<body>
    <h2>Change Password</h2>
    <form action="CheckPassword.jsp" method="post">
    
        <label for="oldPassword">Old Password:</label>
        <input type="password" id="oldPassword" name="oldPassword" required><br><br>
        
        <label for="newPassword">New Password:</label>
        <input type="password" id="newPassword" name="newPassword" required><br><br>
        
        <button type="submit">Check</button>
        
    </form>
</body>
</html>
