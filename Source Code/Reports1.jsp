<%@ page errorPage="error_report.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="102%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="100"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
      <p>
        <%@include file="LogoutIcon.jsp"%>
        <a href="Reports.jsp"><strong>BACK</strong></a>
        <!-- Logout.jsp ends-->
        <!-- content area for all modules starts-->
      </p>
      <table width="100%"  border="1">
<tr>
<td><strong>Eid</strong></td>
<td><strong>Name</strong></td>
<td><strong>Designation</strong></td>
<td><strong>Qualification</strong></td>
<td><strong>Specilization</strong></td>
<td><strong>Experience</strong></td>
<td><strong>Field</strong></td>
<td><strong>Mobile</strong></td>
<td><strong>Email</strong></td>
<td><strong>Sex</strong></td>
<td><strong>DOB</strong></td>
<td><strong>Joined date </strong></td>
</tr>

<%
  System.out.println("managerMainPage.jsp");

	  String cat=null;
	  cat=request.getParameter("cat");
String sql1=null;
ResultSet rs=null;
//ResultSetMetaData rsmd=null;
CBean.makeConnection();
	
 	  if(cat.equals("a"))
	  {
	  out.println("Reports All Administrator");
	  sql1="select * from MainLoginTable where type='a'";
	  }
	  if(cat.equals("m"))
	  {
	  out.println("Reports All Manager");
	  sql1="select * from MainLoginTable where type='m'";
	  }
	  if(cat.equals("d"))
	  {
	  out.println("Reports All Doctors");
	  sql1="select * from MainLoginTable where type='d'";
	  }
	  if(cat.equals("c"))
	  {
	  out.println("Reports All Clients");
	  sql1="select * from MainLoginTable where type='c'";
	  }
	  if(cat.equals("o"))
	  {
	  out.println("Reports All Officials");
	  sql1="select * from MainLoginTable where type='o'";
	  }
CBean.setQuery(sql1);
rs=CBean.executeQuery();
//rsmd=rs.getMetaData();

System.out.println("while loop");

		   while(rs.next())
              {
         %><tr>
	      <td height="32"><%=rs.getString(1)%></td>
	       <td><%=rs.getString(3)%></td>
		   <td><%=rs.getString(5)%></td>
		   <td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
		    <td><%=rs.getString(11)%></td>
			<td><%=rs.getString(12)%></td>
			<td><%=rs.getString(13)%></td>
			<td><%=rs.getString(14)%></td>
			<td><%=rs.getString(16)%></td>
			  </tr>
		   <%
		    }
		   %>
		 
	   
</table>


	  

	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>