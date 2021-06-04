<html>
<head>
<script language="javascript">
function validate(formCheck) //Function with a parameter representing a form name.
{
var na=/^[a-zA-Z_( )]*[a-zA-Z0-9_]*$/;
alert("ok");
if (formCheck.dise.value =="")
    {
        alert("Please provide Disease name"); 
        formCheck.dise.focus();
        return false;
    }  
	else  if (na.test(formCheck.dise.value) == false)
    {
        alert("Please provide valid Disease name(starts with charecters"); 
        formCheck.dise.focus();
        return false;
    }                                                       

    return true;
}
</script>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="300"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
      <div align="right">
        <%@include file="LogoutIcon.jsp"%> 
        <!-- Logout.jsp ends-->
        <!-- content area for all modules starts-->
	      <a href="ManagerMainPage.jsp?k=m"><strong>Home</strong></a>
      </div>
      <table width="100%"  border="1">
  <tr align="center">
    <td height="269" align="center"><form name="form1" method="post" action="Reports1.jsp">
      <p><strong>Select Type of Employee ::</strong> 
	           <select name="cat" size="1" id="cat">
	        <option value=""><--Select--></option>
            <option value="a">Admin</option>
            <option value="m">Manager</option>
            <option value="d">Doctor</option>
            <option value="c">Client</option>
            <option value="o">Official</option>
          </select>
</p>
      <p>
        <input type="submit" name="Submit" value="Get Report">  
            </p>
    </form>    
    <p><br>
      </p>
      </td>
	
  </tr>
</table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>