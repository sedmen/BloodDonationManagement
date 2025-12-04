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

    PreparedStatement ps = conn.prepareStatement("UPDATE DONORS SET name=?, blood_type=?, age=?, location=?, contact_info=?, availability=? WHERE donor_id=?");
    ps.setString(1, name);
    ps.setString(2, bloodType);
    ps.setString(3, age);
    ps.setString(4, location);
    ps.setString(5, contactInfo);
    ps.setString(6, availability);
    ps.setString(7, id);
    ps.executeUpdate();
    response.sendRedirect("view.jsp");
%>