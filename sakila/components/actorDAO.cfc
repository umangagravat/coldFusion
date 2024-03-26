<cfcomponent displayname="actorDAO" >

    <cffunction name="read" access="public" output="true" returntype="actor" >
        <cfargument name="actor_id" type="numeric" required="true" />

        <cfset var qActor = "" />
        <cfquery name="qActor" datasource="sakila">
            SELECT * 
            FROM actor
            WHERE actor_id = <cfqueryparam value="#arguments.actor_id#" cfsqltype="cf_sql_integer" />
        </cfquery>
        <cfif qActor.recordcount>
            <cfreturn new actor().init(argumentCollection = qActor.getRow(1)) />
        <cfelse>
            <cfreturn new actor().init() />
        </cfif>
    </cffunction>

    <cffunction name="insert" access="public" output="false" returntype="actor" >
        <cfargument name="actor" type="actor" required="true"/>

        <cfset var qActor = "" />
        <cfquery name="qActor" datasource="sakila">
            INSERT INTO actor (first_name, last_name, email, password)
            VALUES
            (
                <cfqueryparam value="#arguments.actor.getFirst_name()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.actor.getLast_name()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.actor.getEmail()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.actor.getPassword()#" cfsqltype="cf_sql_varchar" />
            );

            select last_insert_id() id;
        </cfquery>
        <cfset arguments.actor.setActor_id(qActor.id) />

        <cfreturn arguments.actor />
    </cffunction>

    <cffunction name="update" access="public" output="false" returntype="actor">
        <cfargument name="actor" type="actor" required="true" />

        <cfquery datasource="sakila">
            UPDATE actor
            SET
                first_name = <cfqueryparam value="#arguments.actor.getFirst_name()#" cfsqltype="cf_sql_varchar" />,
                last_name = <cfqueryparam value="#arguments.actor.getLast_name()#" cfsqltype="cf_sql_varchar" />,
                email = <cfqueryparam value="#arguments.actor.getEmail()#" cfsqltype="cf_sql_varchar" />,
                password = <cfqueryparam value="#arguments.actor.getPassword()#" cfsqltype="cf_sql_varchar" />
            WHERE actor_id = <cfqueryparam value=#arguments.actor.getActor_id()# cfsqltype="cf_sql_varchar" />
        </cfquery>

        <cfreturn arguments.actor />
    </cffunction>
    
</cfcomponent>