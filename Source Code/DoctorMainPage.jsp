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
    <td height="259" align="center"><a href="ViewQueries.jsp?did=<%=request.getParameter("did")%>"><strong>View Posted Queries And  Replay </strong></a>
	<br>
	<br>
	<strong><a href="CreatingDates.jsp?did=<%=request.getParameter("did")%>"> Mention Your Available Dates for Consulting</a></strong> </td>
	
  </tr>
</table>

<!-- content area for all modules ends-->
    </td>
  </tr>
</table>

</body>
</html>