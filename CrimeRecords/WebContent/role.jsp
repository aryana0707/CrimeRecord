<%@page import="p1.Connect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	//scriptlet
	String user=request.getParameter("uname");
	String pwd=request.getParameter("upass");
	String role=request.getParameter("role");
	
	try{
		Connection con=Connect.getCon();
		String sql="select * from login where username=? AND password=? AND role=?";
		PreparedStatement pst=con.prepareStatement(sql);
		
		pst.setString(1, user);
		pst.setString(2, pwd);
		pst.setString(3, role);
		
		ResultSet rs=pst.executeQuery();
		
		if(rs.next())
		{
			String r=rs.getString("role");
			session.setAttribute("user", r);
			if(r.equals("admin")){
				%>
				<jsp:forward page="adminAfter.jsp"></jsp:forward>
				<%
			}if(r.equals("invetigation")){
				%>
				<jsp:forward page="investA.jsp"></jsp:forward>
				<%
			}if(r.equals("writer")){
				%>
				<jsp:forward page="writer.jsp"></jsp:forward>
				<%
			}else{
				%>
					<jsp:forward page="errorlog.jsp"></jsp:forward>
				<%
				}
		}else{
			%>
			<jsp:forward page="errorlog.jsp"></jsp:forward>
			<%
		}
		
		
	}catch(Exception e){
		System.out.println(e);
		%>
		<jsp:forward page="errorlog.jsp"></jsp:forward>
		<%
	}
		
	%>

</body>
</html>