<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
int id = Integer.parseInt(request.getParameter("id"));
PreparedStatement ps = conn.prepareStatement("DELETE FROM DONORS WHERE DONOR_ID=?");
ps.setInt(1, id);
ps.executeUpdate();
response.sendRedirect("view.jsp");
%>