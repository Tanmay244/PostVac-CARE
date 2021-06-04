<%@ page errorPage="errorPage.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page import="java.util.*"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="200"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
<%
System.out.println("viewQueries1.jspsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
String sql1=null;
ResultSet rs=null;
//ResultSetMetaData rsmd=null;

int no=0;
no=Integer.parseInt(request.getParameter("no"));
System.out.println("1");
//String pquery=request.getParameter("pquery");
int did=Integer.parseInt(request.getParameter("eid"));
int cid=Integer.parseInt(request.getParameter("cid"));

System.out.println("1234567"+did+cid);
CBean.makeConnection();
sql1="select * from PostedQuery where eid="+did+" and cid="+cid+" and no="+no;
System.out.println("sql1"+did+"no"+no);
CBean.setQuery(sql1);
System.out.println("cbean"+cid);
rs=CBean.executeQuery();
rs.next();
{
%>

      <table width="100%"  border="0">
	  <form action="ReplayQuery.jsp" name="form1" method="get">
<tr><td>Query</td><td><input type="hidden" name="no" value="<%=rs.getInt(1)%>">
<textarea name="pquery"><%=rs.getString(2)%> </textarea></td></tr>
<tr><td>DoctorId</td><td><input type="text" name="eid" value="<%=rs.getInt(3)%>"></td></tr>
<tr><td>ClientId</td><td><input type="text" name="cid" value="<%=rs.getInt(4)%>"></td></tr>
<tr><td>Solution to Query</td><td><textarea name="rquery"><%=rs.getString(5)%></textarea></td></tr>

<tr>
  <td align="right"><div align="left">This query is FAQ</div></td><td align="left">&nbsp;&nbsp;
    <input name="faq" type="radio" value="y">
    yes 
    <input name="faq" type="radio" value="n" checked>
    no</td>
</tr>
<tr>
  <td height="26" align="right"><input name="submit" type="submit" value="Replay"></td>
  <td align="left"><input name="clear" type="reset" value="Clear"></td>
</tr>
</form>
</table>
	  
	  <%
	  
}

%>
    


		
 
	   
	  
		
               
	   
		
<%
CBean.closeConnection();
%>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>