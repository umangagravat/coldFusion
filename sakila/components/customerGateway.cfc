<cfcomponent displayname="customerGateway" output="true">

    <cffunction name="customerList" access="public" returntype="query">
        <cfargument name="page" type="numeric" default="1">
        <cfargument name="maxRows" type="numeric" default="10" />
 
        <cfset local.currentRecords = (arguments.page - 1) * arguments.maxRows />
        <cfquery name="local.qCustomer" datasource="sakila">
            select *
            from customer
            order by customer_id DESC
            limit #local.currentRecords# , #arguments.maxRows#;
        </cfquery>
 
        <cfreturn local.qCustomer/>
    </cffunction>

  
    <cffunction name="get" access="public" returntype="customer">
        <cfargument name="id" type="numeric" required="true" />
        
        <cfset var customer = new customerDAO().read(customer_id = arguments.id) />

        <cfreturn customer />
    </cffunction>

    <cffunction name="save" output="false" access="public" returntype="customer" >
        <cfargument name="customer" type="customer" required="true" />

        <cfif customer.getCustomer_id() EQ 0>
            <cfreturn new customerDAO().insert(arguments.customer) />
        <cfelse>
            <cfreturn new customerDAO().update(arguments.customer) />
        </cfif>
    </cffunction>
 
</cfcomponent>