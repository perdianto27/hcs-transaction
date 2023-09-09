<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>HCS-Perdianto</title>
		<!-- Theme style -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.css" />
		<link rel="stylesheet" href="{{ asset ('plugins/datatables/buttons.dataTables.min.css') }}">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
		<!-- jQuery -->
		<script src="{{ asset ('plugins/jquery/jquery.min.js') }}"></script>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
								<h3 class="card-title">Transaction</h3><br />
						</div>
						<div class="card-body">
							<table id="table" class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>No</th>
										<th>ID</th>
										<th>Merchant Name</th>
										<th>Outlate Name</th>
										<th>Transaction time</th>
										<th>Staff</th>
										<th>Pay Aomunt</th>
										<th>Payment Type</th>
										<th>Customer Name</th>
										<th>Tax</th>
										<th>Change Amount</th>
										<th>Total Amount</th>
										<th>Payment Status</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
		<script src="{{ asset ('plugins/datatables/jquery.dataTables.min.js') }}"></script>
		<script src="{{ asset ('plugins/datatables/dataTables.buttons.min.js') }}"></script>
		<script src="{{ asset ('plugins/datatables/buttons.html5.min.js') }}"></script>
		<script src="{{ asset ('plugins/datatables/jszip.min.js') }}"></script>
		<script src="{{ asset ('plugins/moment/moment.min.js') }}"></script>
		<script>
			// new DataTable('#example');
			let save_method;//for save method string
			let table;

			$(function () {
				//datatables
				const today = '{{ date("d-m-Y") }}';

				table = $('#table').DataTable({
					"scrollY":"300px",
					"scrollX": true,
					"scrollCollapse": true,
					"paging": true,
					"dom": 'Bfrtip',
					"lengthChange": false,
					buttons: [
						/*{
							extend:'excelHtml5',
							text:'<i class="fa-solid fa-file-excel"></i>',
							titleAttr: 'Excel',
							exportOptions: {
								columns: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] // the first column has an index of 0
							},
							title: today
						},*/
						{
							extend: 'csvHtml5',
							text:'<i class="fa-solid fa-file-csv"></i>',
							titleAttr: 'CSV',
              exportOptions: {
								columns: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] // the first column has an index of 0
							},
							title: today
						}
					],				
					"searching": true,
					"ordering": true,
					"info": true,
					"autoWidth": true,
					"responsive": true,
					"processing": true, //Feature control the processing indicator.
					// "serverSide": true, //Feature control DataTables' server-side processing mode.
					"order": [], //Initial no order.
					"lengthMenu": [
							[10, 25, 50, -1],
							[10, 25, 50, 'All']
					],
					"iDisplayLength": 25, // display length
					"pageLength": 10,
					"bFilter": false,
					// Load data for the table's content from an Ajax source
					"ajax": {
						"url": "{{ route('transaction-ajax-list')}}",
						"type": "POST",
						"dataType": "json",
						"data":{ _token: "{{csrf_token()}}"}
					},

					// Set column definition initialisation properties.
					"columnDefs": [
					{ 
					//    "targets": [ -1 ], //last column
					//    "orderable": false, //set not orderable
					},
					],
					"fnDrawCallback": function(nRow, aData, iDisplayIndex){
						$('#table tbody tr').hover(function() {
							$(this).addClass('highlight');
						}, function() {
							$(this).removeClass('highlight');
						});
					}

				});
			});

			function reload_table()
			{
				table.ajax.reload(null,false); //reload datatable ajax 
			}
		</script>
	</body>
</html>
