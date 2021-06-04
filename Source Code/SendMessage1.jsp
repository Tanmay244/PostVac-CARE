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

<script>
  function deleteUser(){
   if(confirm("Do You Want To send the message")){
     return true;
   }      
   else{
     return false;
   }
  } 
</script>
<style type="text/css">
<!--
.style5 {color: #0000FF; font-size: 10px; font-weight: bold; }
.style6 {
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
    <td width="21%" height="250"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td bordercolor="#000000">
      <!-- Logout.jsp starts-->
      <div align="center">
        <%@include file="LogoutIcon.jsp"%> 
        <!-- Logout.jsp ends-->
        <!-- content area for all modules starts-->
	        
			 
          <%
		System.out.println("query is---------->"+request.getAttribute("query"));
		String sql=null;
		sql= (request.getAttribute("query")).toString();
		System.out.println("query is---------->"+sql);
	    CBean.makeConnection();
	    CBean.setQuery(sql);
        ResultSet rs=CBean.executeQuery();
		ResultSetMetaData rsmd=rs.getMetaData();
		
		
		%>
		   <span class="style6">User Details</span> </div>
      <table width="100%" height="85"  border="1" >
        <form name="form1" method="get" action="SendMessage2.jsp">
		 
		  <tr> 
		 
		  <td width="170"><div align="center"><span class="style5">LNAME</span></div></td>
		  
		  <td width="291"><div align="center"><span class="style5">EMAIL</span></div></td>
		  <td width="51"><div align="center"><span class="style5">TYPE</span></div></td>
		 <td width="51"><div align="center"><span class="style5">CHECK</span></div></td>
		 
		  </tr>
		  <%
		  
		
				 
		
		
	    while(rs.next()){
	   %>
<tr>      <td><%=rs.getString(3)%></td>
		  <td><%=rs.getString(11)%></td>
		  <td><%=rs.getString(15)%></td>
		  		
		
		
		
		<td width="41"><input type="checkbox" name="checkValue" value="<%=rs.getString(11)%>"></td>
		</tr>
		<%
		}
		
		%>
		<tr>
		  <td width="170">&nbsp;</td>
<td><strong>Message</strong>
  <textarea name="message" ></textarea></td><td></td><td></td>		<td></td>
		</tr>
		<tr>
		  <td height="28">&nbsp;</td>
		  <td><div align="center">
		    <input type="submit" value="Send Mail" onClick="return deleteUser()">
		    </div></td><td></td><td></td>
		</tr>
	    </form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>