<cfcomponent>

    <!--- This is a remote function wich will return a html response  --->
    <cffunction name="getResponse" access="remote" output="false" returntype="string" returnformat="plain">
        <cfset response = '<table class="data-table" data-table-tab-category="it">
            <thead>
                <tr>
                    <th>First Name</th>
               
                    <th>Last Name</th>
                
                    <th>City</th>
               
                    <th>Country</th>
                </tr>
            </thead>
        </table>' />
        
        <cfreturn #response# />
    </cffunction>

    <!--- Another temp function for returning a result --->
    <cffunction name="getOtherResponse" access="remote" output="false" returntype="string" returnformat="plain">
        <cfset response = "<h1>Other response in h1 asdsads</h1>" />
        <cfreturn #response# />
    </cffunction>


    <!--- This is the server-side proccessing of datatables plugin --->
	<cffunction name="processDataTable" access="remote" output="false" returntype="any" returnformat="JSON">

        <cfargument name="sEcho" type="numeric" required="true" default="1" />
        <cfargument name="iDisplayStart" type="numeric" required="false" default="0" />
        <cfargument name="iDisplayLength" type="numeric" required="false" default="10" />
        <cfargument name="sSearch" type="string" required="false" default="" />
        <cfargument name="profession" type="string" required="true"/>
         
        <cfset var sortField = "" />
        <cfset var sortFieldValue = "" />
        <cfset var sortFieldDirValue = "" />
        <cfset var sortFieldDir = "" />
        <cfset var orderFields = "" />
        <cfset var FilterOrderBy = "" />
        <cfset var aColumnArray = ListToArray("firstName, lastName, city, country") />
        <cfset var aGridData = ArrayNew(1) />
        <cfset var aaData = arrayNew(1) />
         
        <cfset var qAllData =  "" />
        <cfset var qData = "" />
        <cfset var qFilteredData = "" />
        <cfset var myAuthors = "" />
         
        <!--- get our order by --->
        <cfif IsDefined("Arguments.iSortCol_0")>
            <cfloop from="0" to="#Arguments.iSortingCols#" index="x">
                <cfset sortField = 'iSortCol_#x#' />
                <cfset sortFieldDir = 'sSortDir_#x#' />
                <cfif IsDefined("Arguments.#sortField#") EQ "YES">
                    <cfset sortFieldValue = Arguments[#sortField#] + 1 />
                    <cfset sortFieldDirValue = Arguments[#sortFieldDir#] />
                    <cfset orderFields = orderFields & aColumnArray[sortFieldValue] & " " & sortFieldDirValue & ", "/>
                </cfif>
            </cfloop>
            <cfset FilterOrderBy = LEFT(orderFields, LEN(orderFields)-2) />
        </cfif>
         
        <cfquery name="qAllData" datasource="test">

            SELECT 
            	COUNT(`id`) AS allRecordCount
            FROM 
            	`test`
        	WHERE 
				`profession` = <cfqueryparam value="#ARGUMENTS.profession#" cfsqltype="varchar" maxlength="50"/>

		</cfquery>
         
        <cfset var startRow = 1 />
        <cfset var endRow = qAllData.RecordCount />
 
        <cfif Arguments.iDisplayLength NEQ -1>
            <cfset startRow = Arguments.iDisplayStart + 1 />
            <cfset endRow = startRow + Arguments.iDisplayLength />
        </cfif>
 
        <cfquery name="qFilteredData" datasource="test">
            SELECT 
            	`firstName`, `lastName`, `city`, `country`
            FROM 
            	`test`
        	WHERE 
				`profession` = <cfqueryparam value="#ARGUMENTS.profession#" cfsqltype="varchar" maxlength="50"/>

			<cfif Arguments.sSearch NEQ "">
                <cfset var cleanSearchCriteria = TRIM(Arguments.sSearch) />
                AND (
                    firstName LIKE <cfqueryparam value="%#cleanSearchCriteria#%" cfsqltype="cf_sql_varchar" />
                    OR lastName LIKE <cfqueryparam value="%#cleanSearchCriteria#%" cfsqltype="cf_sql_varchar" />
                    OR city LIKE <cfqueryparam value="%#cleanSearchCriteria#%" cfsqltype="cf_sql_varchar" />
                    OR country LIKE <cfqueryparam value="%#cleanSearchCriteria#%" cfsqltype="cf_sql_varchar" />
                )
            </cfif>

            <cfif FilterOrderBy NEQ "">ORDER BY #FilterOrderBy#</cfif>

        </cfquery>
         
        <cfif Arguments.iDisplayLength NEQ -1>
            <cfset startRow = Arguments.iDisplayStart + 1 />
            <cfset maxRows = Arguments.iDisplayLength />
        </cfif>
 
        <!--- Loop our results, implementing our filtering and pagination and putting into an array to be returned --->
        <cfoutput query="qFilteredData" startrow="#startRow#" maxrows="#maxRows#">
            <cfset aGridData = arrayNew(1) />
            <cfset arrayAppend(aGridData, #qFilteredData.firstName#) />
            <cfset arrayAppend(aGridData, #qFilteredData.lastName#) />
            <cfset arrayAppend(aGridData, #qFilteredData.city#) />
            <cfset arrayAppend(aGridData, #qFilteredData.country#) />
 
            <cfset ArrayAppend(aaData, aGridData) />
        </cfoutput>
 
        <cfset sGridReturn["sEcho"] = JavaCast("int", Arguments.sEcho) />
        <cfset sGridReturn["iTotalRecords"] = qAllData.allRecordCount />
        <cfset sGridReturn["iTotalDisplayRecords"] = qFilteredData.RecordCount />
        <cfset sGridReturn["aaData"] = aaData />
         
        <cfreturn sGridReturn />
	</cffunction>

</cfcomponent>


































