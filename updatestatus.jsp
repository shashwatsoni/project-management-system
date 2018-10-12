<%@ page import="java.sql.*"%>
<%if(session.getValue("login")==null) response.sendRedirect("RMShome.htm?invalidsession");%>
<html xmlns=""><head>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">

<title>PROJECT MANAGEMENT SYSTEM</title>
</head>
<body>
<table width="780" align=center cellspacing=0 border="4" cellpadding=0>
<jsp:include page="hr_transactions.jsp" /><br>
	<tr><td>
		<table width="600" height="300"align=center cellspacing=0 border="0" cellpadding=0>
		<tr><td>
				<%
					Connection con=null;
					PreparedStatement pst=null;
					Statement st=null;
					ResultSet rs=null;
					
				 try{
				  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				  con=DriverManager.getConnection("jdbc:odbc:rmgmts","sa","SA@admin");
				 
				  String status=request.getParameter("status");
				  String pid=request.getParameter("pid");
				 
				  
				    String query="Update  projectdet set status=?";
				  pst=con.prepareStatement(query);
							
				  pst.setString(1,status);
				  int eff=pst.executeUpdate();
				  if(eff>0) out.println("<body><center><h1><font face=tahoma color=gray>Project Status  Updated Successfully .<BR><BR></h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;");
				  else out.println("<body bgcolor=gray><Center><h1><font face=tahoma color=ivory>Failed to Add.<BR><BR>Please Enter Proper Data .</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;");
				  } catch(Exception e) {
					out.println("<body bgcolor=gray><center><h1><font face=tahoma color=ivory>Transaction Failed While Updating Ur Project .Due To Error:<BR>"+e+"</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>");
				  }
				  %>
				  </table><BR>
			
		</td></tr></table>
	</td></tr>
</table>
</body>
</html>


