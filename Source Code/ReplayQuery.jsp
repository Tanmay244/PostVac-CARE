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
    <td width="21%" height="100"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
<%
System.out.println("ReplayQuery.jsp  /sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
String sql1=null;
ResultSet rs=null;
int update1=0;

System.out.println("1-----------------");
String pquery=request.getParameter("pquery");
String rquery=request.getParameter("rquery");
int no=Integer.parseInt(request.getParameter("no"));
int eid=Integer.parseInt(request.getParameter("eid"));
int cid=Integer.parseInt(request.getParameter("cid"));
String faq=request.getParameter("faq");
System.out.println("1234567"+eid+cid+"no----"+no);
CBean.makeConnection();
sql1="update PostedQuery set rquery=?,faq=? where eid=? and cid=? and no=?";
System.out.println("sql1"+eid);
CBean.setQuery(sql1,"scroll","update");
CBean.setString(1,rquery);
CBean.setString(2,faq);
CBean.setInt(3,eid);
CBean.setInt(4,cid);
CBean.setInt(5,no);

update1=CBean.executeUpdate();
System.out.println("completed updation"+cid);
%>
<table width="100%"  border="1">
  <tr>
    <td height="84"><p align="center"><strong>Successfully replayed the Query </strong></p>
      <p align="center"><strong><a href="ViewQueries.jsp?did=<%=eid%>">If you want to Check once/ Give another Replay </a></strong></p></td>
  </tr>
</table>


	    <!-- content area for all modules ends-->
    </td></tr>
</table>
<%
CBean.closeConnection();
%>
</body>
</html>