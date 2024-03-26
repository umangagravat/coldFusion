<cfcomponent displayname="categoryDAO">

    <cffunction name="read" access="public" output="true" returntype="category" >
        <cfargument name="category_id" type="numeric" required="true" />

        <cfset var qCategory = "" />
        <cfquery name="qCategory" datasource="sakila">
            SELECT * 
            FROM category
            WHERE category_id = <cfqueryparam value="#arguments.category_id#" cfsqltype="cf_sql_integer" />
        </cfquery>
        <cfif qCategory.recordcount>
            <cfreturn new category().init(argumentCollection = qCategory.getRow(1)) />
        <cfelse>
            <cfreturn new category().init() />
        </cfif>
    </cffunction>

    <cffunction name="insert" access="public" output="false" returntype="category">
        <cfargument name="category" type="category" required="true" />

        <cfset var qCategory = "" />
        <cfquery name="qCategory" datasource="sakila">
            INSERT INTO category (name)
            VALUES
            (
                <cfqueryparam value="#arguments.category.getName()#" cfsqltype="cf_sql_varchar" />
            );

            select last_insert_id() id;
        </cfquery>
            <cfset arguments.category.setCategory_id(qCategory.id) />

            <cfreturn arguments.category />
    </cffunction>

    <cffunction name="update" access="public" output="true" returntype="category">
        <cfargument name="category" type="category" required="true"/>

        <cfquery datasource="sakila">
            UPDATE category
            SET
                name = <cfqueryparam value="#arguments.category.getName()#" cfsqltype="cf_sql_varchar" />
            WHERE category_id = <cfqueryparam value="#arguments.category.getCategory_id()#" cfsqltype="cf_sql_integer" />
        </cfquery>
        <cfreturn arguments.category />
    </cffunction>

</cfcomponent>