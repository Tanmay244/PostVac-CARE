<html>
<head>
<style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="255"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
      <table width="100%"  border="1">
  <tr align="center">
    <td height="223" align="center"><p>&nbsp;</p>
      <p><span class="style1"><a href="PostedQuery.jsp?cid=<%=request.getParameter("cid")%>">PostQuery</a>
            </span></p>
      <p><strong><a href="SeeReplay.jsp?cid=<%=request.getParameter("cid")%>">See the Replay</a> <br>
	        <br>
	        <a href="ViewFaqs.jsp?cid=<%=request.getParameter("cid")%>">View FAQs</a></strong></p>
      <p><a href="TakeAppoint.jsp?cid=<%=request.getParameter("cid")%>"><strong>Take Appointment</strong></a><strong> </strong></p></td>
  </tr>
</table>

<!-- content area for all modules ends-->
    </td>
  </tr>
</table>

</body>
</html>