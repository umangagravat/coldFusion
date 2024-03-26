<cfcomponent displayname="cityDAO">

    <cffunction name="read" output="false" access="public" returntype="city">
        <cfargument name="id" type="numeric" required="true" />

        <cfset var qList = "" />
        <cfquery name="qList" datasource="sakila">
            select * from city 
            where city_id = <cfqueryparam name='#arguments.id#' cfsqltype="cf_sql_integer" />
        </cfquery>

        <cfif qList.recordcount>
            <cfreturn new city().init( argumentCollection = qList.getRow(1) ) />
        <cfelse>
            <cfreturn new city().init() />
        </cfif>
    </cffunction>

    <cffunction name="insert" access="public" output="false" returntype="city">
        <cfargument name="city" type="city" required="true"/>
        
        <cfset var qCustomer = "" />
        <cfquery name="qCustomer" datasource="sakila">
            INSERT INTO customer (first_name, last_name, email, store_id, address_id)
            VALUES
                (
                    <cfqueryparam value="#arguments.city.getFirstName()#" cfsqltype="cf_sql_varchar" />,
                    <cfqueryparam value="#arguments.lname#" cfsqltype="cf_sql_varchar" />,
                    <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar" />,
                    <cfqueryparam value="#arguments.store#" cfsqltype="cf_sql_integer" />,
                    <cfqueryparam value="#arguments.address#" cfsqltype="cf_sql_integer" />
                );

            select last_inserted_id() id;
        </cfquery>
        <cfset arguments.city.setCity_id(qCustomer.id) />

        <cfreturn arguments.city />
    </cffunction>

    <cffunction name="update" access="public" output="false" returntype="city">
        <cfargument name="city" type="city" required="true"/>

        <cfquery datasource="sakila">
            UPDATE customer
            SET 
                first_name = <cfqueryparam value="#customer.fname#" cfsqltype="cf_sql_varchar" />,
                last_name = <cfqueryparam value="#customer.lname#" cfsqltype="cf_sql_varchar" />,
                email = <cfqueryparam value="#customer.email#" cfsqltype="cf_sql_varchar" />,
                store_id = <cfqueryparam value="#customer.store#" cfsqltype="cf_sql_integer" />,
                address_id = <cfqueryparam value="#customer.address#" cfsqltype="cf_sql_integer" />
            WHERE customer_id = <cfqueryparam value="#customer.id#" cfsqltype="cf_sql_integer" />
        </cfquery>

        <cfreturn arguments.city />
    </cffunction>

</cfcomponent>