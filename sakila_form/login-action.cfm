<!--- <cfdump var="#url.email#"/>
<cfdump var="#url.password#" /> --->

<cfquery datasource="sakila" name="variables.qValidation">
    SELECT email, password, first_name
    FROM actor;
</cfquery>
<cfoutput>
<cfloop query="variables.qValidation">
    <cfif variables.qValidation.email EQ '#form.email#' AND variables.qValidation.password EQ '#form.password#'>
        <cflocation url="index.cfm?message=successfully login" addtoken="false"/>
    </cfif>
</cfloop>
    <cflocation url="login.cfm?message=unsuccess" addtoken="false"/>
</cfoutput>

