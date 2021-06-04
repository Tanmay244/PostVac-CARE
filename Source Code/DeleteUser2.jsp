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
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="513"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
<%	  
		String sql=null;
		CBean.makeConnection();
		String[] a=request.getParameterValues("checkValue");
		if(a!=null){
		for(int j=0;j<a.length;j++){
		  int no=Integer.parseInt(a[j]);
		 System.out.println("value is------->"+Integer.parseInt(a[j]));
	         CBean.setQuery("delete MainLoginTable where sno=?");
		 CBean.setInt(1,Integer.parseInt(a[j]));
		 CBean.executeUpdate();
		 }
		 }
		 else{
	  out.println("You Have To Select At Least One Row");
		        }
%>
      <table width="100%" height="480"  border="1" >
          <tr>
            <td height="236">U r successfully deleted the records..... </td>
			            <td height="236"><a href="OfficialMainPage.jsp"><strong>HOME</strong></a></td>
          </tr>
        </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>