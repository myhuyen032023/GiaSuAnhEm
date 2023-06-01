<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="./resources/assets/css/bootstrap/bootstrap.min.css">
<title>Trang chủ</title>

<link href="<c:url value="resources/assets/css/import/header.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="resources/assets/css/import/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/newclass.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/style.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/home.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/assets/css/import/tutor.css"/>"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&family=Roboto+Slab:wght@200;500;800&display=swap"
	rel="stylesheet">
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />

<script src="<c:url value="resources/assets/js/jquery-2.2.4.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="resources/assets/js/elevatezoom-master/jquery.elevatezoom.js"/>"
	type="text/javascript"></script>
<!-- <script
	src="<c:url value="resources/assets/js/bootstrap/bootstrap.min.js"/>"
	type="text/javascript"></script>
<script type="module" src="/resources/assets/js/main.js"></script> 
<script src="./resources/assets/js/bootstrap.min.js"></script>-->
<script
	src="<c:url value="resources/assets/js/carousel/owl.carousel.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="resources/assets/js/main.js"/>"
	type="text/javascript"></script>
<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<script src="https://kit.fontawesome.com/672e69e895.js"
	integrity="sha256-p4R542D9FmJMaa+2wUptlBpLf5hz/RIpXyIRsunpbl8= sha384-MOSVeJIW9XWa0WnSu4Vr5rmvnfmEojWOBbkYKznVokpk4aAujwosn7EgNKLTzG1V sha512-T+SJ08DSDG39tQyM0inMBzv3nAbExR/PIvdS+NXwaetdzpq0zBsZfAALXZ3jinPz5c7tkmcvSdNKQH7k+ZDl9A=="
	crossorigin="anonymous"></script>
<!-- integrity="sha256-tMu+KsksMD+e9N9t3Smfms0GlJ8lv7tXRihGgyVpYvU= sha384-Unu9zW07oMurI469ODBqZ6NGe75y4q6i3c92/4mNTyD30a9L3By6R9Ebhef6KFAT sha512-BpJJVylQTa4q+Qhwl8Mq7b/AGSnpTm8teUee//a26/CHyngF/nFBAnSrFE/yMwaKr8Ti66aAdY8xoCXlixX+Hw==" -->
</head>

<body>
	<%@include file="/WEB-INF/views/users/layout/header.jsp"%>
	<div style="margin-top: 60px">
		<video autoplay loop muted plays-inline class="back-video"
			width="100%" height="auto">
			<source src="<c:url value="resources/assets/images/bn2.mp4"/>"
				type="video/mp4">
		</video>
	</div>
	<div class="container-fluid">
		<div class="row flex-nowrap">
			<%@include file="/WEB-INF/views/users/layout/sidebar.jsp"%>
			<div class="col py-3 main">
				<div class="title">
					<span class="icon-graduation"></span> <span class="menu-ngang">TRUNG
						TÂM GIA SƯ ANH EM</span>
				</div>

				<div class=".banner-video-container ">
					<video autoplay loop muted plays-inline class="back-video"
						width="100%" height="auto">
						<source src="<c:url value="resources/assets/images/bn3.mp4"/>"
							type="video/mp4">
					</video>
				</div>
			</div>
		</div>
	</div>


	<%@include file="/WEB-INF/views/users/layout/footer.jsp"%>
</body>
<!-- Messenger Plugin chat Code -->
<!--     <div id="fb-root"></div>

    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "100088666753906");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v15.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script> -->
</html>
