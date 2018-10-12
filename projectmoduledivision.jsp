<%if(session.getValue("login")==null) response.sendRedirect("RMShome.htm?invalidsession");%>
<html xmlns=""><head>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<title>RESOURCE MANAGEMENT SYSTEM</title>
</head>
<body>
<table width="780" align=center cellspacing=0 border="4" cellpadding=0>
<jsp:include page="rm_transactions.jsp" /><br>
	<tr><td>
		<table width="600" height="300"align=center cellspacing=0 border="0" cellpadding=0>
			<tr><td>
				<fieldset id="fieldhead">
				<legend>Project Modules</legend><BR>
					<%@ page import="java.sql.*"%>
				<%
					Connection con=null;
					PreparedStatement pst=null;
					Statement st=null;
					ResultSet rs=null;
					try	
					{
						String pid=request.getParameter("pid").trim();
						String manpowerreq=request.getParameter("manpowerreq");
						String module1=request.getParameter("module1").trim();
						String description1=request.getParameter("description1").trim();
						String module2=request.getParameter("module2").trim();
						String description2=request.getParameter("description2").trim();
						String module3=request.getParameter("module3").trim();
						String description3=request.getParameter("description3").trim();
						String module4=request.getParameter("module4").trim();
						String description4=request.getParameter("description4").trim();
						String module5=request.getParameter("module5").trim();
						String description5=request.getParameter("description5").trim();
						if(session.getValue("login")==null) response.sendRedirect("RMShome.htm?invalid");	

						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
						con=DriverManager.getConnection("jdbc:odbc:rmgmts","sa","SA@admin");
						Statement stmt=con.createStatement();
						
						pst=con.prepareStatement("insert into projectmod values (?,?,?,?,?,?,?,?,?,?,?,?)");
					
						pst.setString(1,pid);	
						pst.setInt(2,Integer.parseInt(manpowerreq));	
						pst.setString(3,module1);
						pst.setString(4,description1);
						pst.setString(5,module2);
						pst.setString(6,description2);
						pst.setString(7,module3);
						pst.setString(8,description3);
						pst.setString(9,module4);
						pst.setString(10,description4);
						pst.setString(11,module5);
						pst.setString(12,description5);				
								
						int eff=pst.executeUpdate();		
						
						if(eff>0 )
							out.println(" Module Division is Successful<BR><center><a href=\"javascript:history.back()\">Continue</a>");
				
						else
							out.println("<CENTER><b><u>Failed To Module Division<BR><center><a href=\"javascript:history.back()\">Continue</a>");
					}
								
					catch(Exception e)	
						{
					   	String msgs=" ";
						out.println("<body bgcolor=ivory><h1>Error Occured! While Processing Ur Transaction</font></h1><P>"+msgs+"</p><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;"+e);
						}
				%>
						
						
					
				</fieldset>
			</td></tr>
		</table>
	</td></tr>
</table>
</body>
</html>


