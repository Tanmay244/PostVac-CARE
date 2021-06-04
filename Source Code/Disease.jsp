<%@ page errorPage="errorPage_login.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
<script language="javascript" src="JavaScripts/Disease_Fields.js"></script>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="250"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
	  <a href="ManagerMainPage.jsp">Home</a>
      <%@include file="LogoutIcon.jsp"%> 
	   <!-- Logout.jsp-->
	  <!-- content area of all models starts-->
      <table width="100%" height="188"  border="1" >
          <form name="form1" method="post" action="Disease1.jsp" onsubmit="return validate(this);">
		  <tr><td align="center"><strong>Diseases and their possible Remedy</strong></td></tr>
		  <tr>
            <td width="35%" height="127">
			
              <p align="center"><strong>Disease Name </strong>                
                <input type="text" name="dise">
                <a href="#" onClick="verifyUsername(document.form1.dise.value);">Verify</a>
              </p>
              <p align="center"><strong>Remedy ::</strong>
                <textarea name="remedy" rows="3" cols="40"></textarea>
            </p></td>
   		    </tr>
			  <tr>
			<td height="28" align="center"><input type="submit" name="Submit" value="Save"></td>
          </tr>
		  </form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>