<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Donors</title>
        <link rel="stylesheet" href="newcss.css">
    </head>
    <body>
        <header>
            <h1>Blood Donation Management System</h1>
        </header>

        <div class="container">
            <h2>Donor List</h2>

            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Blood Type</th>
                    <th>Age</th>
                    <th>Location</th>
                    <th>Availability</th>
                    <th>Contact Info</th>
                    <th>Actions</th>
                </tr>
                <%
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM donors");
                    while(rs.next()){
                %>
                <tr>
                    <td><%= rs.getString("donor_id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("blood_type") %></td>
                    <td><%= rs.getString("age") %></td>
                    <td><%= rs.getString("location") %></td>
                    <td><%= rs.getString("availability") %></td>
                    <td><%= rs.getString("contact_info") %></td>
                    <td style="text-align:center;">
                        <a href="updatedonor.jsp?id=<%= rs.getString("donor_id") %>" class="btn">Edit</a>
                        <a href="delete.jsp?id=<%= rs.getString("donor_id") %>" class="btn" onclick="return confirm('Are you sure?');">Delete</a>
                    </td>
                </tr>
                <% } %>
            </table>

            <div style="text-align:center; margin-top:20px;">
                <a href="home.jsp" class="btn">Back to Home</a>
            </div>
        </div>
    </body>
</html>
