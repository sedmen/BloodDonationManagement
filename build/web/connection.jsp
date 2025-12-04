<%@page import="java.sql.*" %>
<%
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String user = "PROJECT";
    String password = "298056";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn = DriverManager.getConnection(url, user, password);
%>