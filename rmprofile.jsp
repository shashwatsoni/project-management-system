<html>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<html><head>

<title>PROJECT MANAGEMENT SYSTEM</title></head>
<body>
<jsp:include page="rm_transactions.jsp" />
<p><b>Personal Profile</font><hr color="#008000" size="4">

<%

	Connection con=null;
	PreparedStatement stmt=null;
	Statement st=null;
	ResultSet rs=null;
    try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:rmgmts","sa","SA@admin");
		if(session.getValue("login")==null) response.sendRedirect("RMShome.htm?invalid");	
    st=con.createStatement();
	String id=session.getValue("login").toString();
	rs=st.executeQuery("Select * from employee where empid='"+id+"'");
	
	while(rs.next()) {
		String empid=rs.getString(1);
		String empname=rs.getString(2);
		String gender=rs.getString(3);
		String address=rs.getString(4);
		int cno=rs.getInt(5);
		String aemail=rs.getString(6);
		String designation=rs.getString(7);
		String grd=rs.getString(8);
		String pskills=rs.getString(9);
		String sskills=rs.getString(10);
		int salary=rs.getInt(11);
		
	out.println("<table width=80% align='center' cellspacing=1 cellpadding=3><tr><td width='30%'>Emp ID</td><td width='30%' style='color:gray'>"+empid+"</td></tr><tr><td width='30%'>Emp Name</td><td width='30%' style='color:gray'>"+empname+"</td></tr><tr><td width='30%'>Contact No</td><td width='30%' style='color:gray'>"+cno+"</td></tr><tr><td width='30%'>Alternate Email</td><td width='30%' style='color:gray'>"+aemail+"</td></tr><tr><td width='30%'>Address</td><td width='30%' style='color:gray'>"+address+"</td></tr><tr><td width='30%'>Designation</td><td width='30%' style='color:gray'>"+designation+"</td></tr><tr><td width='30%'>Grade</td><td width='30%' style='color:gray'>"+grd+"</td></tr><tr><td width='30%'>Primary Skills</td><td width='30%' style='color:gray'>"+pskills+"</td></tr><tr><td width='30%'>Secondary Skills</td><td width='30%' style='color:gray'>"+sskills+"<td width='30%'></tr><tr><td width='30%'>salary</td><td width='30%' style='color:gray'>"+salary+"</td></tr></table>");
		
		}
}catch(Exception e){e.printStackTrace();}

%>


</body></html>