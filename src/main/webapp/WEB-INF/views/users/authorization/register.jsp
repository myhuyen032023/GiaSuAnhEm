<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.giasuanhem.service.CSRF"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang đăng ký</title>
<link href="<c:url value="resources/assets/css/import/register.css"/>"
	rel="stylesheet">
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
<%-- <script src="<c:url value="resources/assets/js/import/register.js"/>"
	type="text/javascript"></script> --%>

<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<script src="https://kit.fontawesome.com/672e69e895.js"
	integrity="sha256-tMu+KsksMD+e9N9t3Smfms0GlJ8lv7tXRihGgyVpYvU= sha384-Unu9zW07oMurI469ODBqZ6NGe75y4q6i3c92/4mNTyD30a9L3By6R9Ebhef6KFAT sha512-BpJJVylQTa4q+Qhwl8Mq7b/AGSnpTm8teUee//a26/CHyngF/nFBAnSrFE/yMwaKr8Ti66aAdY8xoCXlixX+Hw=="
	crossorigin="anonymous"></script>
</head>
<body>



	<div class="login-box">
		<a href="./trang-chu"><img
			src="resources/assets/images/tot_nghiep.png"></a>
		<h2>Đăng ký</h2>
		<div class="user-box" style="margin-top: 5px; margin-bottom: 15px;">
			<small class="text" style="color: red">${sessionScope.errorRegister}</small>
		</div>

		<!-- Thêm token trong form đăng ký -->
		<%
		// generate a random CSRF token
		String csrfToken = CSRF.getToken();

		// place the CSRF token in a cookie
		javax.servlet.http.Cookie cookie = new javax.servlet.http.Cookie("csrf", csrfToken);
		String cookieHeaderValue = cookie.getName() + "=" + cookie.getValue() + ";HttpOnly; Secure; SameSite=LAX";
		response.addHeader(org.springframework.http.HttpHeaders.SET_COOKIE, cookieHeaderValue);
		%>
		<form action="dang-ky" method="post">

			<div class="user-box">
				<input id="username" type="text" name="username" /> <small></small>
				<span></span> <label>Tên tài khoản</label>
			</div>

			<div class="user-box">
				<input id="email" type="text" name="email" /> <small></small> <span></span><label>Email</label>
			</div>

			<div class="user-box">
				<input id="password" class="input" type="password" name="password" /><small></small>
				<span></span> <label>Mật khẩu</label>
			</div>

			<div class="user-box">
				<input id="cfpassword" class="input-cf" type="password" name="" />
				<small></small> <span></span> <label>Nhập lại mật khẩu</label>
			</div>

			<div class="user-checkbox">
				<input type="radio" name="role" value="1" required /> <label>Gia
					sư</label>
			</div>

			<div class="user-checkbox">
				<input type="radio" name="role" value="2" required /> <label>Phụ
					huynh</label>
			</div>

			<input type="hidden" name="csrfToken" value="<%=csrfToken%>" />


			<button class="submit" type="submit" id="btnSignup">
				<span></span> <span></span> <span></span> <span></span> Đăng ký
			</button>
		</form>
	</div>
	<script src="resources/assets/js/import/register.js"></script>
	<script>
		document
				.getElementById('password')
				.addEventListener(
						'keydown',
						function(e) {
							if (e.key === 'Enter' || e.key === 'Tab') {
								var format = /[!@#$%^&*()_+\-=\[\]{}:\\|,.<>\/?]+/;
								var formatAlphabetCap = /[ABCDEFGHIJKLMNOPQRSTUVWXYZ]+/;
								var formatAlphabet = /[abcdefghijklmnopqrstuvwxyz]+/;
								var formatNumber = /[1234567890]+/;
								var pw = document.getElementById("password").value;
								//check empty password field  
								if (pw == "") {
									alert("**Không để trống !");
									document.getElementById("btnSignup").disabled = true;

								} else

								//minimum password length validation  
								if (pw.length < 8) {
									alert("**Mật khẩu tối thiểu 8 kí tự");
									document.getElementById("btnSignup").disabled = true;

								}

								else if (formatNumber.test(pw) == false) {

									alert("**Cần có ít nhất một chữ số ");
									document.getElementById("btnSignup").disabled = true;
								}

								else if (pw.length > 15) {
									alert("**Độ dài mật khẩu tối đa là 15 ký tự");
									document.getElementById("btnSignup").disabled = true;

								}

								else if (formatAlphabet.test(pw) == false) {

									alert("**Cần có ít nhất một chữ cái ");
									document.getElementById("btnSignup").disabled = true;
								}

								else if (pw.length > 15) {
									alert("**Độ dài mật khẩu tối đa là 15 ký tự");
									document.getElementById("btnSignup").disabled = true;

								}

								else if (formatAlphabetCap.test(pw) == false) {

									alert("**Cần có ít nhất một chữ cái in hoa ");
									document.getElementById("btnSignup").disabled = true;
								}

								else if (pw.length > 15) {
									alert("**Độ dài mật khẩu tối đa là 15 ký tự");
									document.getElementById("btnSignup").disabled = true;

								}

								else if (format.test(pw) == false) {

									alert("**Cần có một ký tự đặc biệt ");
									document.getElementById("btnSignup").disabled = true;
								}
								//maximum length of password validation  
								else if (pw.length > 15) {
									alert("**Độ dài mật khẩu tối đa là 15 ký tự");
									document.getElementById("btnSignup").disabled = true;
								}

								else {
									alert("**Password syntax correct");
									document.getElementById("btnSignup").disabled = false;
								}
							}
						});
	</script>

</body>
</html>