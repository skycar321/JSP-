<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
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
<%@ include file="dbconnect.jsp" %>
<%
	String m_id = request.getParameter("m_id");
	String m_pw = request.getParameter("m_pw");
		
	ResultSet m_rs = null;
	Statement m_stmt = conn.createStatement();
	
	String sql = "SELECT m_pw FROM member WHERE m_id='";
	sql += m_id +"'";
	m_rs = m_stmt.executeQuery(sql);
	
	String pw2="";
	while(m_rs.next()){
		pw2 = m_rs.getString("m_pw");
	}
	if(m_id.equals(""))
		out.println("<script>alert('아이디를 입력해주세요.'); history.back();</script>");
	else if(m_pw.equals(""))
		out.println("<script>alert('비밀번호를 입력해주세요.'); history.back();</script>");
	else if(pw2.equals(""))
		out.println("<script>alert('존재하지 않는 아이디입니다.'); history.back();</script>");
	else if(m_pw.equals(pw2)){
		session.setAttribute("m_id", m_id);
		session.setAttribute("m_pw", m_pw);
		pageContext.forward("Nam_color_client.jsp");
	}
	else{
		out.println("<script>alert('비밀번호가 일치하지 않습니다.'); history.back();</script>");
	}
	m_stmt.close();
	conn.close();
%>
</body>
</html>