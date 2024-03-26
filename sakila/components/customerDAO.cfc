<cfcomponent displayname="customerDAO">

    <cffunction name="read" access="public" output="true" returntype="customer" >
        <cfargument name="customer_id" type="numeric" required="true" />

        <cfset var qCustomer = "" />
        <cfquery name="qCustomer" datasource="sakila">
            SELECT * 
            FROM customer
            WHERE customer_id = <cfqueryparam value="#arguments.customer_id#" cfsqltype="cf_sql_integer" />
        </cfquery>
        <cfif qCustomer.recordcount>
            <cfreturn new customer().init(argumentCollection = qCustomer.getRow(1)) />
        <cfelse>
            <cfreturn new customer().init() />
        </cfif>
    </cffunction>

    <cffunction name="insert" access="public" output="false" returntype="customer" >
        <cfargument name="customer" type="customer" required="true"/>

        <cfset var qCustomer = "" />
        <cfquery name="qCustomer" datasource="sakila">
            INSERT INTO customer (first_name, last_name, email, store_id, address_id)
            VALUES
            (
                <cfqueryparam value="#arguments.customer.getFirst_name()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.customer.getLast_name()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.customer.getEmail()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.customer.getStore()#" cfsqltype="cf_sql_integer" />,
                <cfqueryparam value="#arguments.customer.getAddress()#" cfsqltype="cf_sql_integer" />    
            );

            SELECT last_insert_id() id;
        </cfquery>
        <cfset arguments.customer.setCustomer_id(qCustomer.id) />

        <cfreturn arguments.customer />
    </cffunction>

    <cffunction name="update" access="public" output="false" returntype="customer">
        <cfargument name="customer" type="customer" required="true" />

        <cfquery datasource="sakila">
            UPDATE customer
            SET
                first_name = <cfqueryparam value="#arguments.customer.getFirst_name()#" cfsqltype="cf_sql_varchar" />,
                last_name = <cfqueryparam value="#arguments.customer.getLast_name()#" cfsqltype="cf_sql_varchar" />,
                email = <cfqueryparam value="#arguments.customer.getEmail()#" cfsqltype="cf_sql_varchar" />,
                store_id = <cfqueryparam value="#arguments.customer.getStore()#" cfsqltype="cf_sql_integer" />,
                address_id = <cfqueryparam value="#arguments.customer.getAddress()#" cfsqltype="cf_sql_integer" /> 
            WHERE customer_id = <cfqueryparam value=#arguments.customer.getCustomer_id()# cfsqltype="cf_sql_integer" />
        </cfquery>

        <cfreturn arguments.customer />
    </cffunction>



</cfcomponent>