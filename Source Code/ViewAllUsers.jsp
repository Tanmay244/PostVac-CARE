<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" errorPage="errorPage.jsp"%>

<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page import="Project.sql.CBean"%>

<jsp:useBean id="CBean" class="Project.sql.CBean"/>



<html>
<head>


</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

		
	
                  <!-- content portion starts-->
 <br>
  <br>


        
			 
        <%
		
		String sql=null;
		sql= "select lname, email, type from MainLoginTable";
		System.out.println("query is---------->"+sql);
	    CBean.makeConnection();
	    CBean.setQuery(sql);
        ResultSet rs=CBean.executeQuery();
		//ResultSetMetaData rsmd=rs.getMetaData();
		
		%>
		 <table width="380" border="1" align="center" cellpadding="1" cellspacing="1" > 
    	   
         				<form action="" name="form1"> 

		  
	        
		  <tr> 
		  
		  <td>NAME</td>
		  <td>EMAIL</td>
		  <td>TYPE</td>
		  </tr>
		<%
		
	    while(rs.next()){
%>
<tr>      <td><%=rs.getString(1)%></td>
		  <td><%=rs.getString(2)%></td>
		  <td><%=rs.getString(3)%></td>
		  		   </tr>
		   <%
        }
		
		%>
		
		 
		 
		
     
		 </form>
		
            
 </table>

 

                  <!-- content portion ends-->
               

</body>
</html>
