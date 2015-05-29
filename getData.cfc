<cfcomponent>

    <cffunction name="testing" access="remote" output="false" returntype="string" returnformat="json">
    	<cfset test = #serializeJSON(obj)# />

        <cfreturn  test />
    </cffunction>
</cfcomponent>

