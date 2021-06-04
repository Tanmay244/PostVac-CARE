<html>
<head>
<title>New User Creation</title>
<script language="javascript" src="JavaScripts/NewUserCreation.js">
</script>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="513"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
	  <form action="NewUserCreation1.jsp" method="get" name="form1" onSubmit="return validate(this)">
      <table width="100%" height="58"  border="1" >
          <tr>
            <td height="52" align="center"><strong>New User Creation</strong> </td>
          </tr>
		  
      </table>
		<table width="100%" height="455" border="1">
  <tr>
    <td><table width="100%" height="359"  border="0">
      <tr>
        <td width="23%" align="left">First Name</td>
        <td width="27%" align="right">
          <input name="fname" type="text" > 
        </td>
        <td width="23%" align="left">Last Name</td>
        <td width="27%" align="right"><input name="lname" type="text"></td>
      </tr>
      <tr>
        <td align="left"><strong>Designation</strong>      </td>
        <td align="right"><input name="desg" type="text"></td>
        <td align="left"><strong>Qualification</strong></td>
        <td align="right"><input name="qual" type="text"></td>
      </tr>

      <tr>
        <td align="left"><strong>Specilization</strong>          </td>
        <td align="right"><input name="spelz" type="text">
		</td>
        <td align="left"><strong>Experience</strong></td>
        <td align="right"><input type="text" name="exp">
		</td>
      </tr>
      <tr>
        <td align="left"><strong>Field of Experience</strong>          </td>
        <td align="right"><input name="foe" type="text"></td>
        <td align="left"> <strong>University </strong> </td>
        <td align="right"><input name="university" type="text"></td>
      </tr>
	  
	  <tr>
        <td align="left"><strong>Mobile</strong>          </td>
        <td align="right"><input name="mobile" type="text"></td>
        <td align="left"> <strong>E-mail</strong> </td>
        <td align="right"><input name="email" type="text"></td>
	  </tr>
      <tr>
        <td align="left"><strong>Sex </strong>
          </td>
        <td align="left"><select name="sex" size="1">
          <option value=""><--Select--></option>
          <option value="m">Male</option>
          <option value="f">Female</option>
        </select></td>
        <td align="left"><strong>Date Of Birth </strong> </td>
        <td align="right"><input name="dob" type="text"></td>
      </tr>
	  <tr>
        <td align="left"><strong>Date of Join </strong></td>
        <td align="center"><input name="doj" type="text"> 
          </td>
        <td align="left"><strong>Type</strong></td>
        <td align="left"><select name="type" size="1">
          <option value=""><--Select--></option>
<option value="a">Administrator</option>

          <option value="m">Manager</option>
          <option value="d">Doctor</option>
          <option value="c">Client</option>
          <option value="o">Official</option>
        </select></td>
	  </tr>
	  <tr>
	    <td align="center">&nbsp;</td>
	    <td align="center"><strong>Password</strong></td>
	    <td align="left"><input name="pass" type="password"></td>
	    <td align="right">&nbsp;</td>
	    </tr>
    </table>
      </td>
  </tr>
  <tr><td align="center">
  <input name="k" type="hidden" value="<%=request.getParameter("k")%>">
  <input name="submit" type="submit" value="Save"></td></tr>
</table>
</form>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>