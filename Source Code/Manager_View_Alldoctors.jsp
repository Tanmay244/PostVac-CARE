<%@ page errorPage="errorPage_login.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
</head>
<body>
<table width="100%"  border="1">
<tr>
<td><strong>Eid</strong></td>
<td><strong>Name</strong></td>
<td>Designation</td>
<td>Specilization</td>
<td>Email</td>
</tr>  
<%
String sql1=null;
ResultSet rs=null;
ResultSetMetaData rsmd=null;
CBean.makeConnection();
sql1="select * from MainLoginTable where type='d'";
CBean.setQuery(sql1);
rs=CBean.executeQuery();
rsmd=rs.getMetaData();
while(rs.next())
{
System.out.println("while loop");
%>
<tr>
		<%
	       for(int i=1;i<rsmd.getColumnCount();i++){
              %><td>
           <% 
           out.println(rs.getString(i));
           %></td><%
           }
		   
	    }
		%>
</table>
<%
CBean.closeConnection();
%>
</body>
</html>