<cfcomponent displayname="countryDAO">

    <cffunction name="read" access="public" output="true" returntype="country" >
        <cfargument name="country_id" type="numeric" required="true" />

        <cfset var qCountry = "" />
        <cfquery name="qCountry" datasource="sakila">
            SELECT * 
            FROM country
            WHERE country_id = <cfqueryparam value="#arguments.country_id#" cfsqltype="cf_sql_integer" />
        </cfquery>
        <cfif qCountry.recordcount>
            <cfreturn new country().init(argumentCollection = qCountry.getRow(1)) />
        <cfelse>
            <cfreturn new country().init() />
        </cfif>
    </cffunction>

    <cffunction name="insert" access="public" output="false" returntype="country">
        <cfargument name="country" type="country" required="true" />

        <cfset var qCountry = "" />
        <cfquery name="qCountry" datasource="sakila">
            INSERT INTO country (country)
            VALUES
            (
                <cfqueryparam value="#arguments.country.getName()#" cfsqltype="cf_sql_varchar" />
            );

            select last_insert_id() id;
        </cfquery>
            <cfset arguments.country.setCountry_id(qCountry.id) />

            <cfreturn arguments.country />
    </cffunction>

    <cffunction name="update" access="public" output="true" returntype="country">
        <cfargument name="country" type="country" required="true"/>

        <cfquery datasource="sakila">
            UPDATE country
            SET
                country = <cfqueryparam value="#arguments.country.getName()#" cfsqltype="cf_sql_varchar" />
            WHERE country_id = <cfqueryparam value="#arguments.country.getCountry_id()#" cfsqltype="cf_sql_integer" />
        </cfquery>
        <cfreturn arguments.country />
    </cffunction>

</cfcomponent>