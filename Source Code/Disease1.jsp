<%@ page errorPage="errorPage_login.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="167"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
	  <%
	  ResultSet rs=null,rs1=null;
int update1=0;
String sql1=null;
String sqlDid="select count(*)+1 from Disease";
String ck_nameSql=null;
String state="y";

	int did=0;
    String dise=null;
	String remedy=null;
// software fields 

    CBean.makeConnection();

//calculating disease serial number
	CBean.setQuery(sqlDid);
	rs=CBean.executeQuery();	
	rs.next();
	did=rs.getInt(1);

    dise=request.getParameter("dise");
	    remedy=request.getParameter("remedy");
	//cheacking name in the db
ck_nameSql="select dname from Disease where Dname=?";
CBean.setQuery(ck_nameSql);
CBean.setString(1, dise);
rs1=CBean.executeQuery();

if(rs1.next())
{
System.out.println("ok--Duplicate record");
response.sendRedirect("/Project/Disease.jsp");
}else{
//insert the data into Disease table
    sql1="insert into Disease values(?,?,?,?)";
    System.out.println(sql1);
    CBean.setQuery(sql1,"scroll","update");
	CBean.setInt(1, did);
	CBean.setString(2, dise);
	CBean.setString(3, state);
	CBean.setString(4, remedy);
	
	update1=CBean.executeUpdate();
}
   %>

  <table align="center" border="0" bgcolor="#EAEAEA" width="100%">
  <form name="form1" action="Disease.jsp" method="post">  
  <tr align="center"><td><b>Successfully Added Disease  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i><%=dise%></i>
</b></td></tr>
 <tr align="center">
   <td align="right">
   <input type="submit" name="add" value="Add Another"> </td>
	</tr>
	</form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>