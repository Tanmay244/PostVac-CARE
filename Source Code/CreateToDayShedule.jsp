<html>
<head>
<script language="JavaScript">
//for non bhel persons

function viewdoctors()
{
window.open('ViewAvailDocs.jsp',null,"height=300,width=400,status=yes,toolbar=no");
}
</script>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%" height="300"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="300"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
      <div align="center">
        <%@include file="LogoutIcon.jsp"%> 
          <a href="#" onClick="viewdoctors();"><strong>view available doctors</strong></a>        <!-- Logout.jsp ends-->
        <!-- content area for all modules starts-->
      </div>
      <table width="100%" height="250"  border="0" >
      <form name="form1" method="post" action="CreateToDayShedule1.jsp">
	      		    <tr><td align="center"><strong>Doctor Id</strong><input type="text" name="did">
            </td>
		    <td> <strong>Doctor Name</strong><input type="text" name="dname"> </td> 
		    </tr>
	      		 
            <tr>
	      		      <td  align="center"><p><strong>AvailableDate</strong><input type="text" name="adate">
                      </p>
	      		        <p>(ex:02/02/2006) </p></td>
	      		      <td>
	      		        <p align="center"><strong>Consultation Fee</strong><input type="text" name="cfee">
   		                Rs.</p>
	      		        <p align="center"> (ex:300)</p>
            </td>
	      </tr>
	      		    <tr>
	      		      <td align="center"><div align="right"><strong>Status</strong></div></td>
	      		      <td><p>
      		            <input name="state" type="radio" value="y">
	      		        <strong>Present</strong></p>
	      		        <p><input name="state" type="radio" value="n" checked>
	      		          <strong>Not Present </strong></p></td>
	      </tr>
	      		    <tr>
	      		      <td align="center"><input type="submit" name="Submit" value="Create"></td>
	      		      <td align="center"><input type="reset" name="Reset" value="Clear"></td>
	      </tr>
		</form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>