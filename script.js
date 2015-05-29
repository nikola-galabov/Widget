
	$(document).ready(function(){
		$('#2').click(function(){

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
	});

