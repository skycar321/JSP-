<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        :root {
            --text-color: rgba(255, 255, 255, 0.918);
            --background-color: rgba(0, 0, 0, 0.911);
            --accent-color: rgb(236, 27, 27);
            background-image: linear-gradient( 109.6deg,  rgba(0,0,0,1) 60.2%, rgba(247,30,30,1) 200.3% );
        }

        body {
            margin: 0;
            font-family: "Source Sans Pro";
            background-color: rgb(26, 26, 26);
        }

       

       

        
    </style>
     <script src="https://kit.fontawesome.com/efbc8e86d9.js" crossorigin="anonymous"></script>
<title>Image Processing by Nam</title>
</head>
<body>
<div class="custom-shape-divider-bottom-1637040446">
    <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
        <path d="M321.39,56.44c58-10.79,114.16-30.13,172-41.86,82.39-16.72,168.19-17.73,250.45-.39C823.78,31,906.67,72,985.66,92.83c70.05,18.48,146.53,26.09,214.34,3V0H0V27.35A600.21,600.21,0,0,0,321.39,56.44Z" class="shape-fill"></path>
    </svg>
</div>
<div class="navbar__logo">
                <i class="fas fa-magic"></i>
                <a href="#" onClick="window.location.reload()">Image processing </a>

            </div>
            <hr color="indianred">
<%
Connection conn = null; // JSP와 DB를 연결하는 교량.
String url = "jdbc:mysql://192.168.56.101:3306/membership_db";
String user = "root";
String password = "1234";

Class.forName("com.mysql.jdbc.Driver"); // 복사한 mysql ~~.jar 파일

conn = DriverManager.getConnection(url, user, password);

//out.println("<h1> 접속 성공! </h1>");

//conn.close();
		


%>

</body>
</html>