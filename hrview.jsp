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
			<legend>View Employee Details</legend><BR>
			<table align=center cellspacing=1 cellpadding=3>
			<form method=post action="allprofile.jsp">
				<center>
				
				<tr><Td>Employee Id:</td><TD><input name="id"></td>
				<Td align=center><button type=submit accesskey="G">Get Details</button></td></tr>
			</form>
			</table>
			</fieldset>
		</td></tr></table>
	</td></tr>
</table>
</body>
</html>
