$(document).ready(function(){

	$.ajax({
		url: '/temp/fakeModel.cfc?method=getRealData',
		type: 'GET',
		dataType: 'json'
	})
	.done(function(data) {	

		var $table = $('<table id="example">');
		var $thead = $('<thead>').appendTo($table);
		var $tr = $('<tr>').appendTo($thead);

		for(prop in data['COLUMNS']) {
			var $th = $('<th>').text(prop);
			$th.appendTo($tr);
		}

		$table.appendTo('#hr2');

		$('#example').dataTable( {
	        "data": data['DATA'],
	        "columns": [
	        	{ "title": "First name" },
	            { "title": "Last name" },
	        ]
	    } ); 
	})
	.fail(function(err) {
		console.log(err);
	})
	.always(function() {
		console.log("complete");
	});

});