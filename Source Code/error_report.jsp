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
            <td height="197">you are not selected any field.....,<br>
			Select any field in the list box and then press <br>
			<font color="#FF0000"><a href="Reports.jsp">GO BACK</a></font> and TRY AGAIN......  </td>
          </tr>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>