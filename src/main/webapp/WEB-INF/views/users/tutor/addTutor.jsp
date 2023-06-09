<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="com.giasuanhem.service.CSRF" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang đăng ký gia sư</title>
<link href="<c:url value="resources/assets/css/import/addtutor.css"/>"
	rel="stylesheet">
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
</head>
<body>
	<div id="wrapper">
		<div class="container">
			<a href="./trang-chu"><img
				src="resources/assets/images/tot_nghiep.png"></a>

			<h1 class="form-title">ĐĂNG KÝ LÀM GIA SƯ</h1>
			<!-- Thêm token trong form thêm gia sư -->
			<%
			// generate a random CSRF token
			String csrfToken = CSRF.getToken();
			
			// place the CSRF token in a cookie
			javax.servlet.http.Cookie cookie = new javax.servlet.http.Cookie("csrf", csrfToken);
			response.addCookie(cookie);
			%>
			<form action="them-gia-su" method="post">
				<div class="user-box" style="margin-top: 5px; margin-bottom: 15px;">
					<small class="text" style="color: red">${sessionScope.errorCreateTutor}</small>
				</div>
				<div class="main-newclass-info-input">
					<div class="user-input-box">
						<label for="diachi">Họ và tên <span style="color: #db1414">*</span></label>
						<input type="text" id="hoten" name="hoten"
							placeholder="Nhập Họ và tên"><small></small>
					</div>
					<div class="user-input-box">
						<label for="diachi">Địa chỉ <span style="color: #db1414">*</span></label>
						<input type="text" id="diachi" name="diachi"
							placeholder="Nhập địa chỉ"><small></small>
					</div>
					<div class="user-input-box">
						<label for="ngaysinh">Ngày sinh <span
							style="color: #db1414">*</span></label> <input type="date" id="ngaysinh"
							name="ngaysinh" placeholder="Chọn ngày sinh"><small></small>
					</div>
					<div class="user-input-box">
						<label for="diachi">Giới tính <span style="color: #db1414">*</span></label>
						<select name="gioitinh" id="gioitinh"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="Nam">Nam</option>
							<option value="Nữ">Nữ</option>
						</select> <small></small>
					</div>
					<div class="user-input-box">
						<label for="time">Email <span style="color: #db1414">*</span></label>
						<input type="text" id="email" name="email"
							placeholder="Nhập Email"><small></small>
					</div>
					<div class="user-input-box">
						<label for="dienthoai">Điện thoại <span
							style="color: #db1414">*</span></label> <input type="text" id="dienthoai"
							name="dienthoai" placeholder="Nhập số điện thoại"><small></small>
					</div>
					<div class="user-input-box">
						<label for="truong">Sinh viên(giáo viên) trường</label><span
							style="color: #db1414">*</span> <input type="text" id="truong"
							name="truong" placeholder="VD: Đại học Sư Phạm Kĩ Thuật"><small></small>
					</div>

					<div class="user-input-box">
						<label for="chuyennganh">Ngành học <span
							style="color: #db1414">*</span></label> <input type="text" id="nganhhoc"
							name="chuyennganh" placeholder="Nhập ngành học"><small></small>
					</div>

					<div class="user-input-box">
						<label for="namtotnghiep">Năm tốt nghiệp</label> <input
							type="text" id="namtotnghiep" name="namtotnghiep"
							placeholder="năm tốt nghiệp"><small></small>
					</div>
					<div class="user-input-box">
						<label for="nghenghiep">Hiện là <span
							style="color: #db1414">*</span></label> <select name="nghenghiep"
							id="nghenghiep"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="Giáo viên">Giáo viên</option>
							<option value="Sinh viên">Sinh viên</option>
							<option value="Đã tốt nghiệp">Đã tốt nghiệp</option>
						</select> <small></small>
					</div>
					<div class="user-input-box">
						<label for="trinhdo">Trình độ <span style="color: #db1414">*</span></label>
						<select name="trinhdo" id="trinhdo"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Trình độ</option>
							<option value="1">Cao Đẳng</option>
							<option value="2">Đại Học</option>
							<option value="3">Cử nhân</option>
							<option value="4">Thạc sỹ</option>
							<option value="5">Tiến sỹ</option>
							<option value="6">Kỹ sư</option>
							<option value="7">Bằng cấp khác</option>
						</select> <small></small>
					</div>
					<div class="user-input-box">
						<label for="sobuoday">Số buổi dạy <span
							style="color: #db1414">*</span></label> <select name="sobuoiday"
							id="sobuoiday"
							style="font-size: 12px; margin-bottom: 5px; padding: 6px 6px !important;">
							<option value="0">Chọn số buổi dạy</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
						</select> <small></small>
					</div>

					<div class="user-input-box">
						<label for="uudiem">Ưu điểm</label> <input type="text" id="uudiem"
							name="uudiem" placeholder="Nhập ưu điểm"><small></small>
					</div>


				</div>
				<div class="main-newclass-info-checkbox">
					<div class="user-checkbox-box">
						<label for="luong">Khu vực dạy <span
							style="color: #db1414">*</span></label><br> <small></small>
						<table border="0" class="tablebox category">
							<tbody class="category">
								<c:forEach var="item" items="${listCategoryDistrict }">
									<tr>
										<td><input type="checkbox" name="khuvuc" id="khuvuc"
											value="${item.id }">${item.name }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>


					<div class="user-checkbox-box">
						<label for="luong">Môn dạy <span style="color: #db1414">*</span></label><br>
						<small></small>
						<table border="0" class="tablebox monhoc">
							<tbody>
								<c:forEach var="item" items="${listSubject }">
									<tr>
										<td><input type="checkbox" name="monhoc" id="monhoc"
											value="${item.id }">${item.name }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="user-checkbox-box">
						<label for="luong">Lớp dạy <span style="color: #db1414">*</span></label><br>
						<small></small>
						<table border="0" class="tablebox lophoc">
							<tbody>
								<c:forEach var="item" items="${listClass }">
									<tr>
										<td><input type="checkbox" name="lophoc" id="lophoc"
											value="${item.id }">${item.name }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<input type="hidden" name="csrfToken" value="<%= csrfToken %>"/>
				
				<div class="form-submit-btn">
					<button type="submit" value="dangky">Đăng ký</button>
				</div>
			</form>
		</div>
	</div>
	<script src="resources/assets/js/import/addtutor.js"></script>
</body>
</html>