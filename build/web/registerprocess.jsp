<%@include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("donor_id");
    String name = request.getParameter("name");
    String bloodType = request.getParameter("blood_type");
    String age = request.getParameter("age");
    String location = request.getParameter("location");
    String contactInfo = request.getParameter("contact_info");
    String availability = request.getParameter("availability");

    PreparedStatement ps = conn.prepareStatement("INSERT INTO Donors (DONOR_ID, NAME, BLOOD_TYPE, AGE, LOCATION, CONTACT_INFO, AVAILABILITY) VALUES (?, ?, ?, ?, ?, ?, ?)");
    ps.setString(1, id);
    ps.setString(2, name);
    ps.setString(3, bloodType);
    ps.setString(4, age);
    ps.setString(5, location);
    ps.setString(6, contactInfo);
    ps.setString(7, availability);
    ps.executeUpdate();
    response.sendRedirect("view.jsp");
%>