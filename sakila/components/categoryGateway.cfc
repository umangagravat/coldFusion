<cfcomponent displayname="categoryGateway">

    <cffunction name="categoryList" access="public" returntype="query">
        <cfargument name="page" default="1"/>
        <cfargument name="maxRow" default="10" />

        <cfset local.current_page = (arguments.page - 1) * arguments.maxRow />
        <cfquery name="local.qCategories" datasource="sakila">
            SELECT *
            FROM category
            ORDER BY category_id DESC
            LIMIT #local.current_page#, #arguments.maxRow#;
        </cfquery>

        <cfreturn qCategories />
    </cffunction>

    <cffunction name="get" access="public" returntype="category">
        <cfargument name="id" type="numeric" required="true" />

        <cfset var category = new categoryDAO().read(category_id = arguments.id) />

        <cfreturn category />
    </cffunction>

    <cffunction name="save" output="false" access="public" returntype="category" >
        <cfargument name="category" type="category" required="true" />

        <cfif category.getCategory_id() EQ 0>
            <cfreturn new categoryDAO().insert(arguments.category) />
        <cfelse>
            <cfreturn new categoryDAO().update(arguments.category) />
        </cfif>
    </cffunction>

</cfcomponent>