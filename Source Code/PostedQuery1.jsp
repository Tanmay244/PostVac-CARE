<%@ page errorPage="errorPage_postedqueries.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
<title>New User Creation</title>
<script language="JavaScript">
//for non bhel persons

function viewalldoctors()
{
window.open('View_Alldoctors.jsp',null,"height=300,width=400,status=yes,toolbar=no");
}
</script>
<style type="text/css">
<!--
.style1 {
	color: #0000FF;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="201"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
	  <%
	  System.out.println("postedquery1.jsp");
	  String sqlQuery1=null;
	  	  String sql=null;
       int update1=0;
	   ResultSet rs_sql=null;
	   int no=0;
String pquery=null;
int eid =0;
int cid =0;
String rquery=null;
String faq="n";


	//requested parameters
	pquery=request.getParameter("pquery");
	rquery="Replay";
	System.out.println("rquery-------------------->"+rquery);
    
	eid=Integer.parseInt(request.getParameter("eid"));
	cid=Integer.parseInt(request.getParameter("cid")); 
		//Connection with db
	CBean.makeConnection();
	sql="select count(*)+1 from PostedQuery";
	CBean.setQuery(sql);
	rs_sql=CBean.executeQuery();
	rs_sql.next();
	no=rs_sql.getInt(1);
	System.out.println("total posted queries ---"+no);
	
	sqlQuery1="insert into PostedQuery values(?,?,?,?,?,?)";
	System.out.println("bhasker bhasker bhasker ************************"+sqlQuery1);

	
	//inserting the data into postedquery table
	CBean.setQuery(sqlQuery1,"scroll","update");
	CBean.setInt(1,no);
	CBean.setString(2,pquery);
	CBean.setInt(3,eid);
	CBean.setInt(4,cid);
	CBean.setString(5,rquery);
		CBean.setString(6,faq);
   update1=CBean.executeUpdate();
System.out.println("inserted the row"+update1);
	  %>
	  <form action="NewUserCreation1.jsp" method="get" name="form1">
      <table width="100%" height="41"  border="1" >
          <tr>
            <td height="35" align="center"><span class="style1">Upload the Query </span> </td>
          </tr>
		  
      </table>
		<table width="100%" height="82" border="1">
 
  <tr>
    <td height="76" align="center"><p>You are successfully posted query ................</p>
      <p>If u want to add another <strong><a href="PostedQuery.jsp?cid=<%=cid%>">Q . U . E . R . Y</a></strong>  </p></td>
  </tr>
</table>
</form>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>