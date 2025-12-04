<%@include file="connection.jsp" %>
<link rel="stylesheet" href="newcss.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <header>
            <h1>Register New Donor!</h1>
        </header>
        <form action="registerprocess.jsp" method="post">
            ID: <input type="text" name="donor_id" required><br><br>
            Name: <input type="text" name="name" required><br><br>
            Blood Type:
            <select name="blood_type">
                <option>A+</option>
                <option>A-</option>
                <option>B+</option>
                <option>B-</option>
                <option>AB+</option>
                <option>AB-</option>
                <option>O+</option>
                <option>O-</option>
            </select><br><br>
            Age: <input type="text" name="age" required><br><br>
            Location: <input type="text" name="location" required><br><br>
            Contact Info: <input type="text" name="contact_info" required><br><br>
            Availability:
            <select name="availability">
                <option>Yes</option>
                <option>No</option>
            </select><br><br>
            <input type="submit" value="Register">
        </form>
    </body>
</html>
