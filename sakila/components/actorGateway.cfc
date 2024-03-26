    <cfcomponent displayname="actorGateway" output="true">

    <cffunction name="actorList" access="public" returntype="query">
        <cfargument name="page" type="numeric" default="1">
        <cfargument name="maxRows" type="numeric" default="10" />
 
        <cfset local.currentRecords = (arguments.page - 1) * arguments.maxRows />
        <cfquery name="local.qActor" datasource="sakila">
            select *
            from actor
            order by actor_id DESC
            limit #local.currentRecords# , #arguments.maxRows#;
        </cfquery>
 
        <cfreturn local.qActor/>
    </cffunction>

    <cffunction name="get" access="public" output="true" returntype="actor">
        <cfargument name="id" type="numeric" required="true" />

        <cfset var actor = new actorDAO().read(actor_id = arguments.id) />
        
        <cfreturn actor />
    </cffunction>

    <cffunction name="save" output="false" access="public" returntype="actor" >
        <cfargument name="actor" type="actor" required="true" />

        <cfif actor.getActor_id() EQ 0>
            <cfreturn new actorDAO().insert(arguments.actor) />
        <cfelse>
            <cfreturn new actorDAO().update(arguments.actor) />
        </cfif>
    </cffunction>

</cfcomponent>