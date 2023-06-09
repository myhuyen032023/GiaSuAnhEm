<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.giasuanhem.service.CSRF"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang đăng nhập</title>
<link href="<c:url value="resources/assets/css/import/loginUser.css"/>"
	rel="stylesheet">
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
</head>
<body>

	<div class="login-box">
		<a href="./trang-chu"><img
			src="resources/assets/images/tot_nghiep.png"></a>

		<h2>Đăng nhập</h2>
		<div class="user-box" style="margin-top: 5px; margin-bottom: 15px;">
			<small class="text" style="color: red">${sessionScope.errorLogin}</small>
		</div>

		<!-- Thêm token trong form đăng nhập -->
		<%
		// generate a random CSRF token
		String csrfToken = CSRF.getToken();

		// place the CSRF token in a cookie
		javax.servlet.http.Cookie cookie = new javax.servlet.http.Cookie("csrf", csrfToken);
		String cookieHeaderValue = cookie.getName() + "=" + cookie.getValue() + ";HttpOnly; Secure; SameSite=LAX";
		response.addHeader(org.springframework.http.HttpHeaders.SET_COOKIE, cookieHeaderValue);
		%>
		<form action="dang-nhap" method="post">

			<div class="user-box">
				<input type="text" name="username" required="required" /> <label>Tên
					tài khoản</label>
			</div>

			<div class="user-box">
				<input class="input" type="password" name="password"
					required="required" /> <label>Mật khẩu</label>
			</div>

			<input type="hidden" name="csrfToken" value="<%=csrfToken%>" />


			<button class="submit">
				<span></span> <span></span> <span></span> <span></span> Đăng nhập
			</button>
			<p class="register">
				Chưa có tài khoản? <a href="./dang-ky">Đăng ký ngay</a>
			</p>
		</form>
	</div>
</body>
</html>