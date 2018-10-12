<%@page import="java.sql.*"%>
<%! String userid,password;
Connection con;
Statement st;
ResultSet rs;
%>

<%
	try
		{
			userid=request.getParameter("userid");
			password=request.getParameter("password");

                        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:rmgmts","sa","SA@admin");
			st=con.createStatement();
			String cmd="Select * from employee where empid='"+userid+"' and pwd='"+password+"'";
			rs=st.executeQuery(cmd);
			session.putValue("login",userid);
		if(rs.next())
			{
			
				%>
			<jsp:forward page="<%= rs.getString(12) %>"/>;
						
				<%
				
	        }
			 
	    		 
			else 
				out.println("<body bgcolor=gray><p><font face=tahoma color=maroon>No Such user Exist .<BR><BR>Please Check Your ID and Password you supplied is Correct or Not</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"javascript:parent.close()\">Skip From This Page</a>");
				 
				
		}
		
	 catch(Exception e)
	    {
			out.println("<link rel=stylesheet href='css/styles.css'><body bgcolor=ivory><h1>Error Occured While Processing Your Transaction</font></h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"javascript:parent.close()\">Skip From This Page</a>");
		}

%>