<%@include file="common.jsp" %>
<%
String name=request.getParameter("username");
String pwd=request.getParameter("password");
String query="select from login where name=? and pwd=?";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(query);
String db_name="";
String db_email="";
String db_pwd="";
if(!rs.next()){
	response.sendRedirect("index.html");
}
else{
	while(rs.next()){
		db_name=rs.getString(1);
		db_email=rs.getString(2);
		db_pwd=rs.getString(3);
	}
}
out.print(db_name+"jdiajfiojioajdio");
if(name==db_name && pwd==db_pwd){
	response.sendRedirect("./Pages-inside/homePage.html");
}
else{
	response.sendRedirect("./Pages-inside/login.html");
}
%>