<%@ page errorPage="errorPage.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
<title>User Modification</title>
<script language="javascript" src="JavaScripts/NewUserCreation.js">
</script>
<style type="text/css">
<!--
.style1 {
	color: #0000FF;
	font-weight: bold;
}
-->
</style>
</head>
<%
	

ResultSet rs1=null;
int ch=0; 
ch=Integer.parseInt(request.getParameter("checkValue"));

	//for sno 
	String sql1="select * from MainLoginTable where sno ="+ch;
CBean.makeConnection();
CBean.setQuery(sql1);
rs1=CBean.executeQuery();
%>
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
<%
rs1.next();
System.out.println("india");
%>	
      <form action="ModifyUser4.jsp" method="get" name="form1" onSubmit="return validate(this)">
        <table width="100%" height="58"  border="1" >
          <tr>
            <td height="52" align="center"><span class="style1">User Modification</span> </td>
          </tr>
		  
      </table>

		<table width="100%" height="400" border="1">
  <tr>
    <td height="365"><table width="100%" height="359"  border="0">
      <tr>
        <td width="23%" align="left"><strong>First Name</strong></td>
        <td width="27%" align="right">

          <input name="fname" type="text" value="<%=rs1.getString(2)%>">
 
        </td><td width="23%" align="left"><strong>Last Name</strong></td>
        <td width="27%" align="right"><input name="lname" type="text" value="<%=rs1.getString(3)%>"></td>
      </tr>
      <tr>
        <td align="left"><strong>Designation</strong>      </td>
        <td align="right"><input name="desg" type="text" value="<%=rs1.getString(5)%>"></td>
        <td align="left"><strong>Qualification</strong></td>
        <td align="right"><input name="qual" type="text" value="<%=rs1.getString(6)%>"></td>
      </tr>

      <tr>
        <td align="left"><strong>Specilization</strong>          </td>
        <td align="right"><input name="spelz" type="text" value="<%=rs1.getString(7)%>">
		</td>
        <td align="left"><strong>Experience</strong></td>
        <td align="right"><input type="text" name="exp" value="<%=rs1.getInt(8)%>">
		</td>
      </tr>


      <tr>
        <td align="left"><strong>Field of Experience</strong>          </td>
        <td align="right"><input name="foe" type="text" value="<%=rs1.getString(9)%>"></td>
        <td align="left"> <strong>University </strong> </td>
        <td align="right"><input name="university" type="text" value="<%=rs1.getString(10)%>"></td>
      </tr>
	  
	  <tr>
        <td align="left"><strong>Mobile</strong>          </td>
        <td align="right"><input name="mobile" type="text" value="<%=rs1.getInt(11)%>"></td>
        <td align="left"> <strong>E-mail</strong> </td>
        <td align="right"><input name="email" type="text" value="<%=rs1.getString(12)%>"></td>
	  </tr>
      <tr>
        <td align="left"><strong>Sex </strong>
          </td>
        <td align="left"><select name="sex" size="1">
          <option value=""><--Select--></option>
<%
if((rs1.getString(13)).equals("m"))
{
%>
          <option value="m" selected>Male</option>
          <option value="f">Female</option>
<%
}
else
{
%>
          <option value="m">Male</option>
          <option value="f" selected>Female</option>

<%
}
%>
        </select></td>
        <td align="left"><strong>Date Of Birth </strong> </td>
        <td align="right"><input name="dob" type="text" value="<%=rs1.getString(14)%>"></td>
      </tr>
	  <tr>
        <td align="left"><strong>Date of Join </strong></td>
        <td align="center"><input name="doj" type="text" value="<%=rs1.getString(16)%>"> 
          </td>
        <td align="left"><strong>Type</strong></td>
        <td align="left"><select name="type" size="1">
          <option value=""><--Select--></option>
<%
if((rs1.getString(15)).equals("a"))
{

%>     
          <option value="a" selected>Administrator</option>
          <option value="m">Manager</option>
          <option value="d">Doctor</option>
          <option value="c">Client</option>
          <option value="o">Official</option>
<%
}else
if((rs1.getString(15)).equals("m"))

{
%>
          <option value="a">Administrator</option>
          <option value="m" selected>Manager</option>
          <option value="d">Doctor</option>
          <option value="c">Client</option>
          <option value="o">Official</option>


<%
}else
if((rs1.getString(15)).equals("d"))

{
%>
          <option value="a">Administrator</option>
          <option value="m">Manager</option>
          <option value="d" selected>Doctor</option>
          <option value="c">Client</option>
          <option value="o">Official</option>


<%
}else
if((rs1.getString(15)).equals("c"))
{
%>
          <option value="a">Administrator</option>
          <option value="m">Manager</option>
          <option value="d">Doctor</option>
          <option value="c" selected>Client</option>
          <option value="o">Official</option>


<%
}else
if((rs1.getString(15)).equals("o"))
{

%>

          <option value="a">Administrator</option>
          <option value="m">Manager</option>
          <option value="d">Doctor</option>
          <option value="c" selected>Client</option>
          <option value="o"  selected>Official</option>


<%
}else
{
%>

          <option value="a">Administrator</option>
          <option value="m">Manager</option>
          <option value="d">Doctor</option>
          <option value="c">Client</option>
         <option value="o">Official</option>


<%
}
%>
        </select></td>
	  </tr>
	  <tr>
	    <td align="center">&nbsp;</td>
	    <td align="center"><strong>Password</strong></td>
	    <td align="left"><input name="pass" type="password" value="<%=rs1.getString(4)%>"></td>
	    <td align="right">&nbsp;</td>
	    </tr>
    </table>
      </td>
  </tr>
  <tr><td height="28" align="center">
  <input name="sno" type="hidden" value="<%=rs1.getInt(1)%>">
  <input name="submit" type="submit" value="Save"></td></tr>
</table>
</form>

	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>