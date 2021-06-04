<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*" %>



<jsp:useBean id="connectionBean" class="com.bhel.sql.ConnectionBean" />

<%	
	connectionBean.makeConnection();	
%>

<html>
<head>
<title>majorSubject Checking</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

              <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
                <%
		        connectionBean.setQuery("select majorSubject from p1_m5_majorsubject where majorSubject=?");
			    connectionBean.setString(1,request.getParameter("majorSubject"));
			    ResultSet rs=connectionBean.executeQuery(); 
			    if(rs.next()){%>			    
			   <tr bgcolor="#CCCCCC">
		                  <td width="48%" height="400" align="center">
		                  <div align="center"><font color="#000066"><strong><b>majorSubject <%=request.getParameter("majorSubject")%>&nbsp;Already Exist. <br>
						   <a href="#" onClick="javascript:window.close();">Try again...</a><br><br><br><br></b></strong></font></div>
		                  </td>
		        </tr>  							     							
				<%}
			    else{%>
				 <tr bgcolor="#CCCCCC">
		                  <td width="48%" height="400" align="center">
		                  <div align="center"><font color="#000066"><strong><b>majorSubject<%=request.getParameter("majorSubject")%>&nbsp;Is Available</font>
							<br><a href="#" onClick="javascript:window.close();">Close[X]</a><br><br><br><br></b></strong></font></div>
		                  </td>
		         </tr>  	
			    <%}%>
			    </table>   
  
<%
	connectionBean.closeConnection();
%>
</body>
</html>
