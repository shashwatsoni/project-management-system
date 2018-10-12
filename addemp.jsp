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
			<fieldset id="fieldhead">
			<legend>Add New Employee</legend><BR>
			<table align=center cellspacing=1 cellpadding=3><form method=post action="newemployee.jsp">
				<center>
				<tr><Td>Emp Id</td><TD><input name="eid"></td></tr>
				<tr><Td>Emp Name</td><TD><input name="ename"></td></tr>
				<tr><Td>Gender</td><TD><input type=radio name=sex class=check checked value="male">Male&nbsp;&nbsp;
						<input type=radio name=sex class=check value="female">Female</td></tr>
				<tr>
				    <td align=right>Address
				    <td><textarea wrap=off accesskey="D" rows=3 cols=20 name=address></textarea></td>
				</tr>
				<Tr>
				    <td >Phone/Mobile
				    <td><INPUT  size=15 name=phone>
				</tr>
				<tr>
				   <td >Alternative Email</td>
				   <td><INPUT name=alternate_email></td>
				</tr>
				<tr>
				   <td >Designation</td>
				   <td>
						<select name=designation>
							<option value="">
							<option value="emp">Employee
							<option value="rm">Resource Manager
						</select>
					</td>
				</tr>
				<tr>
				<td>Grade</td>
				<td>
						<select name=grade>
							<option value="">
							<option value="A">A
							<option value="B">B
							<option value="C">C
							<option value="D">D
						</select>
				</td>
				</tr>
				<tr><Td>Primary Skills</td><TD><input name="primaryskills"></td></tr>
				<tr><Td>Secondary Skills</td><TD><input name="secondaryskills"></td></tr>
				<tr><Td>Salary</td><TD><input name="salary"></td></tr>
			
				<tr><Td colspan=2 align=center><button type=submit accesskey="A">Add Employee</button>
				&nbsp;&nbsp;<button type=reset accesskey="R">Refresh</button></td></tr>
				</center>
			</table><BR>
			</fieldset>
		</td></tr></table>
	</td></tr>
</table>
</body>
</html>
