<%@ page errorPage="errorPage.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page import="java.util.*"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>

</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="513"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
      <div align="right">
        <%@include file="LogoutIcon.jsp"%> 
        <!-- Logout.jsp ends-->
        <!-- content area for all modules starts-->
        <%
System.out.println("viewfaqs.jspsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
String sql1=null;
ResultSet rs=null;

int cid=Integer.parseInt(request.getParameter("cid"));

CBean.makeConnection();
sql1="select * from PostedQuery where cid="+cid;

CBean.setQuery(sql1);

rs=CBean.executeQuery();




%>
        <strong><a href="ClientMainPage.jsp?cid=<%=cid%>">BACK</a></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
        <table width="100%"  border="1">
<tr>
<td><strong>Query</strong></td>


<td><strong>ReplayQuery</strong></td>

</tr>  

<%

//rs.previous();
System.out.println("outerwhile ");
while(rs.next())
{
System.out.println("while loop");
%>
<tr>
		<td>
           <% 
           out.println(rs.getString(2));
		   %>
		   </td><td>
		   <%
		   out.println(rs.getString(5));
           %></td><%
        
		   
	    }
		%>
		
 
	
		
   
	
		   
	  </table>
	  </form>
      <div align="center"><strong></strong>
        <%
CBean.closeConnection();
%>
	      <!-- content area for all modules ends-->
      </div></td></tr>
</table>

</body>
</html>