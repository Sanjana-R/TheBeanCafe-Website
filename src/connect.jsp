<%@ page import = "java.sql.*" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.SQLException" %>


<%
	boolean isFound = false; 
	String dbemail,dbpassword;
	String emails = request.getParameter("email");
    String pass = request.getParameter("password");
	String passs = request.getParameter("confirmpassword");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users?serverTimezone=UTC","root","");
	
	if(pass.equals(passs)){
		if(emails.equals("") || emails == null){
			request.setAttribute("errorMsg","Please Enter Data!");
		}
		else{			
			PreparedStatement pstmt=null;
			pstmt=conn.prepareStatement("select * from users where email=? AND password=?");
			
			pstmt.setString(1,emails);
			pstmt.setString(2,pass);
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				dbemail=rs.getString("email");
				dbpassword=rs.getString("password");
				if(emails.equals(dbemail))
				{
					isFound = true;
					request.setAttribute("errorMsg","User Already Exists!");
					conn.close();
				}
			}
			if(!isFound){
					PreparedStatement ps = null;
					ps = conn.prepareStatement("insert into users values(?,?)");
				
					ps.setString(1, emails);
					ps.setString(2, pass);
			
					int i = ps.executeUpdate();
				
					if(i > 0) {
						session.setAttribute("login",emails);
						conn.close();
						response.sendRedirect("index.jsp");
					}else{
						request.setAttribute("errorMsg","You are Not Registered!");
						conn.close();
					}
			}
		}
	}
	else{
		request.setAttribute("errorMsg","Password must be same!");
	}
	
	
%>

<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<style>
			*{
				padding: 0px;
				margin: 0px;
				box-sizing:border-box;
			}
			body{
				width: 100%;
				height: 100%;
                background-color: #012639 ;	
    			background-position: center;
				background-attachment: fixed;
				background-repeat: no-repeat;
				background-size: 100% 100%;
				overflow: hidden;
			}
			a{
				text-decoration: none;
				color: black;
				font-size: 16px;
                font-family: Arial, Helvetica, sans-serif;
				letter-spacing: 1px;
				font-weight: 700;
			}
			.register-button{
				transform: translate(600px,350px);
				position: absolute;
				border-radius: 40px;
				background-color:  #9B7A69;
				height: 40px;
				width: 130px;
				text-align:center;
				padding-top: 9.5px;
				transition-property: box-shadow,height,width, font-size, padding-top;
				transition-duration: 0.7s;
			}
			.register-button:hover{
				background-color:  #9B7A69;
				height: 45px;
				width: 140px;
				text-align:center;
				padding-top: 13.0px;
			}
			p{
				transform: translate(545px,250px);
				position: absolute;
				border: 1px solid white;
				border-radius: 30px;
				padding: 19px;
				color: black;
				font-size: 18px;
				font-family: "Montserrat";
				letter-spacing: 2px;
				font-weight: 700;
			}
			.fa-exclamation-circle{
				transform: translate(645px,200px);
				position: absolute;
				color: yellow;
				font-size: 35px;
				animation-name: icon;
				animation-duration: 4s;
				animation-iteration-count: infinite;
				animation-timing-function: linear;
			}
			@keyframes icon{
				0%{
					color: yellow;
					font-size: 35px;
				}50%{
					color: red;
					font-size: 45px;
				}100%{
					color: yellow;
					font-size: 35px;
				}
			}
		</style>
	</head>
	<body>
		<i class="fa fa-exclamation-circle" aria-hidden="true"></i>
		<p style="color: white; text-align: center;">
			<%
				if(request.getAttribute("errorMsg")!=null || request.getAttribute("errorMsg")!= " "){
					out.println(request.getAttribute("errorMsg"));
				}
			%>
		</p>
		<a href="mainpage.jsp" target="_self">
			<div class="register-button">
				Try Again
			</div>
		</a>
	</body>
</html>