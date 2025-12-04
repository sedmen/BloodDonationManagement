<%@include file="connection.jsp" %>
<link rel="stylesheet" href="newcss.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    PreparedStatement ps = conn.prepareStatement("SELECT * FROM DONORS WHERE DONOR_ID=?");
    ps.setInt(1, id);
    ResultSet rs = ps.executeQuery();
    rs.next();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <header><h1>Update Donor Information!</h1></header>
    <body>
        <form action="updateprocess.jsp" method="post">
            <input type="hidden" name="donor_id" value="<%=id%>"required><br><br>
            Name: <input type="text" name="name" value="<%=rs.getString("name")%>" required><br><br>
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
            Age: <input type="text" name="age" value="<%=rs.getString("age")%>" required><br><br>
            Location: <input type="text" name="location" value="<%=rs.getString("location")%>" required><br><br>
            Contact Info: <input type="text" name="contact_info" value="<%=rs.getString("contact_info")%>" required><br><br>
            Availability:
            <select name="availability">
                <option>Yes</option>
                <option>No</option>
            </select><br><br>
            <input type="submit" value="Update">
        </form>
    </body>
</html>
