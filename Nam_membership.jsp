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
	String m_name = request.getParameter("m_name");
	String m_pw = request.getParameter("m_pw");
	String m_pw2 = request.getParameter("m_pw2");
	
	ResultSet m_rs = null;
	Statement m_stmt = conn.createStatement();
	String m_sql ="SELECT m_id FROM member WHERE m_id = '" + m_id +"' ";
	
	ResultSet rs2 = null;
	String sql2 ="INSERT INTO member(m_id, m_name, m_pw)";
	sql2 += "VALUES('" + m_id + "', '" + m_name + "', '";
	sql2 += m_pw + "' )";
	//
	m_stmt.executeQuery(m_sql);
	
	m_rs = m_stmt.executeQuery(m_sql);

	String id2 ="";
	
	while(m_rs.next()){
		id2 = m_rs.getString("m_id");
	}
	if(m_id.trim().equals(""))
		out.println("<script>alert('아이디를 입력해주세요.'); history.back();</script>");
	else if(m_id.equals(id2)){
		out.println("<script>alert('이미 사용중인 아이디입니다.'); history.back();</script>");
	}
	else if(m_pw.equals(m_pw2)){
		m_stmt.executeUpdate(sql2);
		out.println("<script>alert('환영합니다. 회원가입이 성공적으로 진행되었습니다.'); history.go(-2);</script>");
	}
	else
		out.println("<script>alert('두 비밀번호가 일치하지 않습니다.'); history.back();</script>");
	
	m_stmt.close();
	conn.close();
	%>

	

</body>
</html>