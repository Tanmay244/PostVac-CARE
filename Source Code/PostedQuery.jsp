<html>
<head>
<title>New User Creation</title>
<script language="javascript" src="JavaScripts/PostedQuery_Fields.js"></script>
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
    <td width="21%" height="150"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
	  
      <table width="100%" height="30"  border="1" >
      
	      <tr>
            <td height="30" align="center"><span class="style1">Upload the Query </span> </td>
          </tr>
		  
      </table>
      <div align="right"><a href="ClientMainPage.jsp?cid=<%=request.getParameter("cid")%>"><strong>BACK</strong></a>
	  </div>
      <table width="100%" height="179" border="1">
		<form action="PostedQuery1.jsp" method="get" name="form1" onsubmit="return validate(this);">
  <tr>
    <td height="143"><table width="100%" height="100"  border="0">
      <tr>
        <td width="23%" height="77" align="left"><div align="right"><strong>Query</strong></div></td>
        <td width="27%" align="right"><textarea name="pquery" id="pquery"></textarea>
        </td>
        <td width="23%" align="left"><div align="center"><strong> <a href="#" onClick="viewalldoctors();">view all doctor's list</a></strong></div></td>
        <td width="27%" align="right"><p>&nbsp;</p>
          <p>&nbsp;</p></td>
      </tr>
      <tr>
        <td height="40" align="left"><div align="right"><strong>Employee Id </strong></div></td>
        <td align="right"><div align="left">
          <input name="eid" type="text" id="eid">
        </div></td>
        <td align="left"><div align="right"><strong>Client Id </strong></div></td>
        <td align="right"><input name="cid" type="text" value=<%=request.getParameter("cid")%> disabled>
		<input name="cid" type="hidden" value=<%=request.getParameter("cid")%>></td>
      </tr>
       </table>
      </td>
  </tr>
  <tr><td align="center">
  <input name="k" type="hidden" value="<%=request.getParameter("k")%>">
  <input name="submit" type="submit" value="Upload"></td></tr>
</form>
</table>

	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>