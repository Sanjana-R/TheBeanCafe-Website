<%@ page import = "java.sql.*" %>

<%
	if(session.getAttribute("login")!=null)
	{
		response.sendRedirect("index.jsp");
	}
%>

<%
	String dbemail, dbpassword;
	String email = request.getParameter("email");
    String pass = request.getParameter("password");

	try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users?serverTimezone=UTC","root","");
            PreparedStatement pstmt=null;
		
			pstmt=conn.prepareStatement("select * from users where email=? AND password=?");
			pstmt.setString(1,email);
			pstmt.setString(2,pass);
	
			ResultSet rs=pstmt.executeQuery();
		
			if(rs.next())
			{
				dbemail=rs.getString("email");
				dbpassword=rs.getString("password");
				if(email.equals(dbemail) && pass.equals(dbpassword))
				{
					session.setAttribute("login",dbemail);
					response.sendRedirect("index.jsp");
				}
			}
			else
			{
				request.setAttribute("errorMsg","Invalid email or password");
			}
			conn.close();
        }
        catch(Exception se) {
			out.println(se);
            se.printStackTrace();
    }
%>

<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="img/svg-icons/headphone1.svg" type="image/svg"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" >
		<link href="https://fonts.googleapis.com/css2?family=Marck+Script&family=Monoton&family=Montserrat:wght@500&family=Sacramento&display=swap" rel="stylesheet">
		<style>
			*{
				padding: 0px;
				margin: 0px;
				box-sizing:border-box;
			}
			body{
				width: 100%;
				height: 100%;
				background-image: linear-gradient(to top , rgba(34, 40, 49, 1.0) 40%,rgba(57, 62, 70, 0.2)), url('img/final.jpg');
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
				font-family: "Montserrat";
				letter-spacing: 1px;
				font-weight: 700;
			}
			.register-button{
				transform: translate(600px,350px);
				position: absolute;
				border-radius: 40px;
				background-color: #28df99;
				height: 40px;
				width: 130px;
				text-align:center;
				padding-top: 9.5px;
				transition-property: box-shadow,height,width, font-size, padding-top;
				transition-duration: 0.7s;
			}
			.register-button:hover{
				background-color: #28df99;
				height: 45px;
				width: 140px;
				text-align:center;
				padding-top: 13.0px;
				box-shadow: 2px 2px 10px 0px rgba(0,0,0,0.5);
			}
			p{
				transform: translate(515px,250px);
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
				transform: translate(655px,200px);
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