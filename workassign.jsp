<%@ page import="java.sql.*"%>
<%
    if(session.getValue("login")==null)
     response.sendRedirect("RMShome.htm?invalidsession");
    Connection con=null;
	PreparedStatement sst=null;
	Statement st=null;
	ResultSet rs=null;
	ResultSet rs2=null;
	ResultSet rs3=null;
	
 %>
 <script>
 function getValues(combo) {
 document.forms[0].project_name.value=combo.options[combo.selectedIndex].getAttribute('project_name');
 document.forms[0].platform.value=combo.options[combo.selectedIndex].getAttribute('platform');
 document.forms[0].duration.value=combo.options[combo.selectedIndex].getAttribute('duration');
 document.forms[0].enddate.value=combo.options[combo.selectedIndex].getAttribute('enddate');
 document.forms[0].module1.value=combo.options[combo.selectedIndex].getAttribute('module1');
 document.forms[0].description1.value=combo.options[combo.selectedIndex].getAttribute('description1');
 document.forms[0].module2.value=combo.options[combo.selectedIndex].getAttribute('module2');
 document.forms[0].description2.value=combo.options[combo.selectedIndex].getAttribute('description2');
 document.forms[0].module3.value=combo.options[combo.selectedIndex].getAttribute('module3');
 document.forms[0].description3.value=combo.options[combo.selectedIndex].getAttribute('description3');
 document.forms[0].module4.value=combo.options[combo.selectedIndex].getAttribute('module4');
 document.forms[0].description4.value=combo.options[combo.selectedIndex].getAttribute('description4');
 document.forms[0].module5.value=combo.options[combo.selectedIndex].getAttribute('module5');
 document.forms[0].description5.value=combo.options[combo.selectedIndex].getAttribute('description5');
 }
 function getValues2(combo) {
 document.forms[0].empname.empid=combo.options[combo.selectedIndex].getAttribute('empname');
 }
 
 function getValues3(combo) {
 document.forms[0].module1.value=combo.options[combo.selectedIndex].getAttribute('module1');
 document.forms[0].description1.value=combo.options[combo.selectedIndex].getAttribute('description1');
 document.forms[0].module2.value=combo.options[combo.selectedIndex].getAttribute('module2');
 document.forms[0].description2.value=combo.options[combo.selectedIndex].getAttribute('description2');
 document.forms[0].module3.value=combo.options[combo.selectedIndex].getAttribute('module3');
 document.forms[0].description3.value=combo.options[combo.selectedIndex].getAttribute('description3');
 document.forms[0].module4.value=combo.options[combo.selectedIndex].getAttribute('module4');
 document.forms[0].description4.value=combo.options[combo.selectedIndex].getAttribute('description4');
 document.forms[0].module5.value=combo.options[combo.selectedIndex].getAttribute('module5');
 document.forms[0].description5.value=combo.options[combo.selectedIndex].getAttribute('description5');
 }
 
 onload=function() {
	 if(document.forms[0].value.options.length>1)
     document.forms[0].value.options[1].selected=true;
	 getValues(document.forms[0].value);
	 
	 if(document.forms[0].empid.options.length>1)
     document.forms[0].empid.options[1].selected=true;
	 getValues2(document.forms[0].empid);
	 
	 if(document.forms[0].module.options.length>1)
     document.forms[0].module.options[1].selected=true;
	 getValues3(document.forms[0].module);
	 }
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
				<legend>Work Assignment</legend><BR>
					<table align=center cellspacing=1 cellpadding=3>
					<form method=post action="workassignment.jsp">
				<tr><td>
					<table width="600" height="300"align=center cellspacing=0 border="0" cellpadding=0>
					<TR><td>Product ID</td><td>
						<select name=pid onchange=getValues(this);>
							<option value="" project_name="" platform="" duration="" enddate="" module1="" description1="" module2="" description2=""  module3="" description3="" module4="" description4=""module5="" description5="">Select Project id</option>
								<%
									try {
									Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
									con=DriverManager.getConnection("jdbc:odbc:rmgmts","sa","SA@admin");
								    st=con.createStatement();
									String cmd="Select pid,project_name,platform,duration,enddate from projectdet";
									// where pd.pid in ( Select pm.pid from projectmod pm )";
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
					<TR><TD>End Date</td><Td ><input name=enddate readonly></td>
					<td>Module Name</td><td>
						<select name=module onchange=getValues3(this);>
							<option value="" module1="" description1="" module2="" description2=""  module3="" description3="" module4="" description4=""module5="" description5="">Select Module</option>
								<%
									try {
									Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
									con=DriverManager.getConnection("jdbc:odbc:rmgmts","sa","SA@admin");
								    st=con.createStatement();
									String id=request.getParameter("pid");
									String cmd1="Select module1,description1,module2,description2,module3,description3,module4,description4,module5,description5 from projectmod where pid='"+id+"'";
									
								    rs3=st.executeQuery(cmd1);
									
									while(rs3.next()) 
									{
										String pid=rs3.getString("pid");
										String module1=rs3.getString("module1");
										String description1=rs3.getString("description1");
										String module2=rs3.getString("module2");
										String description2=rs3.getString("description2");
										String module3=rs3.getString("module3");
										String description3=rs3.getString("description3");
										String module4=rs3.getString("module4");
										String description4=rs3.getString("description4");
										String module5=rs3.getString("module5");
										String description5=rs3.getString("description5");
									out.println("<option  module1='"+module1+"' description1='"+description1+"'>'"+module1+"'</option>");
									out.println("<option  module2='"+module1+"' description2='"+description1+"'>'"+module2+"'</option>");
									out.println("<option  module3='"+module1+"' description3='"+description1+"'>'"+module3+"'</option>");
									out.println("<option  module4='"+module1+"' description4='"+description1+"'>'"+module4+"'</option>");
									out.println("<option  module5='"+module1+"' description5='"+description1+"'>'"+module5+"'</option>");
									}
									
								   }   catch(Exception e) {
								       out.println("<option value='null'>"+e.getMessage().toString()+"</option>");
								       }
								%>
						</select>
						</td>
					
					</tr>
					<tr>
					<TD  valign=top align=center rowspan=2 >Description</td>
					<td><Textarea valign=top cols=18  rows=7 name=description1></Textarea></td>
					<td colspan=2>Employee ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select align=center name=emp onchange=getValues2(this);>
					<option empname="">Select Employee</option>
								<%
									try {
									Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
									con=DriverManager.getConnection("jdbc:odbc:rmgmts","sa","SA@admin");
									st=con.createStatement();
									String cmd2="Select empid,empname from employee";
									rs2=st.executeQuery(cmd2);
									
									while(rs2.next()) 
									{
										String empid=rs2.getString("empid");
										String empname=rs2.getString("empname");
										
										out.println("<option empid='"+empid+"' empname='"+empname+"' >"+empid+"</option>");
									}
									
								   }   catch(Exception e) {
								       out.println("<option val='null'>"+e.getMessage().toString()+"</option>");
								       }
								%>
						</select><br><br>
						Employee Name <input size=15 name=empname readonly><br><br>
						Submit Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select name="dd">
					      <option>dd</option>
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
					      <option>mm</option>
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
                                              <option value="2008">2016</option>
					      <option value="2009">2017</option>
					      <option value="2010">2018</option>
					      <option value="2011">2019</option>
					      <option value="2012">2020</option>
					      <option value="2013">2021</option>
					      <option value="2014">2022</option>
					      <option value="2015">2023</option>
					    </select>
						</td></tr>
						</td>
						</tr>
					</table>
					</td></tr>
					<tr><Td colspan=2 align=center><button type=submit accesskey="A"><u>A</u>ssign Task</button>
							&nbsp;&nbsp;<button type=reset accesskey="R"><u>R</u>eset</button>
					</td></tr>
					</table>
					</form>
					</td></tr>
					</table>
				</fieldset>
			</td></tr></table>
	</td></tr>
</table>
</body></html>
