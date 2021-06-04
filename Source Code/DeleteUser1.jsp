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
<script language="javascript" >

function showUpdate(a){
var checkValue=a;


window.location.href="DeleteUser2.jsp?checkValue="+checkValue;

}

</script>
<script>
  function deleteUser(){
   if(confirm("Do You Want To Delete")){
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
        <form name="form1" method="get" action="DeleteUser2.jsp">
		 
		  <tr> 
		  <td height="16"><div align="center"><span class="style5">FNAME</span></div></td>
		  <td><div align="center"><span class="style5">LNAME</span></div></td>
		  <td><div align="center"><span class="style5">DESIGNATION</span></div></td>
		  <td><div align="center"><span class="style5">QUALIFICATION</span></div></td>
		  <td><div align="center"><span class="style5">SPECILIZATION</span></div></td>
		  <td><div align="center"><span class="style5">EXPERIENCE</span></div></td>
		  <td><div align="center"><span class="style5">FIELD</span></div></td>
		  <td><div align="center"><span class="style5">UNIVERSITY</span></div></td>
		  <td><div align="center"><span class="style5">MOBILE</span></div></td>
		  <td><div align="center"><span class="style5">EMAIL</span></div></td>
		  <td><div align="center"><span class="style5">SEX</span></div></td>
		  <td><div align="center"><span class="style5">DOB</span></div></td>
		  <td><div align="center"><span class="style5">JOINDATE</span></div></td>
		  </tr>
		  <%
		  
		
				 
		
		
	    while(rs.next()){
	    %><tr>
		<%

	       for(int i=2;i<=rsmd.getColumnCount();i++){
              %><td height="22">
           <% 
           out.println(rs.getString(i));
           %></td>
		   
		    <%
           }
		%>
		<td><input type="checkbox" name="checkValue" value="<%=rs.getString(1)%>"></td>
		</tr>
		<%
		}
		
		%>
		<tr><td height="28"><input type="submit" value="Delete" onClick="return deleteUser()"></td></tr>
	    </form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>