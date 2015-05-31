<cfcomponent>
	<!--- This is some fake query for testing purpose --->
	<cfset myQuery = QueryNew("Name, Time, Advanced", "VarChar, Time, Bit")> 
	<cfset newRow = QueryAddRow(MyQuery, 2)> 
	<cfset temp = QuerySetCell(myQuery, "Name", "The Wonderful World of CMFL", 1)> 
	<cfset temp = QuerySetCell(myQuery, "Time", "9:15 AM", 1)> 
	<cfset temp = QuerySetCell(myQuery, "Advanced", False, 1)> 
	<cfset temp = QuerySetCell(myQuery, "Name", "CFCs for Enterprise Applications", 2)> 
	<cfset temp = QuerySetCell(myQuery, "Time", "12:15 PM", 2)> 
	<cfset temp = QuerySetCell(myQuery, "Advanced", True, 2)> 

	<!--- Get data --->
	<cffunction name="getFakeData" access="remote" output="false" returntype="string" returnformat="json">
		<cfargument name="advanced" type="boolean" required="true"/>

		<cfquery name="data">
			SELECT 
				*
			FROM 
				`myQuery`
			WHERE
				`Advanced` = <cfqueryparam value="#ARGUMENTS.advanced#" cfsqltype="cf_sql_bit"/>
		</cfquery>

		<cfset result = #serializeJSON(data)# />

	    <cfreturn  result />
	</cffunction>

	<!--- This is a query from db --->


	<cffunction name="getColumnsList" access="public" output="false">
		
		<cfquery name="data" datasource="cfcourse">
			SELECT 
				* 
			FROM 
				`users`
		</cfquery>

		<cfset result = #data.ColumnList# />

	    <cfreturn  result />
	</cffunction>

	<cffunction name="getRealData" access="remote" output="false" returntype="string" returnformat="json">
		<cfargument name="gender" type="string" required="true"/>
		
		<cfquery name="data" datasource="cfcourse">
			SELECT 
				* 
			FROM 
				`users`
			WHERE 
				`usr_gender` = <cfqueryparam value="#ARGUMENTS.gender#" cfsqltype="varchar" maxlength="10"/>
		</cfquery>

		<cfset result = #serializeJSON(data)# />

	    <cfreturn  result />
	</cffunction>

</cfcomponent>