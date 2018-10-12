<%@ page import="java.sql.*"%>
<%if(session.getValue("login")==null) response.sendRedirect("RMShome.htm?invalidsession");%>
<html xmlns=""><head>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">

<title>PROJECT MANAGEMENT SYSTEM</title>
</head>
<body>
<table width="780" align=center cellspacing=0 border="4" cellpadding=0>
<jsp:include page="emp_transactions.jsp" /><br>
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
				  String pid=request.getParameter("h1");
				  String empid=session.getValue("login").toString();
				  String taskperform=request.getParameter("taskperform");
				  
				  String query="Update workassign set taskperform=? , status=? where pid=?";
				  pst=con.prepareStatement(query);

                                 // out.print(taskperform);
                                 // out.print(status);
                                 // out.print(pid);
				  pst.setString(1,taskperform);
				  pst.setString(2,status);
                                  pst.setString(3,pid);
				  int eff=pst.executeUpdate();  //no of rows affected
				  if(eff>0) out.println("<body><center><h1><font face=tahoma color=gray>Status Updated Successfully .<BR><BR></h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;");
				  else out.println("<body bgcolor=gray><Center><h1><font face=tahoma color=ivory>Failed to update Status.<BR><BR>Please Enter Proper Data .</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;");
				  } catch(Exception e) {
					out.println("<body bgcolor=gray><center><h1><font face=tahoma color=ivory>Transaction Failed While Updating Ur Project Status.Due To Error:<BR>"+e+"</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>");
				  }
				  %>
				  </table><BR>
			
		</td></tr></table>
	</td></tr>
</table>
</body>
</html>


