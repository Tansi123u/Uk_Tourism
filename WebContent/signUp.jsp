<%@page import="com.sun.scenario.effect.impl.state.LinearConvolveRenderState.PassType"%>
<%@include file="common.jsp" %>
<%
String name=request.getParameter("username");
String email=request.getParameter("email");
String pwd=request.getParameter("password");
String query="insert into login values(?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,name);
ps.setString(2, email);
ps.setString(3,pwd);
int i=ps.executeUpdate();
con.close();
response.sendRedirect("./Pages-inside/login.html");
%>
