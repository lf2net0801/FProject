<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="" />
<title>member</title>


<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<!-- datatables style -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap5.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" />
<style>
.zi_box_1 {
	border: 2px solid white;
	border-radius: 4px;
	margin: 100px;
	padding: 20px;
	position: relative;
	box-shadow: 2px 2px 2px 2px #c7c7c7;
	
}

.zi_box_1::before {
	background-color: #fff;
	color: #3c83e0;
	content: "會員刪除";
	font-size: 0.8cm;
	font-weight: bold;
	left: 1em;
	padding: 0 .5em;
	position: absolute;
	top: -1em;
}

.form-label {
	margin-left: 10px;
	font-size: larger;
}

textarea {
	resize: none
}

;
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

#doublename {
	padding: 10px;
	color: red;
}

#check {
	padding: 10px;
}

#error {
	padding: 10px;
}
</style>
</head>

<body>
<body>

	<div class="page-wrapper chiller-theme toggled">

		<main class="page-content">
			<div class="container">

				<div class="zi_box_1">
					<form action="deletemember.controller" class="row g-3"
						method="post" enctype="multipart/form-data">
						<div class="col-md-12"></div>
						<div class="col-md-12">
							<div class="input-group mb-3">
								<span class="input-group-text" id="inputGroup-sizing-default">輸入Email:</span>
								<input type="text" class="form-control"
									aria-label="Sizing example input"
									aria-describedby="inputGroup-sizing-default" name="aid"
									id="aid" onblur="checkForm()" /><span id="mesg"></span><br>
							</div>
						</div>

						<div class="col-12">
							<button type="submit" value="Add" class="btn btn-primary">確認刪除</button>
						</div>
					</form>
				</div>
			</div>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
				crossorigin="anonymous"></script>
			<!-- fontawesome javascript  -->
			<script src="https://kit.fontawesome.com/1a950be563.js"
				crossorigin="anonymous"></script>
			<!-- tw zipcode   -->
			<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
			<script
				src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>

			<!--datatable js -->
			<script
				src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
			<script
				src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap5.min.js"></script>
			<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>