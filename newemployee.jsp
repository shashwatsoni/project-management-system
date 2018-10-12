<%@ page import="java.sql.*;"%>
<%
	String eid=request.getParameter("eid").toLowerCase();
	String ename=request.getParameter("ename").toLowerCase();
	String sex=request.getParameter("sex").toLowerCase();
	String addr=request.getParameter("address").toLowerCase();
	String phone=request.getParameter("phone");
	String aemail=request.getParameter("alternate_email").toLowerCase();
	String designation=request.getParameter("designation");
	String grade=request.getParameter("grade");
	String primaryskills=request.getParameter("primaryskills");
	String secondaryskills=request.getParameter("secondaryskills");
	String salary=request.getParameter("salary");
	%>
<%	Connection con=null;
	PreparedStatement pst=null;
	PreparedStatement pst2=null;
	Statement st=null;
	ResultSet rs=null;
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:rmgmts","sa","SA@admin");
		
		pst=con.prepareStatement("insert into employee values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
	
				
				
				pst.setString(1,eid);	
				pst.setString(2,ename);				
				pst.setString(3,sex);
				pst.setString(4,addr);
				pst.setInt(5,Integer.parseInt(phone));	
				pst.setString(6,aemail);
				pst.setString(7,designation);	
				pst.setString(8,grade);
				pst.setString(9,primaryskills);
				pst.setString(10,secondaryskills);
				pst.setInt(11,Integer.parseInt(salary));
				pst.setString(12,"/emp_home.jsp");
				pst.setString(13,null);
				
				
			
			
		
			
		
				int eff=pst.executeUpdate();		
				
				if(eff>0 )
					out.println("Added Successfuly<BR>");
		
				else
					out.println("<CENTER><b><u>Failed To Add Employee<BR>");
		}
					
	catch(Exception e)	
		{
   		String msgs=" ";
		msgs=(e.getMessage().toLowerCase().indexOf("unique")!=-1)?"The User Name you Specified Already Exists.<BR><BR>Please Choose Another Name":"Unknown Exception Occured";
		out.println("<link rel=stylesheet href='./css/styles.css'><body bgcolor=ivory><h1>Error Occured! While Processing your Transaction</font></h1><P>"+msgs+"</p><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;"+e);

		}
%>