<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com -->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang thêm mức lương</title>
<!----===== Boxicons CSS ===== -->
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>

<!--<title>Dashboard Sidebar Menu</title>-->

<link rel="stylesheet"
	href="./resources/assets/css/bootstrap/bootstrap.min.css">

<link
	href="<c:url value="resources/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="resources/assets/css/import/admin/style.css"/>"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">

<script src="<c:url value="resources/assets/js/jquery-2.2.4.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="resources/assets/js/elevatezoom-master/jquery.elevatezoom.js"/>"
	type="text/javascript"></script>
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/favicon-96x96.png" />
<script
	src="<c:url value="resources/assets/js/carousel/owl.carousel.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="resources/assets/js/main.js"/>"
	type="text/javascript"></script>
<script src="https://kit.fontawesome.com/672e69e895.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="row">
		<div class="container-fluid">

			<!-- Page Heading -->
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4 title"
				style="float: right">
				<a href="./quanlyluong" class="btn btn-danger btn-block mb-4"><i
					class="fas fa-arrow-left fa-sm text-white-50"></i> Trở về</a>
			</div>
			<div class="row">
				<canvas width="100%" height="5px"></canvas>
			</div>
			<div id="wrapperAdmin">
				<div class="title2">
					<strong>Thêm mức lương</strong>
				</div>
				<form action="${pageContext.request.contextPath }/addSalary"
					method="post">
					<div class="form-group">
						<div class="row">
							<div class="col">
								<label class="control-label">Khối lớp: <span
									style="color: #FF0000">*</span></label>
								<div class="col-7">
									<select name="id_category" class="form-select" required>
										<option value="">-- Chọn khối --</option>
										<c:forEach var="item" items="${listCategoryClass }">
											<option value="${item.id }">${item.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col">
								<label class="control-label">Gia sư:<span
									style="color: #FF0000">*</span></label>
								<div class="col-7">
									<select name="type_teacher" class="form-select" required>
										<option value="">-- Chọn gia sư --</option>
										<option value="1">Gia sư là giáo viên</option>
										<option value="0">Gia sư là sinh viên</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<label class="control-label"><strong>Nhập mức
									lương</strong><span style="color: #FF0000">*</span></label>
							<div class="col">
								<label class="control-label">2 buổi/tuần: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<input type="text" name="twosession" class="form-control"
										value="" required>
								</div>
							</div>
							<div class="col">
								<label class="col-11 control-label">3 buổi/tuần: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<input type="text" name="threesession" class="form-control"
										value="" required>
								</div>
							</div>
							<div class="col">
								<label class="col-11 control-label">4 buổi/tuần: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<input type="text" name="foursession" class="form-control"
										value="" required>
								</div>
							</div>
							<div class="col">
								<label class="col-11 control-label">5 buổi/tuần: <span
									style="color: #FF0000">*</span></label>
								<div class="col">
									<input type="text" name="fivesession" class="form-control"
										value="" required>
								</div>
							</div>
						</div>
					</div>
					<div class="row align-middle">
						<button class="btn btn-primary btn-block mb-4" type="submit">
							<i class="fa-solid fa-plus icon"></i> Thêm mức lương
						</button>
					</div>
				</form>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="row" style="position: fixed; bottom: 0">
			<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%></div>
	</div>
</body>
</html>

