<%@ page import="java.sql.*"%>
<%
    if(session.getValue("login")==null) response.sendRedirect("RMShome.htm?invalidsession");
    Connection con=null;
	PreparedStatement sst=null;
	Statement st=null;
	ResultSet rs=null;
 %>
 <script>
 function getValues(combo) {
 document.forms[0].project_name.value=combo.options[combo.selectedIndex].getAttribute('project_name');
 document.forms[0].platform.value=combo.options[combo.selectedIndex].getAttribute('platform');
 document.forms[0].duration.value=combo.options[combo.selectedIndex].getAttribute('duration');
 document.forms[0].enddate.value=combo.options[combo.selectedIndex].getAttribute('enddate');
 }
 onload=function() {
	 if(document.forms[0].pid.options.length>1)
     document.forms[0].pid.options[1].selected=true;
	 getValues(document.forms[0].pid);}
 </script>
<html xmlns=""><head>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<title>PROJECT MANAGEMENT SYSTEM</title>
</head><body>
	<table width="780" align=center cellspacing=0 border="4" cellpadding=0>
	<jsp:include page="rm_transactions.jsp" />
			<tr><td>
			<table width="600" height="300"align=center cellspacing=0 border="0" cellpadding=0>
			<tr><td>
			<fieldset id="fieldhead">
				<legend>Module Division</legend><BR>
					<table align=center cellspacing=1 cellpadding=3>
					<form method=post action="projectmoduledivision.jsp">
					<tr><td>
					<table width="600" height="150"align=center cellspacing=0 border="0" cellpadding=0>
					<TR><td>Product ID</td><td>
						<select name=pid onchange=getValues(this);>
							<option value="" project_name="" platform="" duration="" enddate="">Select Project id</option>
								<%
									try {
									Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
									con=DriverManager.getConnection("jdbc:odbc:rmgmts","sa","SA@admin");
								    st=con.createStatement();
									String cmd="Select pd.pid,pd.project_name,pd.platform,pd.duration,pd.enddate from projectdet pd "; 
									// where pd.pid not in ( Select pm.pid from projectmod pm )";
								    rs=st.executeQuery(cmd);
									while(rs.next()) 
									{
										String pid=rs.getString("pid");
										String project_name=rs.getString("project_name");
										String platform=rs.getString("platform");
										int duration=rs.getInt("duration");
										String enddate=rs.getString("enddate");
										
										out.println("<option project_name='"+project_name+"' platform='"+platform+"' duration='"+duration+"' enddate='"+enddate+"' value='"+pid+"'>"+pid+"</option>");
									}
								   }   catch(Exception e) {
								       out.println("<option value='null'>"+e.getMessage().toString()+"</option>");
								       }
								%>
						</select>
						</td>
						<TD>Project Name</td><Td ><input name=project_name readonly></td>
					</tr>
					<tr><TD>Platform</td><Td ><input name=platform  readonly ></td>
						<TD> Duration</td><Td ><input name=duration readonly></td>
					</tr>
					<tr><TD>End Date</td><Td ><input name=enddate readonly></td>
						<td>Man Power </td><Td ><input name=manpowerreq ></td>
					</tr>
					</table>
						<tr><td align=Center>
							<table width="550" height="40" align=center cellspacing=0 border="0" cellpadding=0>
							<tr ><td>
								<fieldset id="fieldhead">
								<legend> Modules </legend><br>
								<table width="550" height="40" align=center cellspacing=0 border="0" cellpadding=0>
								<tr ><td>
									<fieldset id="fieldhead">
									<legend> Module 1 </legend><br>
										<table>
										<tr colspan=2 >
										<td valign=top align=center>Module Name </td><td valign=top><input size=15 name=module1></td>
										<TD valign=top align=center rowspan=2 >Description</td><td>
										<Textarea align=center rows=3 name=description1></Textarea></td>
										</tr>
										</table>
									</fieldset>
								</td></tr>
								<tr ><td>
									<fieldset id="fieldhead">
									<legend> Module 2 </legend><br>
										<table>
										<tr colspan=2 >
										<td valign=top align=center>Module Name </td><td valign=top><input size=15 name=module2></td>
										<TD valign=top align=center rowspan=2 >Description</td><td>
										<Textarea align=center rows=3 name=description2></Textarea></td>
										</tr>
										</table>
									</fieldset>
								</td></tr>
								<tr ><td>
									<fieldset id="fieldhead">
									<legend> Module 3 </legend><br>
										<table>
										<tr colspan=2 >
										<td valign=top align=center>Module Name </td><td valign=top><input size=15 name=module3></td>
										<TD valign=top align=center rowspan=2 >Description</td><td>
										<Textarea align=center rows=3 name=description3></Textarea></td>
										</tr>
										</table>
									</fieldset>
								</td></tr>
								<tr ><td>
									<fieldset id="fieldhead">
									<legend> Module 4 </legend><br>
										<table>
										<tr colspan=2 >
										<td valign=top align=center>Module Name </td><td valign=top><input size=15 name=module4></td>
										<TD valign=top align=center rowspan=2 >Description</td><td>
										<Textarea align=center rows=3 name=description4></Textarea></td>
										</tr>
										</table>
									</fieldset>
								</td></tr>
								<tr ><td>
									<fieldset id="fieldhead">
									<legend> Module 5 </legend><br>
										<table>
										<tr colspan=2 >
										<td valign=top align=center>Module Name </td><td valign=top><input size=15 name=module5></td>
										<TD valign=top align=center rowspan=2 >Description</td><td>
										<Textarea align=center rows=3 name=description5></Textarea></td>
										</tr>
										</table>
									</fieldset>
								</td></tr>
								</table>
								</fieldset>
							</td></tr>
							</table>
						</td></tr>
						<tr><Td colspan=2 align=center><button type=submit accesskey="P"><u>P</u>roceed</button>
							&nbsp;&nbsp;<button type=reset accesskey="R"><u>R</u>eset</button>
						</td></tr>
					</table>
				</fieldset>
			</td></tr></table>
	</td></tr>
</table>
</body></html>
