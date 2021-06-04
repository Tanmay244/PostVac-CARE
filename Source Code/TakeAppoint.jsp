
<%@ page language="java" contentType="text/html; charset=iso-8859-1" errorPage="error_app.jsp"%>

<html>
<head>
<script language="javascript" src="JavaScripts/TakeApp_Fields.js"></script>
<script language="JavaScript">
//for non bhel persons

function viewdoctors()
{
window.open('TakeAppDocs.jsp',null,"height=300,width=400,status=yes,toolbar=no");
}
</script>
</head>
<body>
<%@include file="Edoctor.jsp"%> 
<%
int cid=0;
%>
<table width="100%" height="300"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="300"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
      
        <%@include file="LogoutIcon.jsp"%> 
              <!-- Logout.jsp ends-->
        <!-- content area for all modules starts-->
		<%
		cid=Integer.parseInt(request.getParameter("cid"));
		%>
        <p align="center"><a href="#" onClick="viewdoctors();"><strong>view available doctors List</strong></a></p>
      <table width="100%" height="250"  border="0" >
      <form name="form1" method="post" action="TakeAppoint1.jsp" onsubmit="return validate(this);">
	      		    <tr><td width="52%" align="center"><strong>Doctor Id</strong><input type="text" name="did">
            </td>
		    <td width="48%"> <strong>Doctor Name</strong><input type="text" name="dname"> </td> 
		    </tr>
	      		 
            <tr>
	      		      <td  align="center"><p><strong>AvailableDate</strong><input type="text" name="adate">
                      </p>
	          <p>(ex:02/02/2006) </p></td>
	      		      <td><p align="left"><strong>CreditCard No
                            <input name="ccno" type="text">
                      </strong></p>
	          </td>
	      </tr>
	      		    <tr>
	      		      <td align="center"><div align="right"><strong>Client Id </strong></div></td>
	      		      <td><p><strong>
	      		        <input name="cid" type="text" value="<%=cid%>" disabled>
						<input type="hidden" name="cid" value="<%=cid%>">
	      		      </strong></p>
      		          </td>
	      </tr>
	      		    <tr>
	      		      <td align="center"><input type="submit" name="Submit" value="Take Appointment"></td>
	      		      <td align="center"><input type="reset" name="Reset" value="Clear"></td>
	      </tr>
		</form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>