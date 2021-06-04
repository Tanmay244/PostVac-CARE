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
    <td width="21%" height="150" bgcolor="#e4d2b8"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td >
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
	  <div align="left"><a href="OfficialMainPage.jsp"><strong>HOME</strong></a></div>
	  <table width="100%" height="82"  border="1" >
          <tr>
            
			            <td height="23" align="center"><font color="#00FF00">Send Messages to the following MEMBERS....</font></td>
          </tr>
		  <tr><td height="22">
<%	  
		String sql=null;
		CBean.makeConnection();
		String message=request.getParameter("message");
           
		String[] a=request.getParameterValues("checkValue");
		if(a!=null){
		for(int j=0;j<a.length;j++){
		  //int no=Integer.parseInt(a[j]);
		  %>
		 <%=a[j]%><br>
		 <%
	         //CBean.setQuery("delete MainLoginTable where sno=?");
		 //CBean.setInt(1,Integer.parseInt(a[j]));
		 //CBean.executeUpdate();
		 }
		 }
		 else{
	  out.println("You Have To Select At Least One Row");
		        }
				%>
		</td></tr>
				<tr><td height="27" ><font color="#00FF00"><=====   Instent Message   ==></font></td></tr>
				<tr><td height="27" align="center"><%=message%></td></tr>
				

     
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>