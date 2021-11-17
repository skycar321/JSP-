<%@page import="java.awt.image.BufferedImage"%>
    <%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
        <%@ page import="java.io.*"%>
            <%@ page import="java.util.*"%>
                <%@ page import="com.oreilly.servlet.*"%>
                    <%@ page import="com.oreilly.servlet.multipart.*"%>
                        <%@ page import="javax.imageio.*"%>
                            <%@ page import="java.awt.image.*"%>

                                <!-- 占쏙옙占쎌�깍옙占썸에占쏙옙占� 占쏙옙占쏙옙 占쎌�깍옙��占쏙옙��� 占쏙옙占싼�占쏙옙 -->


                                <%@ page import="java.io.File" %>

                                    <!-- 占쏙옙占쏙옙 占쎈��占쏙옙占� 占쏙옙占쎌�놂옙占썲��占� 占쏙옙占썬�삠�� 占쏙옙占쏙옙占쎌�곤옙 占썬�삘�ⓨ�紐�占� 獄�占썼�占썰��⑨옙 域밸�占쏙옙 占쏙옙占쏙옙 占쎈��竊�占쏙옙野�占� -->

                                    <%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

                                        <!-- 占썬�쇽옙占썸에占� 占쏙옙占쏙옙 占쏙옙嚥∽옙占쏙옙 占쏙옙疫뀐옙 占쏙옙占쏙옙 占쎈��占쏙옙占쏙옙 -->

                                        <%@ page import="com.oreilly.servlet.MultipartRequest" %>
                                            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                                            <html>

                                            <head>
                                                <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
                                                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                                <style type="text/css">
                                                     :root {
                                                        --text-color: rgba(255, 255, 255, 0.918);
                                                        --background-color: rgba(0, 0, 0, 0.911);
                                                        --accent-color: rgb(236, 27, 27);
                                                        background-image: linear-gradient( 109.6deg, rgba(0, 0, 0, 1) 60.2%, rgba(247, 30, 30, 1) 200.3%);
                                                        /* background-image: linear-gradient(to right, #eea2a2 0%, #bbc1bf 19%, #57c6e1 42%, #b49fda 79%, #7ac5d8 100%); */
                                                        /* background-image: linear-gradient(to right, #09203f 0%, #537895 100%);   */
                                                        /* background-image: linear-gradient(to left, #3ab5b0 0%, #3d99be 31%, #56317a 100%); */
                                                    }
                                                    
                                                    body {
                                                        margin: 0;
                                                        font-family: "Source Sans Pro";
                                                        background-color: rgb(26, 26, 26);
                                                    }
                                                    
                                                    a {
                                                        text-decoration: none;
                                                        color: var(--text-color);
                                                    }
                                                    
                                                    .custom-shape-divider-bottom-1637040446 {
                                                        position: absolute;
                                                        bottom: 0;
                                                        left: 0;
                                                        width: 100%;
                                                        overflow: hidden;
                                                        line-height: 0;
                                                        transform: rotate(180deg);
                                                    }
                                                    
                                                    .custom-shape-divider-bottom-1637040446 svg {
                                                        position: relative;
                                                        display: block;
                                                        width: calc(229% + 1.3px);
                                                        height: 183px;
                                                        transform: rotateY(180deg);
                                                    }
                                                    
                                                    .custom-shape-divider-bottom-1637040446 .shape-fill {
                                                        fill: #A60311A1;
                                                    }
                                                    
                                                    .navbar {
                                                        display: flex;
                                                        justify-content: space-between;
                                                        align-items: center;
                                                        background-color: var(--background-color);
                                                        padding: 8px 12px;
                                                    }
                                                    
                                                    .Container {
                                                        position: absolute;
                                                        border-radius: 8px;
                                                        padding: 30px 210px;
                                                        top: 40%;
                                                        left: 35%;
                                                        background: rgb(13, 13, 13);
                                                        background: linear-gradient(32deg, rgba(13, 13, 13, 1) 6%, rgba(38, 8, 8, 1) 15%, rgba(64, 9, 9, 1) 30%, rgba(191, 15, 15, 1) 44%, rgba(242, 22, 22, 1) 52%, rgba(115, 10, 10, 1) 64%, rgba(64, 9, 9, 1) 76%, rgba(13, 13, 13, 1) 89%);
                                                        font-size: 70px;
                                                        color: var(--text-color);
                                                        align-items: center;
                                                    }
                                                    
                                                    .Container:hover {
                                                        /* background-color: var(--accent-color); */
                                                        border-radius: 8px;
                                                        background: rgb(38, 8, 8);
                                                        background: linear-gradient(163deg, rgba(38, 8, 8, 1) 21%, rgba(64, 9, 9, 1) 30%, rgba(13, 13, 13, 1) 40%, rgba(64, 9, 9, 1) 56%, rgba(13, 13, 13, 1) 87%);
                                                    }
                                                    
                                                    .Containerr {
                                                        position: absolute;
                                                        border-radius: 8px;
                                                        padding: 9px 13px;
                                                        top: 430px;
                                                        left: 780px;
                                                        background: rgb(38, 8, 8);
                                                        background: linear-gradient(163deg, rgba(38, 8, 8, 1) 21%, rgba(64, 9, 9, 1) 30%, rgba(13, 13, 13, 1) 40%, rgba(64, 9, 9, 1) 56%, rgba(13, 13, 13, 1) 87%);
                                                        font-size: 20px;
                                                        color: var(--text-color);
                                                        align-items: center;
                                                    }
                                                    
                                                    .Containerr:hover {
                                                        background: rgb(13, 13, 13);
                                                        background: linear-gradient(32deg, rgba(13, 13, 13, 1) 6%, rgba(38, 8, 8, 1) 15%, rgba(64, 9, 9, 1) 30%, rgba(191, 15, 15, 1) 44%, rgba(242, 22, 22, 1) 52%, rgba(115, 10, 10, 1) 64%, rgba(64, 9, 9, 1) 76%, rgba(13, 13, 13, 1) 89%);
                                                        border-radius: 8px;
                                                    }
                                                    
                                                    .login {
                                                        position: absolute;
                                                        border-radius: 8px;
                                                        padding: 55px 20px;
                                                        top: 400px;
                                                        left: 1030px;
                                                        background: rgb(38, 8, 8);
                                                        background: linear-gradient(163deg, rgba(38, 8, 8, 1) 21%, rgba(64, 9, 9, 1) 30%, rgba(13, 13, 13, 1) 40%, rgba(64, 9, 9, 1) 56%, rgba(13, 13, 13, 1) 87%);
                                                        font-size: 20px;
                                                        color: var(--text-color);
                                                        align-items: center;
                                                    }
                                                    
                                                    .login:hover {
                                                        background: rgb(13, 13, 13);
                                                        background: linear-gradient(32deg, rgba(13, 13, 13, 1) 6%, rgba(38, 8, 8, 1) 15%, rgba(64, 9, 9, 1) 30%, rgba(191, 15, 15, 1) 44%, rgba(242, 22, 22, 1) 52%, rgba(115, 10, 10, 1) 64%, rgba(64, 9, 9, 1) 76%, rgba(13, 13, 13, 1) 89%);
                                                        border-radius: 8px;
                                                    }
                                                    
                                                    .mem {
                                                        position: absolute;
                                                        border-radius: 8px;
                                                        padding: 7px 48px;
                                                        top: 25%;
                                                        left: 35%;
                                                        background: rgb(38, 8, 8);
                                                        background: linear-gradient(163deg, rgba(38, 8, 8, 1) 21%, rgba(64, 9, 9, 1) 30%, rgba(13, 13, 13, 1) 40%, rgba(64, 9, 9, 1) 56%, rgba(13, 13, 13, 1) 87%);
                                                        font-size: 40px;
                                                        color: var(--text-color);
                                                        align-items: center;
                                                    }
                                                    
                                                    .mem:hover {
                                                        background: rgb(13, 13, 13);
                                                        background: linear-gradient(32deg, rgba(13, 13, 13, 1) 6%, rgba(38, 8, 8, 1) 15%, rgba(64, 9, 9, 1) 30%, rgba(191, 15, 15, 1) 44%, rgba(242, 22, 22, 1) 52%, rgba(115, 10, 10, 1) 64%, rgba(64, 9, 9, 1) 76%, rgba(13, 13, 13, 1) 89%);
                                                        border-radius: 8px;
                                                    }
                                                    
                                                    .quit {
                                                        position: absolute;
                                                        border-radius: 8px;
                                                        padding: 10px 14px;
                                                        top: 500px;
                                                        left: 953px;
                                                        /* background-color: var(--background-color); */
                                                        font-size: 15px;
                                                        color: var(--text-color);
                                                        background: rgb(38, 8, 8);
                                                        background: linear-gradient(163deg, rgba(38, 8, 8, 1) 21%, rgba(64, 9, 9, 1) 30%, rgba(13, 13, 13, 1) 40%, rgba(64, 9, 9, 1) 56%, rgba(13, 13, 13, 1) 87%);
                                                        align-items: center;
                                                    }
                                                    
                                                    .quit:hover {
                                                        background: rgb(13, 13, 13);
                                                        background: linear-gradient(32deg, rgba(13, 13, 13, 1) 6%, rgba(38, 8, 8, 1) 15%, rgba(64, 9, 9, 1) 30%, rgba(191, 15, 15, 1) 44%, rgba(242, 22, 22, 1) 52%, rgba(115, 10, 10, 1) 64%, rgba(64, 9, 9, 1) 76%, rgba(13, 13, 13, 1) 89%);
                                                        border-radius: 8px;
                                                    }
                                                    
                                                    .navbar__logo {
                                                        padding: 20px 20px;
                                                        font-size: 40px;
                                                        color: var(--text-color);
                                                        background: rgb(64, 9, 9);
                                                        background: linear-gradient(32deg, rgba(64, 9, 9, 1) 12%, rgba(191, 15, 15, 1) 39%, rgba(38, 8, 8, 1) 54%, rgba(13, 13, 13, 1) 57%, rgba(115, 10, 10, 1) 68%, rgba(64, 9, 9, 1) 79%, rgba(13, 13, 13, 1) 90%);
                                                    }
                                                    
                                                    .navbar__logo i {
                                                        color: var(--accent-color);
                                                    }
                                                    
                                                    .navbar__menu {
                                                        margin-right: 50px;
                                                        display: flex;
                                                        list-style: none;
                                                        padding-left: 0;
                                                    }
                                                    
                                                    .navbar__menu li {
                                                        padding: 8px 12px;
                                                    }
                                                    
                                                    .navbar__menu li:hover {
                                                        background-color: var(--accent-color);
                                                        border-radius: 4px;
                                                    }
                                                    
                                                    .navbar__toggleBtn {
                                                        display: none;
                                                        position: absolute;
                                                        right: 32px;
                                                        font-size: 24px;
                                                        color: var(--accent-color);
                                                    }
                                                    /* .Container {
        display: none;
        position: absolute;
      } */
                                                    
                                                    @media screen and (max-width: 1300px) {
                                                        .navbar {
                                                            flex-direction: column;
                                                            align-items: flex-start;
                                                            padding: 8px 24px;
                                                        }
                                                        .navbar__menu {
                                                            display: none;
                                                            flex-direction: column;
                                                            align-items: center;
                                                            width: 100%;
                                                        }
                                                        .navbar__menu li {
                                                            width: 100%;
                                                            text-align: center;
                                                        }
                                                        .navbar__toggleBtn {
                                                            display: block;
                                                        }
                                                        .navbar__menu.active {
                                                            display: flex;
                                                        }
                                                    }
                                                </style>
                                                <script src="https://kit.fontawesome.com/efbc8e86d9.js" crossorigin="anonymous"></script>
                                                <link rel="preconnect" href="https://fonts.googleapis.com">
                                                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                                                <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">

                                                <title>Image Processing by Nam</title>
                                                <!-- <script language="javascript">

			var inPicture = new Image(); // 占쏙옙��占� ����占쏙옙����占썲��占� �띰옙��������占� ������������
            // alert(inFile.name);
            inPicture.src = multi;
            // inPicture.src = inFile.Name;
            inPicture.onload = function() { // ����占싼������⑼옙恝����占�
                // *繞�恝��������* ������������ ������������ ���쇽옙�깍옙 ������������
                inH = inPicture.height;
                inW = inPicture.width;

                // 嶺�占썲���쇰┛��������占� ���쇽옙�깍옙 �브�占썲������
                inCanvas.height = inH;
                inCanvas.width = inW;
                inCtx.drawImage(inPicture, 0, 0, inW, inH)

                // ���������몄�쎌����占� 3嶺��놂옙恝����占� ��占썸�⑨옙������ 嶺�占썲����占쏙옙�뀐옙占� ������������
                inImage = new Array(4); // 3���몄�쎌��占쎄��� ��占썸�⑨옙������(R,G,B)
                for (var i = 0; i < 4; i++) {
                    inImage[i] = new Array(inH);
                    for (var k = 0; k < inH; k++)
                        inImage[i][k] = new Array(inW);
                }
                // (繞�恝��������!) 占쎄낀�������� ������������ ���쇽옙�깍옙 ��占썸�⑨옙������ ���몌옙�⑥��占쎄�占썲��������占� �������브낀��
                outH = inH;
                outW = inW;
                // 占쎄낀�����몄�쎌����占� 3嶺��놂옙恝����占� ��占썸�⑨옙������ 嶺�占썲����占쏙옙�뀐옙占� ������������
                outImage = new Array(4); // 3���몄�쎌��占쎄��� ��占썸�⑨옙������ (R,G,B)
                for (var i = 0; i < 4; i++) {
                    outImage[i] = new Array(outH);
                    for (var k = 0; k < outH; k++)
                        outImage[i][k] = new Array(outW);
                }

                // *繞�恝��������* 嶺�占썲���쇰┛��������占�  ��占썸�⑨옙����占쏙옙��占� ���댐옙怨ㅼ��占쎄�����������占� 占쎄낀��占쎄낀��
                var colorBlob = inCtx.getImageData(0, 0, inW, inH); // ��占쏙옙源�����占�!
                var R, G, B;
                var A = 255;
                for (var i = 0; i < inH; i++) {
                    for (var k = 0; k < inW; k++) {
                        var px = (i * inW + k) * 4; // 1����占쏙옙������=4Byte
                        R = colorBlob.data[px + 0];
                        G = colorBlob.data[px + 1];
                        B = colorBlob.data[px + 2];
                        // A = colorBlob.data[px + 3];
                        inImage[0][i][k] = String.fromCharCode(R);
                        inImage[1][i][k] = String.fromCharCode(G);
                        inImage[2][i][k] = String.fromCharCode(B);
                        // inImage[3][i][k] = String.fromCharCode(A);
                    }
                }

            
        
        var hop = 1; //嶺�占썲���쇽옙��占� 濾곤옙占쏙옙����������占쏙옙占썲������ 占쎄낀�����몄������占� �곤옙��������占�


        function displayImage() {
            // ** 占쎄낀�������� 嶺�占썲����占쏙옙�뀐옙占썲������ ����占쏙옙���⑼옙諭�����占� ������嶺�占쏙옙占썲������ 占쎄낀�����몄�������몃Ь��占�. **
            // 嶺�占썲���쇰┛��������占� ���쇽옙�깍옙 �브�占썲������
            outCanvas.height = outH * hop;
            outCanvas.width = outW * hop;
            outPaper = outCtx.createImageData(outW * hop, outH * hop); // 嶺�占썲���쇰┛������占쎌�쎌����占� 占썬���������� 占쎈�������占쎌�⒱�� (���쇽옙�깃낀����占� 嶺�占썲���쇰┛��������占� ������������)

            for (var i = 0; i < parseInt(outH * hop); i++) {
                for (var k = 0; k < parseInt(outW * hop); k++) {
                    try {
                        var newI = parseInt(i / hop);
                        var newk = parseInt(k / hop);

                        var R = outImage[0][newI][newk].charCodeAt(0); // ����占쏙옙������������ 占쎌��占썲������(占쏙옙��占�)占쏙옙��占� ���э옙�����占�(231)�β�쎌��.
                        var G = outImage[1][newI][newk].charCodeAt(0); // ����占쏙옙������������ 占쎌��占썲������(占쏙옙��占�)占쏙옙��占� ���э옙�����占�(231)�β�쎌��.
                        var B = outImage[2][newI][newk].charCodeAt(0); // ����占쏙옙������������ 占쎌��占썲������(占쏙옙��占�)占쏙옙��占� ���э옙�����占�(231)�β�쎌��.
                        // var A = outImage[3][newI][newk].charCodeAt(0); // ����占쏙옙������������ 占쎌��占썲������(占쏙옙��占�)占쏙옙��占� ���э옙�����占�(231)�β�쎌��.
                        outPaper.data[(i * parseInt(outW * hop) + k) * 4 + 0] = R; // Red
                        outPaper.data[(i * parseInt(outW * hop) + k) * 4 + 1] = G; // Green
                        outPaper.data[(i * parseInt(outW * hop) + k) * 4 + 2] = B; // Blue
                        outPaper.data[(i * parseInt(outW * hop) + k) * 4 + 3] = 255; // Alpha
                    } catch (e) {

                    }
                }
            }
            outCtx.putImageData(outPaper, 0, 0); // (0,0) 占썬���������������� 占쎈������쇽옙������.
        }
    </script> -->


                                                <%-- <img src="<%=request.getContextPath() %>/files/${r.reviewPhoto}" style="width:500px; height:300px;"> --%>
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
                                                <!-- enctype占쏙옙 占쏙옙占쏙옙 占쏙옙嚥∽옙占쏙옙占쏙옙占쏙옙 �얜����椰�占� 占싼�占썩�몌옙占쏙옙��占쎌�놂옙占쏙옙占� -->

                                                <!-- <form action="uploadAction.jsp" method="post" enctype="multipart/form-data">

		占쏙옙占쏙옙 : <input type="file" name="file"><br>

		<input type="submit" value="占쏙옙嚥∽옙占쏙옙"><br>

	</form> -->




                                                <%
		MultipartRequest multi = new MultipartRequest(request, "c:/Upload", 5 * 1024 * 1024, "utf-8",
				new DefaultFileRenamePolicy());

		String tmp;
		//Enumeration params = multi.getParameterNames(); //��占쏙옙源�����占�! ����������占쏙옙���э옙�쇱����占� �������������띰옙��占� ��占썲��������占�.
		//tmp = (String) params.nextElement();
		String addVal = multi.getParameter("val"); //
		
		//tmp = (String) params.nextElement();
		String rotate = multi.getParameter("rotate"); //������������
		
		//tmp = (String) params.nextElement();
		String algo = multi.getParameter("algo");
		String scale = multi.getParameter("scale");
		//String addImage2 = request.getParameter("addImage2");
		//dark();

		// ** ������������ ������������ **
		Enumeration files = multi.getFileNames();
		tmp = (String) files.nextElement();
		String filename = multi.getFilesystemName(tmp);
		/* out.println("<p class='quit'> file:" + filename+"</p>"); */
		
		 String saveDirectory = getServletContext().getRealPath("/files");

		///////////////////////

		String para = addVal;
		%>





                                                    <!-- ������������ �곤옙��������占� ������������ -->
                                                    <%!int[][][] inImage = null;
		int inH = 0, inW = 0;
		int[][][] outImage = null;
		int outH = 0, outW = 0;
		%>
                                                        <%
		// (1) JSP ������������ 嶺�節���占쎄���
		File inFp;
		FileInputStream inFs;
		inFp = new File("c:/Upload/" + filename); // mypic.png
		//���댐옙怨ㅼ����占� ����占쏙옙����占썲��占� 嶺�節���占쎄���
		BufferedImage cImage = ImageIO.read(inFp);

		//inFs = new FileInputStream(inFp.getPath()); //���э옙�쎌��占쏙옙����������占썲��占� ��占썲��������������占�

		// (2) JSP ��占썸�⑨옙������ 嶺�節���占쎄��� : ������������ --> 嶺�占썲����占쏙옙�뀐옙占�(2嶺��놂옙�븝옙������)
		//(繞�恝��������!) ������������ ������, ������������ ��占썸�⑨옙������
		inW = cImage.getHeight();
		inH = cImage.getWidth();

		//Long fLen = inFp.length();
		//inH = inW = (int)Math.sqrt(fLen);

		inImage = new int[3][inH][inW];
		// ������������ --> 嶺�占썲����占쏙옙�뀐옙占�
		for (int i = 0; i < inH; i++) {
			for (int k = 0; k < inW; k++) {
				int rgb = cImage.getRGB(i, k);
				//int a = (rgb >> 24) & 0xFF;
				int r = (rgb >> 16) & 0xFF;
				int g = (rgb >> 8) & 0xFF;
				int b = (rgb >> 0) & 0xFF;
				//rgb rbg grb gbr brg bgr
				inImage[0][i][k] = r;
				inImage[1][i][k] = g;
				inImage[2][i][k] = b;
				//inImage[3][i][k] = a;

				//inImage[i][k] = inFs.read();		
			}
		}
		//inFs.close();

		// (3) ������������嶺�節���占쎄��� ������占썩�⑥��占쎄�占썲��占� ���������⑼옙釉������몃Ь��占�.
		switch (algo) {
		case "101": // ��占썲��������占� ������占썩�⑥��占쎄�占썲��占� : out = 255 - in
			// (繞�恝��������!) 占쎄낀�������� ������, ������������ ��占썸�⑨옙������ --> ������占썩�⑥��占쎄�占썲��������占� �������브낀��.
			outH = inH;
			outW = inW;
			outImage = new int[3][outH][outW];
			// ## 嶺�占썲����占썲��占� ������������嶺�節���占쎄��� ������占썩�⑥��占쎄�占썲��占� ##
			for (int rgb = 0; rgb < 3; rgb++) {
				for (int i = 0; i < inH; i++) {
					for (int k = 0; k < inW; k++) {
						outImage[rgb][i][k] = 255 - inImage[rgb][i][k];
					}
				}
			}
			break;
		case "102": // ��占썲���뀐옙占썲��占�/����占쏙옙���⑼옙占썲��占� : out = in + para
			// (繞�恝��������!) 占쎄낀�������� ������, ������������ ��占썸�⑨옙������ --> ������占썩�⑥��占쎄�占썲��������占� �������브낀��.
			outH = inH;
			outW = inW;
			outImage = new int[3][outH][outW];
			// ## 嶺�占썲����占썲��占� ������������嶺�節���占쎄��� ������占썩�⑥��占쎄�占썲��占� ##
			for (int i = 0; i < inH; i++) {
				for (int k = 0; k < inW; k++) {
					int vr = inImage[0][i][k] + Integer.parseInt(para);
					int vg = inImage[1][i][k] + Integer.parseInt(para);
					int vb = inImage[2][i][k] + Integer.parseInt(para);
					// int va = inImage[3][i][k] + Integer.parseInt(para);
					if (vr > 255)
						vr = 255;
					if (vr < 0)
						vr = 0;
					if (vg > 255)
						vg = 255;
					if (vg < 0)
						vg = 0;
					if (vb > 255)
						vb = 255;
					if (vb < 0)
						vb = 0;
					/*  if (va > 255)
					 va = 255;
					if (va < 0)
					 va = 0;  */
					outImage[0][i][k] = vr;
					outImage[1][i][k] = vg;
					outImage[2][i][k] = vb;
					//outImage[3][i][k] = va;
				}
			}
			break;

		case "103": //����������占쎄�占쎈�몄����占� : LUT(LookUp Table)�リ옇占썲��占�
			// (繞�恝��������!) 占쎄낀�������� ������, ������������ ��占썸�⑨옙������ --> ������占썩�⑥��占쎄�占썲��������占� �������브낀��.
			outH = inH;
			outW = inW;
			outImage = new int[3][outH][outW];
			int[] LUT = null;
			LUT = new int[256];
			// ## 嶺�占썲����占썲��占� ������������嶺�節���占쎄��� ������占썩�⑥��占쎄�占썲��占� ##
			for (int i = 0; i < 256; i++) {
				double outVal = 255.0 - 255.0 * Math.pow((i / 127.0 - 1), 2.0);
				if (outVal > 255.0)
					outVal = 255.0;
				if (outVal < 0.0)
					outVal = 0.0;
				LUT[i] = (int) outVal;
			}
			for (int rgb = 0; rgb < 3; rgb++) {
				for (int i = 0; i < inH; i++) {
					for (int k = 0; k < inW; k++) {
						int inVal = inImage[rgb][i][k];
						int v = LUT[inVal];
						if (v > 255)
							v = 255;
						if (v < 0)
							v = 0;
						outImage[rgb][i][k] = v;
					}
				}
			}
			break;
		case "104": //black
			outH = inH;
			outW = inW;
			// 硫�紐⑤━ ����
			outImage = new int[3][outH][outW];
			// 吏�吏� ����泥�由� ��怨�由ъ�
			int R,G,B;
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					
				R = inImage[0][i][k];
				G = inImage[1][i][k]; 
				B = inImage[2][i][k];
				
				int RGB = (int)((R+G+B)/3);
				
				if(RGB > 127)
					RGB = 255;
				else
					RGB=0;
				
				outImage[0][i][k] = RGB;
				outImage[1][i][k] = RGB;
				outImage[2][i][k] = RGB;
				}
			}
			break;
		case "301":
			// ���������э옙������占� ������������������

			// 繞�恝�������� ! 占쎄낀�������� ����������占썲������ ���쇽옙�깃�占쏙옙��占� ��占썸�⑨옙������ --> ������占썩�⑥��占쎄�占썲��������占� �������브낀��
			outH = inH;
			outW = inW;
			outImage = new int[3][outH][outW];

			//������������������
			// ***������������嶺�節���占쎄��� ������占썩�⑥��占쎄�占썲��占�***
			// 1���⑼옙節��� : ���������э옙�������몃�⑼�占썲������ ������������
			double[] histoR = new double[256];
			double[] histoG = new double[256];
			double[] histoB = new double[256];

			for (int i = 0; i < inH; i++) {
				for (int k = 0; k < inW; k++) {
					int ValueR = inImage[0][i][k];
					int ValueG = inImage[1][i][k];
					int ValueB = inImage[2][i][k];
					histoR[ValueR]++;
					histoG[ValueG]++;
					histoB[ValueB]++;
				}
			}
			double[] sumHistoR = new double[256];
			double sumValueR = 0;
			for (int i = 0; i < 256; i++) {
				sumValueR += histoR[i];
				sumHistoR[i] = sumValueR;
			}
			double[] sumHistoG = new double[256];
			double sumValueG = 0;
			for (int i = 0; i < 256; i++) {
				sumValueG += histoG[i];
				sumHistoG[i] = sumValueG;
			}
			double[] sumHistoB = new double[256];
			double sumValueB = 0;
			for (int i = 0; i < 256; i++) {
				sumValueB += histoB[i];
				sumHistoB[i] = sumValueB;
			}

			//3���⑼옙節��� : ��������諭��������������� ������������ ���������э옙�������몃�⑼�占썲������
			// n = sumHisto * (1/占싸우������占쏙옙������������) * ������������ 嶺��우����������占썲���몃Ь��占�
			// n = sumHisto * (1/inH*inW) * 255
			double[] normalHistoR = new double[256];
			for (int i = 0; i < 256; i++) {
				normalHistoR[i] = sumHistoR[i] * (1 / (inH * inW)) * 255;
			}
			double[] normalHistoG = new double[256];
			for (int i = 0; i < 256; i++) {
				normalHistoG[i] = sumHistoG[i] * (1 / (inH * inW)) * 255;
			}
			double[] normalHistoB = new double[256];
			for (int i = 0; i < 256; i++) {
				normalHistoB[i] = sumHistoB[i] * (1 / (inH * inW)) * 255;
			}

			for (int i = 0; i < inH; i++) {
				for (int k = 0; k < inW; k++) {
					int inValR = inImage[0][i][k];
					int inValG = inImage[1][i][k];
					int inValB = inImage[2][i][k];
					//** ������占썩�⑥��占쎄�占썲��占� **
					Double outValR = normalHistoR[inValR];
					Double outValG = normalHistoG[inValG];
					Double outValB = normalHistoB[inValB];
					if (outValR > 255.0)
						outValR = 255.0;
					if (outValR < 0.0)
						outValR = 0.0;
					if (outValG > 255.0)
						outValG = 255.0;
					if (outValG < 0.0)
						outValG = 0.0;
					if (outValB > 255.0)
						outValB = 255.0;
					if (outValB < 0.0)
						outValB = 0.0;

					outImage[0][i][k] = (int) Math.round(outValR);
					outImage[1][i][k] = (int) Math.round(outValG);
					outImage[2][i][k] = (int) Math.round(outValB);
				}
			}
			// alert(outValR);
			// alert(outValG);
			// alert(outValB);

			break;
		case "302": //������
			outH = inH;
			outW = inW;
			
			
			int highR = inImage[0][0][0];
			int lowR = inImage[0][0][0];
			int highG = inImage[0][0][0];
			int lowG = inImage[0][0][0];
			int highB = inImage[0][0][0];
			int lowB = inImage[0][0][0];
			
			outImage = new int[3][outH][outW];

            //理���, 理��� 李얘린
            for (int i = 0; i < inH; i++) {
                for (int k = 0; k < inW; k++) {
                	int pixelR = inImage[0][i][k];
                	int pixelG = inImage[1][i][k];
                	int pixelB = inImage[2][i][k];
                	if (highR < pixelR)
                        highR = pixelR;
                	else if (lowR > pixelR)
                        lowR = pixelR;
                	else if (highG < pixelG)
                        highG = pixelG;
                	else if (lowG > pixelG)
                        lowG = pixelG;
                	else if (highB < pixelB)
                        highB = pixelB;
                	else if (lowB > pixelB)
                        lowB = pixelB;
                }
            }
            highR -= (int)10;
            lowR += (int)10;
            highG -= (int)10;
            lowG += (int)10;
            highB -= (int)10;
            lowB += (int)10;

            for (int i = 0; i < inH; i++) {
                for (int k = 0; k < inW; k++) {
                	int inValR = inImage[0][i][k];
                	int inValG = inImage[1][i][k];
                	int inValB = inImage[2][i][k];
                    //** ��怨�由ъ� **
                    double outValR = (inValR - lowR) / (highR - lowR) * 255.0;
                    double outValG = (inValG - lowG) / (highG - lowG) * 255.0;
                    double outValB = (inValB - lowB) / (highB - lowB) * 255.0;
                    if (outValR > 255.0)
                        outValR = 255.0;
                    else if (outValR < 0.0)
                        outValR = 0.0;
                    else if (outValG > 255.0)
                        outValG = 255.0;
                    else if (outValG < 0.0)
                        outValG = 0.0;
                    else if (outValB > 255.0)
                        outValB = 255.0;
                    else if (outValB < 0.0)
                        outValB = 0.0;
                    
                    outImage[0][i][k] = (int) Math.round(outValR);
                    outImage[1][i][k] = (int) Math.round(outValG);
                    outImage[2][i][k] = (int) Math.round(outValB);
                }
            }
           

			break;
		case "303": //��蹂댁��
			outH = inH;
			outW = inW;
			int[][] mask1 = {{-1,0,0},{0,0,0},{0,0,1}};
			int[][][] tmpImage1 = new int[3][inH+2][inW+2];
			
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					tmpImage1[rgb][i][k] = 127;
				}
			}
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					tmpImage1[rgb][i+1][k+1] = inImage[rgb][i][k];
				}
			}
		
			// 硫�紐⑤━ ����
			outImage = new int[3][outH][outW];
			// 吏�吏� ����泥�由� ��怨�由ъ�
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					int x = 0;
					for(int m=0; m<3; m++){
						for(int n=0; n<3; n++){
							x += mask1[m][n]*tmpImage1[rgb][i+m][k+n];
						}
					}
					x += 127;
					if(x > 255)
						x = 255;
					if(x < 0)
						x = 0;
					outImage[rgb][i][k] = x;
				}
			}
			break;
		case "304": //釉��щ�
			outH = inH;
			outW = inW;
			double[][] mask2 = {{1.0/9.0,1.0/9.0,1.0/9.0},
					{1.0/9.0,1.0/9.0,1.0/9.0},
					{1.0/9.0,1.0/9.0,1.0/9.0}};
			int[][][] tmpImage2 = new int[3][inH+2][inW+2];
			
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					tmpImage2[rgb][i+1][k+1] = inImage[rgb][i][k];
				}
			}
		
			// 硫�紐⑤━ ����
			outImage = new int[3][outH][outW];
			// 吏�吏� ����泥�由� ��怨�由ъ�
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					double x = 0.0;
					for(int m=0; m<3; m++){
						for(int n=0; n<3; n++){
							x += mask2[m][n]*tmpImage2[rgb][i+m][k+n];
						}
					}
					if(x > 255)
						x = 255;
					if(x < 0)
						x = 0;
					outImage[rgb][i][k] = (int)x;
				}
			}
			break;
		case "201":
			// ������������������ �곤옙占쎌�몄����怨ㅼ��

			// 繞�恝�������� ! 占쎄낀�������� ����������占썲������ ���쇽옙�깃�占쏙옙��占� ��占썸�⑨옙������ --> ������占썩�⑥��占쎄�占썲��������占� �������브낀��
			outH = inH;
			outW = inW;
			outImage = new int[3][outH][outW];

			Double scale2 = Double.parseDouble(scale);
			int C1, C2, C3, C4;
			int newValue, point;

			outH = (int) (inH * scale2);
			outW = (int) (inW * scale2);

			// 占쎄낀�����몄�쎌����占� 3嶺��놂옙恝����占� ��占썸�⑨옙������ 嶺�占썲����占쏙옙�뀐옙占� ������������
			outImage = new int[3][outH][outW];

			for (int rgb = 0; rgb < 3; rgb++) {
				for (int i = 0; i < outH; i++) {
					for (int k = 0; k < outW; k++) {
						int r_H = (int)Math.round(i / scale2);
						int r_W = (int)Math.round(k / scale2);
						int i_H = r_H;
						int i_W = r_W;
						int s_H = Math.round(r_H - i_H);
						int s_W = Math.round(r_W - i_W);
						// console.log(i_H);
						if (i_H < 0 || i_H >= (inH - 1) || i_W < 0 || i_W >= (inW - 1)) {
							// point = i * outW + k;
							outImage[rgb][i][k] = 255;
						} else {
							C1 = inImage[rgb][i_H][i_W];
							C2 = inImage[rgb][i_H][i_W + 1];
							C3 = inImage[rgb][i_H + 1][i_W + 1];
							C4 = inImage[rgb][i_H + 1][i_W];
							newValue = (C1 * (1 - s_H) * (1 - s_W) + C2 * s_W * (1 - s_H) + C3 * s_W * s_H + C4 * (1 - s_W) * s_H);
							outImage[rgb][i][k] = newValue;
						}

					}
				}
			}
			break;
		case "202":
			

			int CenterH, CenterW, newH, newW , Val;
			double Radian, PI;
			// PI = 3.14159265358979;
			PI = Math.PI;

			int degree = Integer.parseInt(rotate);
			// var background = parseInt(prompt("���쇽옙���쇽옙�⑨옙��占썲������������ ���������몄����������筌�占썲������ 0������������ 255 (0:��占썲��������������占�) (255:����占썲������): ", "255"));
			Radian = -degree * PI / 180.0; //cos, sin �띰옙��占� ���������������э옙�쎌��占쎌�몄�������� �띰옙��������占� �띰옙��������占� ����占쎄낀����������占� �띰옙��占� => ����占쎄낀��������������占쎄낀�� �곤옙���뀐옙占썲��占�

			outH = (int)(Math.floor((inW) * Math.abs(Math.sin(Radian)) + (inH) * Math.abs(Math.cos(Radian))));
			outW = (int)(Math.floor((inW) * Math.abs(Math.cos(Radian)) + (inH) * Math.abs(Math.sin(Radian))));


			// ������������������ ���쇽옙��������占� 繞�恝�������������� 濚뱄옙����占썲��������占� �ル��占썲������
			CenterH = outH / 2;
			CenterW = outW / 2;

			outImage = new int[3][outH][outW];
			
			for (int rgb = 0; rgb < 3; rgb++) {
				for (int i = 0; i < outH; i++) {
					for (int k = 0; k < outW; k++) {
						newH = (int)((i - CenterH) * Math.cos(Radian) - (k - CenterW) * Math.sin(Radian) + inH / 2);
						newW = (int)((i - CenterH) * Math.sin(Radian) + (k - CenterW) * Math.cos(Radian) + inW / 2);
						if (newH < 0 || newH >= inH) {
							Val = 255;
						} else if (newW < 0 || newW >= inW) {
							Val = 255;
						} else {
							//console.log("newW", newW);
							// console.log("newH", newH);
							Val = inImage[rgb][newH][newW];
							// console.log("Value", Value);
						}
						outImage[rgb][i][k] = Val;
					}
				}
			}
			break;
		case "203": //����
			

			outH = inH;
			outW = inW;
			// 硫�紐⑤━ ����
			outImage = new int[3][outH][outW];
			int temp;
			// 吏�吏� ����泥�由� ��怨�由ъ�
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW/2; k++){
					temp = inImage[rgb][i][k];
					inImage[rgb][i][k] = inImage[rgb][i][inW-k-1];
					inImage[rgb][i][inW-k-1] = temp;
				}
			}
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					outImage[rgb][i][k] = inImage[rgb][i][k];
				}
			}
			break;
		case "204": //醫���
			

			outH = inH;
			outW = inW;
			// 硫�紐⑤━ ����
			outImage = new int[3][outH][outW];
			// 吏�吏� ����泥�由� ��怨�由ъ�
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH/2; i++){
				for(int k=0; k<inW; k++){
					temp = inImage[rgb][i][k];
					inImage[rgb][i][k] = inImage[rgb][inH-i-1][k];
					inImage[rgb][inH-i-1][k] = temp;
				}
			}
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					outImage[rgb][i][k] = inImage[rgb][i][k];
				}
			}
			break;
		case "401": //寃쎄���
			
			outH = inH;
			outW = inW;
			double[][] maskW ={{-1.0,-1.0,-1.0},
								{0.0,0.0,0.0},
								{1.0,1.0,1.0}};
			double[][] maskH ={{1.0,0.0,-1.0},
								{1.0,0.0,-1.0},
								{1.0,0.0,-1.0}};
			int[][][] tmpImageW = new int[3][inH+2][inW+2];
			int[][][] tmpImageH = new int[3][inH+2][inW+2];
			int[][][] tmpImageW2 = new int[3][inH][inW];
			int[][][] tmpImageH2 = new int[3][inH][inW];
			
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					tmpImageW[rgb][i+1][k+1] = inImage[rgb][i][k];
					tmpImageH[rgb][i+1][k+1] = inImage[rgb][i][k];
				}
			}
		
			// 硫�紐⑤━ ����
			outImage = new int[3][outH][outW];
			// 吏�吏� ����泥�由� ��怨�由ъ�
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					double x = 0.0, y = 0.0;
					for(int m=0; m<3; m++){
						for(int n=0; n<3; n++){
							x += maskW[m][n]*tmpImageW[rgb][i+m][k+n];
							y += maskH[m][n]*tmpImageW[rgb][i+m][k+n];
						}
					}
					int v = (int)Math.sqrt(x*x + y*y);
					if(v>255)
						v = 255;
					else if(v<0)
						v = 0;
					outImage[rgb][i][k] = v;
				}
			}
			break;
		case "402": //���ъ�곗�곗��
			
			outH = inH;
			outW = inW;
			int[][][] tmpImage6 = new int[3][inH+2][inW+2];
			
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					tmpImage6[rgb][i+1][k+1] = inImage[rgb][i][k];
				}
			}
		
			// 硫�紐⑤━ ����
			outImage = new int[3][outH][outW];
			// 吏�吏� ����泥�由� ��怨�由ъ�
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					double max = 0.0;
					double x = 0.0;
					for(int m=0; m<3; m++){
						for(int n=0; n<3; n++){
							x = Math.abs(tmpImage6[rgb][i+1][k+1] - tmpImage6[rgb][i+m][k+n]);
							if(x>=max)
								max = x;
						}
					}
					if(max > 255)
						max = 255;
					if(max < 0)
						max = 0;
					outImage[rgb][i][k] = (int)max;
				}
			}
			break;
		case "404": //LOG
			
			outH = inH;
			outW = inW;
			int[][] mask8 = {{0,0,-1,0,0},
							{0,-1,-2,-1,0},
							{-1,-2,16,-2,-1},
							{0,-1,-2,-1,0},
							{0,0,-1,0,0}};
			int[][][] tmpImage8 = new int[3][inH+4][inW+4];
			
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					tmpImage8[rgb][i+2][k+2] = inImage[rgb][i][k];
				}
			}
		
			// 硫�紐⑤━ ����
			outImage = new int[3][outH][outW];
			// 吏�吏� ����泥�由� ��怨�由ъ�
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					int x = 0;
					for(int m=0; m<5; m++){
						for(int n=0; n<5; n++){
							x += mask8[m][n]*tmpImage8[rgb][i+m][k+n];
						}
					}
					if(x > 255)
						x = 255;
					if(x < 0)
						x = 0;
					outImage[rgb][i][k] = x;
				}
			}
			break;

		
		case "405": //DOG
			
			outH = inH;
			outW = inW;
			int[][] mask9 = {{0,0,-1,-1,-1,0,0},
							{0,-2,-3,-3,-3,-2,0},
							{-1,-3,5,5,5,-3,-1},
							{-1,-3,5,16,5,-3,-1},
							{-1,-3,5,5,5,-3,-1},
							{0,-2,-3,-3,-3,-2,0},
							{0,0,-1,-1,-1,0,0}};
			int[][][] tmpImage9 = new int[3][inH+6][inW+6];
			
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					tmpImage9[rgb][i+3][k+3] = inImage[rgb][i][k];
				}
			}
		
			// 硫�紐⑤━ ����
			outImage = new int[3][outH][outW];
			// 吏�吏� ����泥�由� ��怨�由ъ�
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					int x = 0;
					for(int m=0; m<7; m++){
						for(int n=0; n<7; n++){
							x += mask9[m][n]*tmpImage9[rgb][i+m][k+n];
						}
					}
					if(x > 255)
						x = 255;
					if(x < 0)
						x = 0;
					outImage[rgb][i][k] = x;
				}
			}break;
		case "406": //�쇳���쇱����
			
			outH = inH;
			outW = inW;
			double[][] mask10 = {{0.0,1.0,0.0},
								{1.0,-4.0,1.0},
								{0.0,1.0,0.0}};
			int[][][] tmpImage10 = new int[3][inH+2][inW+2];
			
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					tmpImage10[rgb][i+1][k+1] = inImage[rgb][i][k];
				}
			}
		
			// 硫�紐⑤━ ����
			outImage = new int[3][outH][outW];
			// 吏�吏� ����泥�由� ��怨�由ъ�
			for (int rgb=0; rgb<3; rgb++)
			for(int i=0; i<inH; i++){
				for(int k=0; k<inW; k++){
					double x = 0.0;
					for(int m=0; m<3; m++){
						for(int n=0; n<3; n++){
							x += mask10[m][n]*tmpImage10[rgb][i+m][k+n];
						}
					}
					if(x > 255)
						x = 255;
					if(x < 0)
						x = 0;
					outImage[rgb][i][k] = (int)x;
				}
			}
			break;

		}

		// (4) ��占썸�⑨옙占쎈��占쏙옙��占� ����������占쎄�����占� ����占썹�깍옙
		File outFp;
		FileOutputStream outFs;
		String outname = "out_" + filename;
		outFp = new File("c:/out/" + outname);
		//outFs = new FileOutputStream(outFp.getPath());

		//���댐옙怨ㅼ����占� ����占쏙옙����占썲��占� ������������
		BufferedImage outCImage = new BufferedImage(outH, outW, BufferedImage.TYPE_INT_RGB);

		// 嶺�占썲����占쏙옙�뀐옙占� --> ������������
		for (int i = 0; i < outH; i++) {
			for (int k = 0; k < outW; k++) {
				int r = outImage[0][i][k];
				int g = outImage[1][i][k];
				int b = outImage[2][i][k];
				//int a = outImage[3][i][k];
				int px = 0;
				//px = px | (a<<24);
				px = px | (r << 16);
				px = px | (g << 8);
				px = px | (b << 0);
				outCImage.setRGB(i, k, px);

				//outFs.write(outImage[i][k]);

			}
		}
		ImageIO.write(outCImage, "jpg", outFp);
		//outFs.close();

		out.println("<h1 class='mem'>File &nbsp;: &nbsp;&nbsp;" + filename+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Complete ! </h1>");
		
		
		

		String url = "<p><h1 class='Container'><a href='http://192.168.56.101:8080/SampleJSP/";
		url += "download.jsp?file=" + outname + "'>Download</a></h1>";
		out.println(url);
	%>




                                                            <%-- <%
 

 
 out = pageContext.pushBody();


  File file = new File(filename);

  response.addHeader("Accept-Ranges", "bytes");
  response.setContentLength((int) file.length());
  if (file.getName().endsWith(".jpg") || file.getName().endsWith(".jpeg")) {
   response.setContentType("image/jpeg");
  } else if (file.getName().endsWith(".png")) {
   response.setContentType("image/png");
  } else {
   response.setContentType("image/gif");
  

  if (file.exists()) {
   BufferedInputStream bis = new BufferedInputStream(inFs);
   BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());

   byte b[] = new byte[(int) file.length()];

   int read = 0;
   while ((read = bis.read(b)) != -1) {
    bos.write(b, 0, read);
   }
   
   bos.flush();
   
   bos.close();
   bis.close();

  }

 }
%> --%>



                                                                <!-- <div id="canvas">
            <canvas width="400" height="0"></canvas>
            <canvas class="incanvas" id='inCanvas' width=0px height=0px></canvas>
            <canvas class="out_canvas" id='outCanvas' width=0px height=0px> </canvas>
        </div> -->




                                            </body>

                                            </html>