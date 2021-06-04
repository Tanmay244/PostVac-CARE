
<%@ page language="java" contentType="text/html; charset=iso-8859-1" errorPage="errorPage.jsp"%>

<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.ResultSet"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<%	
	CBean.makeConnection();
%>
<html>
<head>
<script language="javascript" >
function Validate_search(FormName) {

if (FormName.usearch.value == "" ) {

alert("Please provide some valid data"); 

return (false);
}
if(!(FormName.cb_lname.checked )&&!(FormName.cb_fname.checked )&&!(FormName.cb_desg.checked )&&!(FormName.cb_spcl.checked )&&!(FormName.cb_email.checked )){
alert("You Have To Select Atlesat One checkbox");
return (false);
}



return (true);
} 
function showUpdate(){



  window.open('ViewAllUsers.jsp',null,"height=300,width=800,status=yes,scrollbars=yes");

}
</script>
<style type="text/css">
<!--
.style1 {
	color: #0033FF;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="25%" height="300"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td width="75%">
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
      <table width="98%" height="261"  border="1" >
         <form method="POST" name="form1" action="usearch" onSubmit="return Validate_search(this)">
		  <tr>
            <td height="255"><table width="510" border="1" align="center">
              <tr>
                <td width="17" align="center">&nbsp;</td>
                <td width="456" align="center"><span class="style1">Search for a User for Modify</span></td>
				<td width="15" align="center">&nbsp;</td>
			  </tr><tr>
				<td align="center">&nbsp;</td>
				<td align="center"><input name="usearch" type="text">
				  <input type="button" onClick="showUpdate();" value="View"></td>
				<td>&nbsp;</td>
				</tr>
			  <tr>
			    <td>&nbsp;</td>
			    <td><div align="center">
		            <input name="cb_fname" type="checkbox" id="cb_fname">
		        First Name </div></td>
			    <td width="15">&nbsp;
			  </td></tr>
			  <tr>
			    <td>&nbsp;</td>
			    <td><div align="center">
			        <input name="cb_lname" type="checkbox"> 
			    Last Name </div></td>
			    <td>&nbsp;</td>
		      </tr>
			  <tr>
			    <td>&nbsp;</td>
			    <td><div align="center">
			        <input name="cb_desg" type="checkbox" > 
			    Designation </div></td>
			    <td>&nbsp;</td>
		      </tr>
			  <tr>
			    <td>&nbsp;</td>
			    <td><div align="center">
		             <input name="cb_spcl" type="checkbox" >
			    Specialization</div></td>
			    <td>&nbsp;</td>
		      </tr>
			  <tr>
			    <td>&nbsp;</td>
			    <td><div align="center"><input name="cb_email" type="checkbox" >
			      &nbsp;&nbsp;&nbsp;E-mail </div></td>
			    <td>&nbsp;</td>
		      </tr>
			  <tr>
			    <td>&nbsp;</td>
			    <td align="center"><input type="submit" name="usearch" value="LOOK UP"></td>
			    <td>&nbsp;</td>
		      </tr>
            </table></td>
          </tr>
	    </form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>