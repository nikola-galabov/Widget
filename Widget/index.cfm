<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Widget</title>
		<link rel="stylesheet" type="text/css" media="screen" href="libs/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="libs/css/smartadmin-production-plugins.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="libs/css/smartadmin-production.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="libs/css/smartadmin-skins.min.css">
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.css">
        <link rel="author" href="humans.txt">
    </head>
    <body>

	<cfinclude template="widgetTabs.cfm" />
	<cfinclude template="scripts.cfm" />

    </body>
</html>
 
<!--- testing --->

<!--- !!!! When a query has been serialized it returns a columns and data --->

<!--- <cfset test = #createObject("component", "temp.fakeModel")# />
	
	<cfquery name="test" datasource="cfcourse">
		SELECT * FROM users
	</cfquery>

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

	<cfdump var="#serializeJSON(test)#">
		
	</cfdump>
<hr>
	<cfdump var="#serializeJSON(myQuery)#">
		
	</cfdump>

	<hr>
	<cfdump var="#test.ColumnList#">
		
	</cfdump> --->