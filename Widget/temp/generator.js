var category = male;
var displayColumns = [ 
	'First name',
	'Last name',
	'Birth date',
	'Email',
	'Lenguages',
	'Technolagies',
	'Description'
];

var $table = $('<table id="' + category + '">');
var $thead = $('<thead>').appendTo($table);
var $tr = $('<tr>').appendTo($thead);


for(prop in displayColumns) {
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