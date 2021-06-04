<html>
<head>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="200"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
      <table width="100%" height="203"  border="1" >
          <tr>
            <td height="197">You are not a valid person ...........Sorry,Type a valid UserName/Password</td>
          </tr>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>