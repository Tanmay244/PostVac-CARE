<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean" />
<html>
<head>
</head>
<%
       CBean.makeConnection();
       ResultSet rs2=null,rs3=null;
	   int update1=0;
	   String sql1=null,sql2=null;
	   String adate=null;
	   String dname=null;
	   int rno=0;
	//calculating rno
	sql2="select count(*) from CreateDates";
	CBean.setQuery(sql2);
	rs2=CBean.executeQuery();
	rs2.next();
	rno=rs2.getInt(1);
	
	//storing  data into db   
	int did= Integer.parseInt(request.getParameter("did"));
    dname=request.getParameter("dname");
	adate=request.getParameter("adates");
	sql1 = "insert into CreateDates values(?,?,?,?)";
	//check available date in the database==>starts
	String sql3="select did,adate from CreateDates where did="+did+" and adate='"+adate+"'";
	CBean.setQuery(sql3);
	rs3=CBean.executeQuery();
%>

<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%" height="300"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="250"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
<%
   	if(rs3.next())
	{
	System.out.println("available-------123");
	%>
	<font color="#990000">
	<strong>This date already mentioned, please select another date</strong></font>
	<%
	}else
	{

	
	//check available date in the database===>ends
	CBean.setQuery(sql1,"scroll","update");
	CBean.setInt(1,rno);
	CBean.setInt(2,did);
	CBean.setString(3,dname);
	CBean.setString(4,adate);
	System.out.println(sql1);
    update1=CBean.executeUpdate();
	}
	%>

		    <table width="100%" height="200"  border="1" >
          <tr>
            <td height="150"><p align="center"><a href="CreatingDates.jsp?did=<%=did%>"><strong>GoBack to Add Another Date</strong></a></p>
              <p align="center"><a href="DoctorMainPage.jsp?did=<%=did%>"><strong>Home</strong></a></p>
            <p>&nbsp; </p></td>
          </tr>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>