<%@ page errorPage="errorPage_login.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
<title>All_Login1</title>
</head>
<body>

<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="220" bgcolor="#e4d2b8"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	 
      <table width="100%" height="200"  border="1" >
          <tr>
            <td height="200">
			 <!-- content area for all modules starts-->
			
  
  

	         <p>
               <%
// variables
String uname=null;
String pass=null;
String k=null;
String sqlQuery1=null;
int cid=0;
int did=0;
	//requested parameters
	uname=request.getParameter("uname");
	pass=request.getParameter("pass");
	k=request.getParameter("k"); 
	
	
	sqlQuery1="select type, sno from LoginTable where name='"+uname+"' and password='"+pass+"' and type='"+k+"'";
	System.out.println("bhasker bhasker bhasker ************************"+sqlQuery1);
		//Connection with db
	
	CBean.makeConnection();
	ResultSet rs=null;
	CBean.setQuery(sqlQuery1);
rs=CBean.executeQuery();
rs.next();
System.out.println(rs.getString(1));
// here cid--->client
cid=rs.getInt(2);
did=cid;
System.out.println("client"+cid);
System.out.println("doctor"+did);
		//checking Authentication
	
	if((rs.getString(1)).equals("a"))
	{
	
	


%>	
               <%@include file="AdminMainPage.jsp"%>
               <%
	}
if((rs.getString(1)).equals("c"))
	{
	out.println("You are successfully Logged.... as a Client ");
	%>
<a href="ClientMainPage.jsp?cid=<%=cid%>">Click here to<strong> Continue...</strong></a>
               </p>
	         <p>
               <% 
	}
	if((rs.getString(1)).equals("o"))
	{
	out.println("You are successfully Logged.... as a Official");
	%>
              <a href="OfficialMainPage.jsp"><br>Click here to<strong> Continue..</strong></a></p>
	       
               <%
	}
	if((rs.getString(1)).equals("d"))
	{
	out.println("You are successfully Logged.... as a Doctor");
	%>
	        
              <a href="DoctorMainPage.jsp?did=<%=did%>"><br>Click here to<strong> Continue...</strong></a>
               <%
	}
	

	if((rs.getString(1)).equals("m"))
	{
	out.println("You are successfully Logged ...as a manager");
	%>
               <br>
              <a href="ManagerMainPage.jsp">Click here to<strong> Continue...</strong></a>
            
	        
               <%
	}
	
	%>
               <!-- content area for all modules ends-->
          
	        </td>
          </tr>
      </table>
	    
    </td></tr>
</table>

</body>
</html>