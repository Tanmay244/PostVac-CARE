<html>
<head>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="300"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
      <table width="100%"  border="1">
  <tr align="center">
    <td width="53%" height="276" align="center"><a href="Reports.jsp">Reports of all Users</a>
	<br>
	<br></td>
	    <td width="47%" align="center"><a href="ListOfDiseases.jsp"> View all Diseases and their Remedies </a>
	<br>
	<br></td>
	
  </tr>
</table>


	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>