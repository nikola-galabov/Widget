<!--- <cfset model="#createObject('component', 'temp.fakeModel')#" />

<cfdump var="#model.getColumnsList()#"> --->
	
<!--- </cfdump> --->

<div class="jarviswidget" id="some-id" role="widget">
	<header role="heading">
		<!--- Some heading must be placed here if there is any need --->	
		
		<ul id="widget-tab-1" class="nav nav-tabs">
			<li class="active">
				<a data-toggle="tab" href="#hr-male"> 
					<i class="fa fa-lg fa-arrow-circle-o-down"></i> 
					<span class="hidden-mobile hidden-tablet"> Male </span> 
				</a>
			</li>

			<li>
				<a id="test" data-toggle="tab" href="#hr-female"> 
					<i class="fa fa-lg fa-arrow-circle-o-up"></i> 
					<span class="hidden-mobile hidden-tablet"> Female </span>
				</a>
			</li>
		</ul>	
		
		<span class="jarviswidget-loader"><i class="fa fa-refresh fa-spin"></i></span>
	</header>

	<!-- widget div-->
	<div role="content">
		
		<!-- widget content -->
		<div class="widget-body no-padding">

			<!-- widget body text-->			
			<div class="tab-content padding-10">
				<div class="tab-pane fade in active" id="hr-male">
					
				</div>

				<div class="tab-pane fade" id="hr-female">
					
				</div>
			</div>

		</div>
		<!-- end widget content -->
		
	</div>
	<!-- end widget div -->
	
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>	

	function addTable (category, displayColumns) {

		var $table = $('<table id="' + category + '">');
		var $thead = $('<thead>').appendTo($table);
		var $tr = $('<tr>').appendTo($thead);
		var columns = [];

		for(prop in displayColumns) {
			var obj = {};
			var $th = $('<th>').text(displayColumns[prop]);

			$th.appendTo($tr);
			obj['title'] = displayColumns[prop];

			columns.push(obj);
		}

		$table.appendTo('#hr-'+ category);

		$.ajax({
			url: '/temp/fakeModel.cfc?method=getRealData&gender=' + category,
			type: 'GET',
			dataType: 'json'
		})
		.done(function(data) {
			$('#' + category).dataTable( {
		    	"data": data['DATA'],
		    	"columns": columns
			} ); 
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});
	}

	var category = "male";
	
	var displayColumns = [ 
		'First name',
		'Last name',
		'Birth date',
		'Email',
		'Lenguages',
		'Technologies',
		'Description'
	];

	addTable(category, displayColumns);
	addTable('female', displayColumns);

</script>