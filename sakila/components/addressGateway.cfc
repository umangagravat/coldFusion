<cfcomponent displayname="addressGateway" output="true">
    
    <cffunction name="addressList" access="public" returntype="query">
        <cfargument name="page" type="numeric" default="1">
        <cfargument name="maxRows" type="numeric" default="10" />
 
        <cfset local.currentRecords = (arguments.page - 1) * arguments.maxRows />
        <cfquery name="local.qAddress" datasource="sakila">
            SELECT *
            FROM address
            ORDER BY address_id DESC
            LIMIT #local.currentRecords# , #arguments.maxRows#;
        </cfquery>

        <cfreturn local.qAddress/>
    </cffunction>

    <cffunction name="get" access="public" output="true" returntype="address" >
        <cfargument name="id" type="numeric" required="true" />

        <cfset var address = new addressDAO().read(address_id = arguments.id) />
        
        <cfreturn address />
    </cffunction>

    <cffunction name="save" access="public" output="true" returntype="address">
        <cfargument name="address" type="address" required="true" />
      
        <cfif address.getAddress_id() EQ 0>
            <cfreturn new addressDAO().insert(arguments.address) />
        <cfelse>
            <cfreturn new addressDAO().update(arguments.address) />
        </cfif>

    </cffunction>

</cfcomponent>