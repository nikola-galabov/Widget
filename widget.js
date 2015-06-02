/* 
	Variables:
		-ajaxHrefSelector: This is the selector of the <a> element. If an element has this atribute, it will be thread as a tab by the function;
		-widgetContentSelector: This is the container, where the information will be displayed; 
		-dataTableSelector: If the AJAX response has this atribute, the javascript function will init the Data Table plugin;
		-requestLink: This is the requested source.
*/

var ajaxHrefSelector = '.ajax-request';
var widgetContentSelector = '#some-id';
var dataTableSelector = '.data-table';

$(document).ready(function($) {

	/*
		When a tab is clicked, an AJAX request will be sent to the server, and if there is not an error, 
		the content of the container will be cleared and the html response will be appended to the container. 
		If there is an error, it will be logged in the database.
	*/
	$(ajaxHrefSelector).click(function() {

		var requestLink = $(this).attr('href');

		$.ajax({
			url: requestLink,
			type: 'GET',
			dataType: 'html',
		})
		.done(function(data) {
			$(widgetContentSelector)
				.empty()
				.html(data);

			onLoad();
		})
		.fail(function() {
			$(widgetContentSelector)
				.empty()
				.html('Something went wrong..');
				
			console.log('Save the error in db!');
		});
	});

	//The default information will be requested from the server, when the document is ready.
	$('.active a').trigger('click');

});

var columns = [ 
		{ 'title' : 'First name' },
		{ 'title' : 'Last name' },
		{ 'title' : 'City' },
		{ 'title' : 'Country' }
	];

// This function is loading some other scripts
function onLoad() {

	if ( $(dataTableSelector) ) {

		var category = $(dataTableSelector).attr('data-table-tab-category');

		// Server-side data-tables
		$(dataTableSelector).dataTable({
	        "aaSorting": [[ 1, "desc" ]],
	        "bProcessing": true,
	        "bServerSide": true,
	        "stateSave" : true,
	        "sAjaxSource": "/fakeModel.cfc?method=processDataTable&profession=" + category,
	        "aoColumnDefs": columns
		});
	}

}