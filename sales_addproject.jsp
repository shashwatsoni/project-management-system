<%if(session.getValue("login")==null) response.sendRedirect("RMShome.htm?invalidsession");%>
<html xmlns=""><head>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">

<title>PROJECT MANAGEMENT SYSTEM</title>
</head>
<body>
<table width="780" align=center cellspacing=0 border="4" cellpadding=0>
<jsp:include page="sales_transactions.jsp" /><br>
	<tr><td>
		<table width="600" height="300"align=center cellspacing=0 border="0" cellpadding=0>
		<tr><td>
			<fieldset id="fieldhead">
			<legend>Add New Project</legend><BR>
			<table align=center cellspacing=1 cellpadding=3><form method=post action="addproject.jsp">
				<center>
				<tr><Td>Client Name:</td><TD><input name="cname"></td></tr>
				<tr><Td>Project Id:</td><TD><input name="pid"></td></tr>
				<tr><Td >Project Name:</td><TD><input name="pname"></td></tr>
				<TR><TD >Platform:</td><td>
				<select name=Platform>
					<option value="">
					<option value="C">C
					<option value="C++">C++
					<option value="Java">Java
					<option value=".Net">.Net
					</select>
				</td></tr>
				<tr><Td>Duration:</td><TD><input name="duration"></td></tr>
				<tr>
				<Td>End Date</td>				
			    <td><select name="dd">
			      <option>date</option>
			      <option value="01">01</option>
			      <option value="02">02</option>
			      <option value="03">03</option>
			      <option value="04">04</option>
			      <option value="05">05</option>
			      <option value="06">06</option>
			      <option value="07">07</option>
			      <option value="08">08</option>
			      <option value="09">09</option>
			      <option value="10">10</option>
			      <option value="11">11</option>
			      <option value="12">12</option>
			      <option value="13">13</option>
			      <option value="14">14</option>
			      <option value="15">15</option>
			      <option value="16">16</option>
			      <option value="17">17</option>
			      <option value="18">18</option>
			      <option value="19">19</option>
			      <option value="20">20</option>
			      <option value="21">21</option>
			      <option value="22">22</option>
			      <option value="23">23</option>
			      <option value="24">24</option>
			      <option value="25">25</option>
			      <option value="26">26</option>
			      <option value="27">27</option>
			      <option value="28">28</option>
			      <option value="29">29</option>
			      <option value="30">30</option>
			      <option value="31">31</option>
			    </select>
			    <select name="mm">
			      <option>month</option>
			      <option value="01">01</option>
			      <option value="02">02</option>
			      <option value="03">03</option>
			      <option value="04">04</option>
			      <option value="05">05</option>
			      <option value="06">06</option>
			      <option value="07">07</option>
			      <option value="08">08</option>
			      <option value="09">09</option>
			      <option value="10">10</option>
			      <option value="11">11</option>
			      <option value="12">12</option>
			    </select>
				<select name="yyyy">
			      <option>year</option>
			      <option value="2008">2008</option>
			      <option value="2009">2009</option>
			      <option value="2010">2010</option>
			      <option value="2011">2011</option>
			      <option value="2012">2012</option>
			      <option value="2013">2013</option>
			      <option value="2014">2014</option>
			      <option value="2015">2015</option>
                              <option value="2015">2016</option>
                              <option value="2015">2017</option>
                              <option value="2015">2018</option>
                              <option value="2015">2019</option>
                              <option value="2015">2020</option>
                              <option value="2015">2021</option>
                              <option value="2015">2022</option>
			    </select></td>
			  </tr>
				<tr><Td>Budget</td><TD><input name="budget"></td></tr>
				<tr><Td colspan=2 align=center><button type=submit accesskey="A">Add Project</button>
				&nbsp;&nbsp;<button type=reset accesskey="R">Refresh</button></td></tr>
				</center>
			</table><BR>
			</fieldset>
		</td></tr></table>
	</td></tr>
</table>
</body>
</html>
