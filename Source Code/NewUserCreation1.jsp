
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
<title>New User Creation</title>
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
      <table width="100%" height="58"  border="1" >
          <tr>
            <td height="52" align="center"><STRONG>New User Creation<%//=request.getParameter("k")%></STRONG></td>
          </tr>
		  
      </table>
	  <%
	  String sqlQuery1=null;
	  String sqlQuery2=null;
	  int update1=0;
	  int update2=0;
		ResultSet rs1=null;  
	  int sno=0;
	  String pass=null;
	  String fname=null;
	  String lname=null;
	  String desg=null;
	  String qual=null;
	  String spelz=null;
	  int exp=0;
	  String foe=null;
	  String university=null;
	  int mobile=0;
	  String email=null;
	  String sex=null;
	  String dob=null;
	  String type=null;
	  String doj=null;
	  String k=null;
	  //all fields come from 
	  fname=request.getParameter("fname");
	  lname=request.getParameter("lname");
	  desg=request.getParameter("desg");
	  qual=request.getParameter("qual");
	  
	  spelz=request.getParameter("spelz");
	  
exp=Integer.parseInt(request.getParameter("exp"));
foe=request.getParameter("foe");
	  university=request.getParameter("university");
	  mobile=Integer.parseInt(request.getParameter("mobile"));
	  
	  sex=request.getParameter("sex");
	  email=request.getParameter("email");
	  sex=request.getParameter("sex");
	  dob=request.getParameter("dob");
	type=request.getParameter("type");
	pass=request.getParameter("pass");
	doj=request.getParameter("doj");
	k=request.getParameter("k"); 
	//for sno 
	String sql1="select count(*)+1 from LoginTable";
	System.out.println(sql1);
CBean.makeConnection();
CBean.setQuery(sql1);
System.out.println("123456");
rs1=CBean.executeQuery();
System.out.println("9876543");
//System.out.println(rs1.getString(1));

rs1.next();
System.out.println("ok12345");
sno=Integer.parseInt(rs1.getString(1));

	//store the data into LoginTable
	sqlQuery1="insert into LoginTable values(?,?,?,?,?)";
	
	System.out.println(sqlQuery1);
	    CBean.makeConnection();
	    CBean.setQuery(sqlQuery1,"scroll","update");
		CBean.setInt(1,sno);
		CBean.setString(2,lname);
		CBean.setString(3,pass);
		CBean.setString(4,type);
		CBean.setString(5,email);
		System.out.println("ok1");
	    update1=CBean.executeUpdate();
System.out.println("ok1");

//store the data into MainLoginTable
	sqlQuery2="insert into MainLoginTable values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	System.out.println(sqlQuery2);
	    CBean.makeConnection();
	    CBean.setQuery(sqlQuery2,"scroll","update");
		CBean.setInt(1,sno);
		CBean.setString(2,fname);
		CBean.setString(3,lname);
		CBean.setString(4,pass);
		CBean.setString(5,desg);
		CBean.setString(6,qual);
		CBean.setString(7,spelz);

		CBean.setInt(8,exp);

		CBean.setString(9,foe);
		CBean.setString(10,university);
		CBean.setInt(11,mobile);
		CBean.setString(12,email);
		CBean.setString(13,sex);
		CBean.setString(14,dob);
		CBean.setString(15,type);
	 		CBean.setString(16,doj);
	    update2=CBean.executeUpdate();
out.println("ok2 big query");

	  %>
		<table width="100%" height="455" border="1">
  <tr>
    <td>If u want to add another user<a href="NewUserCreation.jsp?k="+<%=k%>+""> <strong>CLICK HERE</strong></a>  </td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
</table>

	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>