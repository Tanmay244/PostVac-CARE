<html>
<head>
</head>
 <%
			  String type1=null;
              String type=request.getParameter("k");
			  if(type.equals("a"))
			  {
			  type1="Administrator";
			  }
			  else
			  if(type.equals("m"))
			  {
			  type1="Manager";
			  }else

              if(type.equals("d"))
			  {
			  type1="Doctor";
			  }else
			  if(type.equals("c"))
			  {
			  type1="Client";
			  }else
			  if(type.equals("o"))
			  {
			  type1="Official";
			  }
			  
			  %>
<body>

<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="200" bgcolor="#e4d2b8"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	 
      <table width="100%" height="267"  border="1" >
          <tr>
            <td height="261">
			
			 <!-- content area for all modules starts-->
			
			<table width="100%"  hight="100" border="1" cellpadding="0" cellspacing="0">
  <form name="form1" method="get" action="All_Login1.jsp">
  <tr>

	<td height="10" align="center" bgcolor="#CCCCCC"><font size="+3" color="#99CCCC"></font><%=type1%> Login Page</font>
	 
  
  </td>
  </tr>
  <tr><td height="235" align="center" bgcolor="#CCCCCC">	<p><strong>User Name : :</strong>
          <input type="text" name="uname">
  </p>
      <p> <strong>Password &nbsp;&nbsp;&nbsp;: :</strong>
          <input type="password" name="pass">
      </p>
      <input name="k" type="hidden" value="<%=request.getParameter("k")%>">   <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" name="Submit" value="Submit"> 
    &nbsp;&nbsp;&nbsp; <input name="reset" type="reset" value="clear">

	<br>
</td></tr>
</form>
</table>
<!-- content area for all modules ends-->

			</td>
          </tr>
      </table>
	    
    </td></tr>
</table>

</body>
</html>