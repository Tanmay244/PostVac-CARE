<html>
<head>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="250"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
	  
      <table width="100%"  border="1">
  <tr align="center">
    <td width="50%" height="200" align="center"><p><a href="ModifyUser.jsp"><strong>Modify all Details of Users</strong></a></p>
      <p><a href="DeleteUser.jsp"><strong>Delete Users</strong></a>	        </p>
      <p><br>
            <a href="Disease.jsp"><strong>Add New Disease</strong></a></p>
      <p><strong><a href="CreateToDayShedule.jsp">Create today shedule for doctors</a></strong> </p>
      <p><strong><a href="SendMessage.jsp">Send Messages </a></strong><br>
      </p></td>
	    
	
  </tr>
</table>

<!-- content area for all modules ends-->
    </td>
  </tr>
</table>

</body>
</html>