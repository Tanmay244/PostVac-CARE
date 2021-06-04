<%@ page errorPage="errorPage.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>

<html>
<head>
</head>
<body>
<%@include file="Edoctor.jsp"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td width="21%" height="200"><%@include file="LeftMenu.jsp"%> 
    </td>
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
	  <%

	  String sql=null;
	  int update1 =0;
	  int sno=0;
	  String pass=null;
	  String doj=null;
	  String dob=null;
	  String type=null;
	  String sex=null;
	  String email=null;
	  String university =null;
	  String foe=null;
	  int exp=0;
	  int mobile=0;
	  String spelz=null;
	  String qual=null;
	  String desg=null;
	  String lname=null;
	  String fname=null;
	  
	  sno =Integer.parseInt(request.getParameter("sno"));
	   pass=request.getParameter("pass");
	   doj=request.getParameter("doj");
	   dob=request.getParameter("dob");
       type =request.getParameter("type");
	   mobile=Integer.parseInt(request.getParameter("mobile"));
//	   mobile=request.getParameter("mobile");
	   sex =request.getParameter("sex");
	   foe=request.getParameter("foe");
	   exp=Integer.parseInt(request.getParameter("exp"));
	   spelz=request.getParameter("spelz");
	   fname =request.getParameter("fname");
	   lname=request.getParameter("lname");
	   desg=request.getParameter("desg");
	   qual=request.getParameter("qual");
	   email=request.getParameter("email");
	   university=request.getParameter("university");
	   
	   sql="update MainLoginTable set fname=?, lname=?, password=?, desg=?, qual=?, spelz=?, exp=?, foe=?, university=?, mobile=?, email=?, sex=?, dob=?, type=?, joindate=? where sno=?";
	     System.out.println("query----------");
		 CBean.makeConnection();
CBean.setQuery(sql, "scroll", "update");
  System.out.println("mofy4");
	CBean.setString(1,fname);
	CBean.setString(2,lname);
	CBean.setString(3,pass);
	CBean.setString(4,desg);
	CBean.setString(5,qual);
	CBean.setString(6,spelz);
	CBean.setInt(7,exp);
	CBean.setString(8,foe);
	CBean.setString(9,university);
	CBean.setInt(10,mobile);
	CBean.setString(11,email);
	CBean.setString(12,sex);
	CBean.setString(13,dob);
	CBean.setString(14,type);
	CBean.setString(15,doj);
	CBean.setInt(16,sno);
		
   update1=CBean.executeUpdate();
	 System.out.println("<---------updated------>");
	  %>
      <table width="100%" height="270"  border="1" >
          <tr>
            <td height="264">If u want to modify another record <a href="ModifyUser.jsp"><strong>CLICK HERE</strong></a>
			</td>
          </tr>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>

</body>
</html>