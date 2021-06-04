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
System.out.println("take appointment1");
       CBean.makeConnection();
       ResultSet rs1=null,rs2=null,rs_ch=null;
	   
	   String sql1=null,sql2=null,sql3=null,sql_ch=null;
	   
	   String adate=null;
	   String dname=null;
	   String state=null;
	   int update1=0;
	   int did=0;
	   int cfee=0;
	   int ano=0;
	   int cid=0;
	   int ccno=0;
	   cid=Integer.parseInt(request.getParameter("cid"));
	   did= Integer.parseInt(request.getParameter("did"));
	adate=request.getParameter("adate");   
	   sql1="select state,cfee from TodayShedule where did="+did+" and adate='"+adate+"'";
	CBean.setQuery(sql1); 
	rs1=CBean.executeQuery();
	rs1.next();  
	
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
    if((rs1.getString(1)).equals("y"))
	{
	cfee=rs1.getInt(2);
	dname=request.getParameter("dname");
    ccno= Integer.parseInt(request.getParameter("ccno"));
	System.out.println("1234ilike");
	//ano calculating
	sql2="select count(*) from ClientsAppTable";
	CBean.setQuery(sql2); 
	rs2=CBean.executeQuery();
	rs2.next();  
    ano=rs2.getInt(1);
	
	//ano ----ends

	if(ano < 30){//check the appointments in a day
	//checking the already taken appointment
	 sql_ch="select cid,did,adate from ClientsAppTable where cid="+cid+" and did="+did+" and adate='"+adate+"'";
	CBean.setQuery(sql_ch);
	rs_ch=CBean.executeQuery();
	System.out.println(sql_ch);
	if(rs_ch.next() == false){
	//end checking
	//insert the data into clientapptable
	sql3="insert into ClientsAppTable values(?,?,?,?,?,?,?)";
    CBean.setQuery(sql3,"scroll","update");
	CBean.setInt(1,ano);
	CBean.setInt(2,did);
	CBean.setString(3,dname);
	CBean.setString(4,adate);
	CBean.setInt(5,ccno);
	CBean.setInt(6,cid);
	CBean.setInt(7,cfee);
	System.out.println(sql3);
    update1=CBean.executeUpdate();
	}else{
	%>
	<font>sorry..u r already taken an appointment<font color="#FF0000">  <strong>....TRY AGAIN...</strong></font> </font>
<a href="TakeAppoint.jsp?cid=<%=cid%>">	<strong><font color="#0000FF">GO BACK to TAKE ANOTHER APPOINTMENT</font></strong></a>
	<%}
}else{
	%>
	
	<font>sorry..This doctor was not avilable today<font color="#FF0000">  <strong>....TRY AGAIN...</strong></font> </font>
<a href="TakeAppoint.jsp?cid=<%=cid%>">	<strong><font color="#0000FF">GO BACK to TAKE ANOTHER APPOINTMENT</font></strong></a>
		<%
		}
		}else
		{		
		%>
<font>sorry..This day appointments are over<font color="#FF0000">  <strong>....TRY AGAIN...</strong></font> </font>
<a href="TakeAppoint.jsp?cid=<%=cid%>">	<strong><font color="#0000FF">GO BACK to TAKE ANOTHER APPOINTMENT IN NEXT DAY</font></strong></a>
		<%
		}
		%>
		ok u r taken an appointment ..........Take the Print out of this when u Came Back
		                        Ok Bye Take Care Beeee Happppppppppppppy
		<%
		
		%>
	    <!-- content area for all modules ends-->
    </td></tr>
	
</table>


</body>
</html>