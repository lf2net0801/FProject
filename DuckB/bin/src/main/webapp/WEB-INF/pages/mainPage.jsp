<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>DuckB</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- <link rel="stylesheet" href="/style.css"> -->
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
#mainImg {
	width: 90%;
	height: 100px;
	margin-left: 16px;
}

.card-header {
	text-align: center;
}

#search {
	margin-left: 35%;
	width: 30%;
}

#headimg {
	width: 25%;
	margin-left: 35%;
	margin-top: 5%;
}

#Nbar-left {
	width: 85%;
	font-size: 25px;
}

#Nbar {
	height: 100px;
}
</style>

</head>

<body>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>
	<!-- fontawesome javascript  -->
	<script src="https://kit.fontawesome.com/1a950be563.js"
		crossorigin="anonymous"></script>
	<!-- jquery cdn -->
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<section>
		<nav class="navbar navbar-expand-lg navbar-light bg-light" id="Nbar">
			<div class="container-fluid">
				<a class="navbar-brand" href="landingPge.controller">首頁!</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul id="Nbar-left" class="navbar-nav me-auto mb-2 mb-lg-0">

						<li class="nav-link active"><a class="nav-link"
							href="in.controller">新增</a></li>

						<li class="nav-link active"><a class="nav-link"
							href="up.controller">修改</a></li>

						<li class="nav-link active"><a class="nav-link"
							href="de.controller">刪除</a></li>

						<li class="nav-link active"><a class="nav-link"
							href="getAllmember.controller">全部查詢</a></li>

						<li class="nav-link active"><a class="nav-link" href="#"
							data-bs-toggle="modal" data-bs-target="#update">跳出檢測</a></li>

						<li class="nav-link active"><a class="nav-link"
							href="upAjax.controller">修改Ajax</a></li>

						<li class="nav-link active"><a class="nav-link"
							href="dataTablePge.controller">datatable 分頁</a></li>
					</ul>
					<form method="post" class="d-flex" id="search"
						action="getByLike.controller">
						<input name="queryVal" class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
			</div>
		</nav>


		<!-- Bar以下畫面------------------------------------------------------------------------------ -->
		<div class="container">
			<div class="row">
				<c:forEach items="${find}" var="find" varStatus="status">
					<div class="col-md-4 col-sm-6">
						<div class="card border-primary mb-3"
							style="max-width: 20rem; max-height: 50rem;">
							<div class="card-header">Email: ${find.aid}</div>
							<div class="card-body">
								<img id="mainImg" src="${find.aavatar}" id="mainImg" />
								<ul id="ul">
									<li>姓名:${find.aname}</li>
									<li>密碼:${find.apassword}</li>
									<li>生日:${find.abirthday}</li>
									<li>電話:${find.aphone}</li>
									<li>地址:${find.aaddress}</li>
								</ul>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>


		<div>
			<img src="images/head.png" id="headimg">
		</div>

		<!-- 功能區(以上是Bar下面的畫面)-------------------------------------------------------------------------------------------- -->

		<!-- 修改Modal ----------------------------------------------------------------------------->
		<div
			style="width: 70%; height: 85%; margin-left: 15%; margin-top: 5%;"
			class="modal fade container" id="update" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div style="height: 1100px; width: 100%;" class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">跳出檢測</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div style="margin: 15%; margin-top: -1%; width: 60%; height: 50%"
						class="modal-body">
						<form action="updateCoupon.controller" method="post"
							enctype="multipart/form-data">
							<fieldset>
								<h5>這裡請輸入商品名稱:</h5>
								<div style="margin: -26%; width: 170%; margin-top: 5%;"
									class="input-group input-group-sm mb-3">
									<span for="coName" class="input-group-text"
										id="inputGroup-sizing-lg">商品名稱:</span> <input
										placeholder="請輸入商品名稱" type="text" name="pName"
										id="pNameUpdate" class="form-control"
										aria-label="Sizing example input"
										aria-describedby="inputGroup-sizing-sm" required><span
										id="spPNameUpdate"></span>
								</div>
								<h5>以下請輸入待修改的商品項目:</h5>
								<div style="width: 80%; margin-left: 10%;">
									<div>
										<img
											style="margin-top: -50%; border-radius: 15%; margin: 10%; width: 100%; height: 100%;"
											id="up" name="img" src="images/head.png"><br> <input
											style="margin: -26%; width: 170%; margin-top: 2%;"
											class="form-control" type="file" name="pImg" accept="image/*"
											onchange="loadFile2(event)" required><br>

										<script>
											var loadFile2 = function(event) {
												var output2 = document
														.getElementById('up');
												output2.src = URL
														.createObjectURL(event.target.files[0]);
												output2.onload = function() {
													URL
															.revokeObjectURL(output2.src)
												}
											};
										</script>
										<div style="margin: -26%; width: 170%; margin-top: 25%;"
											class="input-group input-group-sm mb-3">
											<span for="coName" class="input-group-text"
												id="inputGroup-sizing-lg">廠商名稱:</span> <input
												placeholder="請輸入廠商名稱" type="text" name="coName"
												id="coNameUpdate" class="form-control"
												aria-label="Sizing example input"
												aria-describedby="inputGroup-sizing-sm"><span
												id="spCoNameUpdate" required></span>
										</div>
									</div>



									<div style="margin: -26%; width: 170%; margin-top: 5%;"
										class="input-group input-group-sm mb-3">
										<span for="coName" class="input-group-text"
											id="inputGroup-sizing-lg">商品價格:</span> <input
											placeholder="請輸入商品價格" type="text" name="price"
											id="priceUpdate" class="form-control"
											aria-label="Sizing example input"
											aria-describedby="inputGroup-sizing-sm"><span
											id="spPriceUpdate" required></span>
									</div>

									<div style="margin: -26%; width: 170%; margin-top: 5%;"
										class="input-group input-group-sm mb-3">
										<span for="coName" class="input-group-text"
											id="inputGroup-sizing-lg">庫存量:</span> <input
											placeholder="請輸入庫存量" type="text" name="pQty" id="pQtyUpdate"
											class="form-control" aria-label="Sizing example input"
											aria-describedby="inputGroup-sizing-sm"><span
											id="spPQtyUpdate" required></span>
									</div>

									<div style="margin: -26%; width: 170%; margin-top: 5%;"
										class="input-group input-group-sm mb-3">
										<span for="coName" class="input-group-text"
											id="inputGroup-sizing-lg">優惠起始日:</span> <input
											placeholder="請輸入商品優惠起始日" type="date" name="startDate"
											id="startDateUpdate" class="form-control"
											aria-label="Sizing example input"
											aria-describedby="inputGroup-sizing-sm"><span
											id="spStartDateUpdate" required></span>
									</div>

									<div style="margin: -26%; width: 170%; margin-top: 5%;"
										class="input-group input-group-sm mb-3">
										<span for="coName" class="input-group-text"
											id="inputGroup-sizing-lg">優惠截止日:</span> <input
											placeholder="請輸入商品優惠截止日" type="date" name="endDate"
											id="endDateUpdate" class="form-control"
											aria-label="Sizing example input"
											aria-describedby="inputGroup-sizing-sm"><span
											id="spEndDateUpdate" required></span>
									</div>

									<div style="margin: -26%; width: 170%; margin-top: 5%;"
										class="input-group input-group-sm mb-3">
										<span class="input-group-text" id="inputGroup-sizing-lg">分類名稱:</span>
										<select name="caName" id="caNameUpdate" required>
											<option value="">請輸入</option>
											<option value="餐廳">餐廳</option>
											<option value="旅遊">旅遊</option>
											<option value="服裝">服裝</option>
											<option value="運動">運動</option>
										</select><span id="spCaNameUpdate"></span>
									</div>

									<div style="margin-left: 35%; margin-top: 15%;">
										<input type="submit" value="送出"> <input type="reset"
											value="清除">
									</div>
								</div>
					</div>
				</div>
				</fieldset>
				</form>
			</div>

		</div>
		</div>
		</div>
		<script>
			document.getElementById("caNameUpdate").onblur = checkcaNameUpdate;
			document.getElementById("coNameUpdate").onblur = checkCoNameUpdate;
			document.getElementById("pNameUpdate").onblur = checkPNameUpdate;
			document.getElementById("priceUpdate").onblur = checkPriceUpdate;
			document.getElementById("pQtyUpdate").onblur = checkPQtyUpdate;
			document.getElementById("startDateUpdate").onblur = checkStartDateUpdate;
			document.getElementById("endDateUpdate").onblur = checkEndDateUpdate;

			function checkcaNameUpdate() {
				let caNameObj = document.getElementById("caNameUpdate");
				let caNameObjVal = caNameObj.value;

				let sp7 = document.getElementById("spCaNameUpdate");
				if (caNameObjVal == "") {
					sp7.innerHTML = "<img src='images/error.png' class='error'>不可空白";
				} else {
					sp7.innerHTML = "<img src='images/correct.png' class='ok'>ok";
				}
			}

			function checkCoNameUpdate() {
				let coNameObj = document.getElementById("coNameUpdate");
				let coNameObjVal = coNameObj.value;

				let sp1 = document.getElementById("spCoNameUpdate");

				if (coNameObjVal == "") {
					sp1.innerHTML = "<img src=''images/error.png' class='error'>不可空白";
				} else {
					sp1.innerHTML = "<img src='images/correct.png' class='ok'>ok";
				}
			}

			function checkPNameUpdate() {
				let pNameObj = document.getElementById("pNameUpdate");
				let pNameObjVal = pNameObj.value;
				let sp2 = document.getElementById("spPNameUpdate");

				if (pNameObjVal == "") {
					sp2.innerHTML = "<img src='images/error.png' class='error'>不可空白";
				} else {
					sp2.innerHTML = "<img src='images/correct.png' class='ok'>ok";
				}
			}

			function checkPriceUpdate() {
				let priceObj = document.getElementById("priceUpdate");
				let priceObjVal = priceObj.value;

				let sp3 = document.getElementById("spPriceUpdate");
				re1 = /^[0-9]*$/;

				if (priceObjVal == "") {
					sp3.innerHTML = "<img src='images/error.png' class='error'>不可空白";
				} else if (re1.test(priceObjVal)) {
					if (priceObjVal >= 0 && priceObjVal <= 1000000) {
						sp3.innerHTML = "<img src='images/correct.png' class='ok'>ok";
					} else {
						sp3.innerHTML = "<img src='images/error.png' class='error'>價錢過高";
					}
				} else {
					sp3.innerHTML = "<img src='images/error.png'class='error'>請輸入";
				}
			}

			function checkPQtyUpdate() {
				let pQtyObj = document.getElementById("pQtyUpdate");
				let pQtyObjVal = pQtyObj.value;
				let sp4 = document.getElementById("spPQtyUpdate");
				re2 = /^[0-9]*$/;

				if (pQtyObjVal == "") {
					sp4.innerHTML = "<img src='images/error.png' class='error'>不可空白";
				} else if (re2.test(pQtyObjVal)) {
					if (pQtyObjVal >= 0 && pQtyObjVal <= 50) {
						sp4.innerHTML = "<img src='images/correct.png' class='ok'>ok";
					} else {
						sp4.innerHTML = "<img src='images/error.png' class='error'>庫存量應低於(含)50筆";
					}
				} else {
					sp4.innerHTML = "<img src='images/correct.png' class='error'>請輸入";
				}
			}

			function checkStartDateUpdate() {
				let startDatObj = document.getElementById("startDateUpdate");
				let startDateObjVal = startDatObj.value;
				let sp5 = document.getElementById("spStartDateUpdate");

				d = new Date(startDateObjVal);
				let theYear = d.getFullYear();
				let theMonth = d.getMonth() + 1;
				let theDate = d.getDate();
				let today = new Date();
				let theYear1 = today.getFullYear();
				let theMonth1 = today.getMonth() + 1;
				let theDate1 = today.getDate();
				if (startDateObjVal == "") {
					sp5.innerHTML = "<img src='images/error.png' class='error'>不可空白";
				} else if (theYear == theYear1 && theMonth == theMonth1
						&& theDate >= theDate1 || theYear == theYear1
						&& theMonth > theMonth1 || theYear > theYear1) {
					sp5.innerHTML = "<img src='images/correct.png' class='ok'>ok";
				} else {
					sp5.innerHTML = "<img src='images/error.png' class='error'>請輸入";
				}
			}

			function checkEndDateUpdate() {
				let endDateObj = document.getElementById("endDateUpdate");
				let endDateObjVal = endDateObj.value;
				let sp6 = document.getElementById("spEndDateUpdate");

				var std = document.getElementById("startDateUpdate").value
				let d1 = std.split("-");

				d = new Date(endDateObjVal);
				let theYear1 = d.getFullYear();
				let theMonth1 = d.getMonth() + 1;
				let theDate1 = d.getDate();

				if (endDateObjVal == "") {
					sp6.innerHTML = "<img src='images/error.png' class='error'>不可空白";

				} else if (d1[0] == theYear1 && d1[1] == theMonth1
						&& d1[2] <= theDate1 || d1[0] == theYear1
						&& d1[1] < theMonth1 || d1[0] < theYear1) {
					sp6.innerHTML = "<img src='images/correct.png' class='ok'>ok";
				} else {
					sp6.innerHTML = "<img src='images/error.png' class='error'>請輸入";
				}
			}
		</script>
		<!-- 修改區域!!------------------------------------------------------------------------- -->
</body>

</html>