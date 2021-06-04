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
<script language="javascript" src="JavaScripts/creatingDates_Fields.js"></script>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%" height="266"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="260"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	   <%
		  ResultSet rs1=null;
		  String sql1=null;
		  int did=0;
		  
did=Integer.parseInt(request.getParameter("did"));           
sql1="select lname from MainLoginTable where sno="+did;
CBean.makeConnection();
CBean.setQuery(sql1);
rs1=CBean.executeQuery();
rs1.next();
//System.out.println("createdates.jsp"+rs1.getInt(1));
		  %>
	  <!-- content area for all modules starts-->
<p align="center"><strong>Creating Dates</strong></p>
     
         <table width="582" border="0">   
		 
		  <form name="form1" method="post" action="CreatingDates1.jsp" onsubmit="return validate(this);">
		  <tr>
		    <td width="286" height="10"><div align="center"><strong>Doctor Id</strong><br>              
	            <input type="text" name="did" value="<%=did%>" disabled>			  
	            <input type="hidden" name="did" value="<%=did%>">
            </div></td>
		    <td width="283"><div align="center"><strong>Doctor Name<br>
                <input type="text" name="dname" value="<%=rs1.getString(1)%>" disabled>
		        <input type="hidden" name="dname" value="<%=rs1.getString(1)%>">
              </strong></div></td>
		  </tr>
<tr>
  <td height="10"><p align="right"><strong>Avilable Date</strong><br>
        </p>
    </td>
  <td><p>&nbsp;</p>
    <p>      <input type="text" name="adates" >
      (Ex:02/03/2006)
    </p>
    <p>&nbsp;    </p></td>
</tr>
<tr>
  <td height="10" align="right"><input type="submit" name="Submit" value="Submit"></td>
  <td align="center"><input type="reset" name="reset" value="clear"></td>
</tr>
</form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>