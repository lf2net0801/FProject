<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DataTable</title>
<style>
.img {
	width: 100px;
	height: 100px;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link
	href="https://cdn.datatables.net/1.11.1/css/jquery.dataTables.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>


</head>
<body>
	<div class="container-fluid">
		<h1 class="h3 mb-2 text-gray-800">dataTables</h1>
		<a class="navbar-brand" href="empMember.controller">�^�޲z��!</a>
		<div class="card shadow mb-4">

			<div class="card-body" style="width: 100%">
				<div class="table-responsive">

					<table id="findall" class="table"
						style="width: 100%; text-align: center;">
						<thead>
							<tr>
								<th>aid</th>
								<th>apassword</th>
								<th>abirthday</th>
								<th>aname</th>
								<th>aphone</th>
								<th>aaddress</th>
								<th>aavatar</th>
							</tr>
						</thead>
						<tbody>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {

			$('#findall').DataTable(

			{

				"ajax" : {
					"url" : "dataTableAll.controller",
					"dataSrc" : "dataAll"
				},
				"columns" : [ {
					"data" : "aid"
				}, {
					"data" : "apassword"
				}, {
					"data" : "abirthday"
				}, {
					"data" : "aname"
				}, {
					"data" : "aphone"
				}, {
					"data" : "aaddress"
				}, {
					"data" : null,
					render : function(data, type, row) {
						var aavatar = data.aavatar;
						return "<img src="+aavatar+" class='img'>";
					}
				} ],
				language : {
					"lengthMenu" : "��� MENU �����",
					"sProcessing" : "�B�z��...",
					"sSearch" : "�j�M:",
					"sLoadingRecords" : "���J��Ƥ�...",
					"oPaginate" : {
						"sFirst" : "����",
						"sPrevious" : "�W�@��",
						"sNext" : "�U�@��",
						"sLast" : "����"
					}
				},
				iDisplayLength : 3
			});

		})
	</script>

</body>
</html>