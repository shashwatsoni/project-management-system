<%if(session.getValue("login")==null) response.sendRedirect("RMShome.htm?invalidsession");%>
<html xmlns=""><head>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">

<title>PROJECT MANAGEMENT SYSTEM</title>
</head>
   <body>
		<table cellSpacing=0 cellPadding=0 border=0px bordercolor=#999966>
		<tr><td>
		<jsp:include page="emp_transactions.jsp" /><BR>
		</TBODY></TABLE>
	</td></tr></table>
</body></html>

