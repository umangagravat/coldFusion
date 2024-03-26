<cfcomponent displayname="filmGateway">

    <cffunction name="filmList" access="public" returntype="query">
        <cfargument name="page" type="numeric" default="1">
        <cfargument name="maxRows" type="numeric" default="10" />
 
        <cfset local.currentRecords = (arguments.page - 1) * arguments.maxRows />
        <cfquery name="local.qFilms" datasource="sakila">
            select *
            from film
            order by film_id DESC
            limit #local.currentRecords# , #arguments.maxRows#;
        </cfquery>
 
        <cfreturn local.qFilms/>
    </cffunction>

</cfcomponent>