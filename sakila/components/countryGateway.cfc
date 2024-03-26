<cfcomponent displayname="countryGateway">

    <cffunction name="countryList" access="public" returntype="query">
        <cfargument name="page" default="1"/>
        <cfargument name="maxRows" default="10" />

        <cfset local.current_page = (arguments.page - 1) * arguments.maxRows />
        <cfquery name="local.qCountry" datasource="sakila">
            SELECT *
            FROM country
            ORDER BY country_id DESC
            LIMIT #local.current_page#, #arguments.maxRows#;
        </cfquery>

        <cfreturn qCountry />
    </cffunction>

    <cffunction name="get" access="public" returntype="country">
        <cfargument name="id" type="numeric" required="true" />

        <cfset var country = new countryDAO().read(country_id = arguments.id) />

        <cfreturn country />
    </cffunction>

    <cffunction name="save" output="false" access="public" returntype="country" >
        <cfargument name="country" type="country" required="true" />

        <cfif country.getCountry_id() EQ 0>
            <cfreturn new countryDAO().insert(arguments.country) />
        <cfelse>
            <cfreturn new countryDAO().update(arguments.country) />
        </cfif>
    </cffunction>
</cfcomponent>