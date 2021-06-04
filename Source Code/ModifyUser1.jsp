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


window.location.href="ModifyUser2.jsp?checkValue="+checkValue;

}
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 9px;
	font-weight: bold;
	color: #0000FF;
}
-->
</style>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="111%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="15%" height="250"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td width="85%">
      <!-- Logout.jsp starts-->
      
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
		            <div align="center">  <strong>User Details</strong> </div>
      <table width="100%" height="68"  border="1" >
        <form name="form1" method="get" >
		  
		  <tr> 
		  <td height="38"><span class="style1">FNAME</span></td>
		  <td><span class="style1">LNAME</span></td>
		  <td><span class="style1">DESIGNATION</span></td>
		  <td><span class="style1">QUALIFICATION</span></td>
		  <td><span class="style1">SPECILIZATION</span></td>
		  <td><span class="style1">EXPERIENCE</span></td>
		  <td><span class="style1">FIELD</span></td>
		  <td><span class="style1">UNIVERSITY</span></td>
		  <td><span class="style1">MOBILE</span></td>
		  <td><span class="style1">EMAIL</span></td>
		  <td><span class="style1">SEX</span></td>
		  <td><span class="style1">DOB</span></td>
		  <td><span class="style1">JOINDATE</span></td>
		  </tr>
		  <%
		  
		
				 
		
		
	    while(rs.next()){
	    %><tr bgcolor="#EAEAEA" class="bodyTextBlack" onClick="showUpdate(<%=rs.getString(1)%>);" onmouseover='style.backgroundColor="#ffffff"' onmouseout='style.backgroundColor="#D8D8D8"'>
		<%

	       for(int i=2;i<=rsmd.getColumnCount();i++){
              %><td height="22">
           <% 
           out.println(rs.getString(i));
           %></td>
		    <%
           }
		%></tr>
		<%
		}
		
		%>
	    </form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>