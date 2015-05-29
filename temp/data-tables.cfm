<div id=""></div>
<cfset myQuery = QueryNew("Name, Time, Advanced", "VarChar, Time, Bit")> 
 
<!--- Make two rows in the query ---> 
<cfset newRow = QueryAddRow(MyQuery, 2)> 
 
<!--- Set the values of the cells in the query ---> 
<cfset temp = QuerySetCell(myQuery, "Name", "The Wonderful World of CMFL", 1)> 
<cfset temp = QuerySetCell(myQuery, "Time", "9:15 AM", 1)> 
<cfset temp = QuerySetCell(myQuery, "Advanced", False, 1)> 
<cfset temp = QuerySetCell(myQuery, "Name", "CFCs for Enterprise 
        Applications", 2)> 
<cfset temp = QuerySetCell(myQuery, "Time", "12:15 PM", 2)> 
<cfset temp = QuerySetCell(myQuery, "Advanced", True, 2)> 
 <table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
            </tr>
        </thead>
    </table>
<script src="/jquery-1.11.3.js"></script>
<script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>

<script>
	$(document).ready(function() {
        // $('#demo').html( '<table cellpadding="0" cellspacing="0" border="0" class="display" id="example"></table>' );
     
  //       $(document).ready(function() {
		//     $('#example').dataTable( {
		//         "ajax": "/temp/fakeModel.cfm?method=getData",
		//         "columns": [
		//             { "data": "name" },
		//             { "data": "position" },
		//             { "data": "office" },
		//             { "data": "extn" },
		//             { "data": "start_date" },
		//             { "data": "salary" }
		//         ]
		//     } );
		// } );

		$.ajax({
			url: '/temp/fakeModel.cfc?method=getData',
			type: 'GET',
			dataType: 'json'
		})
		.done(function(data) {

			console.log(data);
			$('#example').dataTable( {
			    "data": data['DATA'],
			    "columns": [
			        { "title": "name" },
			        { "title": "position" },
			        { "title": "office" } 
			    ]
			} );
		})
		.fail(function(err) {
			console.log("error");
			console.log(err);
		});
		
    } );
</script>




