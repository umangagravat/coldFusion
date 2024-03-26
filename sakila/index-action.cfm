
<cfquery name="variables.qActor" datasource="sakila">
    SELECT  email, password, first_name
    FROM    actor
    WHERE email = <cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar" />
    and password = <cfqueryparam value="#form.password#" cfsqltype="cf_sql_varchar" />
</cfquery>

<cfif variables.qActor.recordCount eq 0>
    <!--- redirect to login --->
    <cflocation addtoken="false" url="/index.cfm?message=invalid_email_or_password" />
<cfelse>
    <!--- redirect to application --->
    <cfset session.name = variables.qActor.first_name />
    <cflocation addtoken="false" url="/dashboard.cfm" />
</cfif>