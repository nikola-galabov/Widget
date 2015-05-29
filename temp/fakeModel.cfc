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


<cffunction name="getData" access="remote" output="false" returntype="string" returnformat="json">
	<cfset test = #serializeJSON(myQuery)# />

    <cfreturn  test />
</cffunction>
