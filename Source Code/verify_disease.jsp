<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*" %>



<jsp:useBean id="CBean" class="Project.sql.CBean" />

<%	
	CBean.makeConnection();	
%>

<html>
<head>
<title>Disease Name Checking</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

              <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
                <%
		        CBean.setQuery("select dname from Disease where dname=?");
			    CBean.setString(1,request.getParameter("dise"));
			    ResultSet rs=CBean.executeQuery(); 
			    if(rs.next()){%>			    
			   <tr bgcolor="#CCCCCC">
		                  <td width="48%" height="400" align="center">
		                  <div align="center"><font color="#000066"><strong><b>Disease Name <%=request.getParameter("dise")%>&nbsp;Already Exist. <br>
						   <a href="#" onClick="javascript:window.close();">Try again...</a><br><br><br><br></b></strong></font></div>
		                  </td>
		        </tr>  							     							
				<%}
			    else{%>
				 <tr bgcolor="#CCCCCC">
		                  <td width="48%" height="400" align="center">
		                  <div align="center"><font color="#000066"><strong><b>Disease Name<%=request.getParameter("dise")%>&nbsp;Is Available</font>
							<br><a href="#" onClick="javascript:window.close();">Close[X]</a><br><br><br><br></b></strong></font></div>
		                  </td>
		         </tr>  	
			    <%}%>
			    </table>   
  
<%
	CBean.closeConnection();
%>
</body>
</html>
