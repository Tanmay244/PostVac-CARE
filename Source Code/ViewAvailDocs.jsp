<%@ page errorPage="errorPage_login.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
</head>
<body>
<table width="100%"  border="1">
<tr>
<td><strong>DoctorId</strong></td>
<td><strong>DoctorName</strong></td>
<td>Available Date </td>
</tr>  
<%
String sql1=null;
ResultSet rs=null;
CBean.makeConnection();
sql1="select * from CreateDates";
CBean.setQuery(sql1);
rs=CBean.executeQuery();
while(rs.next())
{

%>
<tr>

    <td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	  </tr>
  <%
  }
  %>
</table>
<%
CBean.closeConnection();
%>
</body>
</html>