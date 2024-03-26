<cfcomponent displayname="categoryBran" output="true">
    <cfproperty name="category_id" type="numeric" default="0"/>
    <cfproperty name="name" type="string" default=""/>

    <cfset variables.instance = {} />

    <cffunction name="init" access="public" output="true" returntype="category">

        <cfargument name="category_id" type="numeric" default="0"/>
        <cfargument name="name" type="string" default=""/>

        <cfset this.setCategory_id(arguments.category_id) />
        <cfset this.setName(arguments.name) />

        <cfreturn this />
    </cffunction>

    <cffunction name="setCategory_id" access="public" output="false" returntype="void">
        <cfargument name="category_id" type="numeric" required="true"/>
        <cfset variables.instance.category_id = arguments.category_id />
    </cffunction>

    <cffunction name="getCategory_id" access="public" output="false" returntype="string">
        <cfreturn variables.instance.category_id />
    </cffunction>

    <cffunction name="setName" access="public" output="false" returntype="void">
        <cfargument name="name" type="string" required="true"/>
        <cfset variables.instance.name = arguments.name />
    </cffunction>

    <cffunction name="getName" access="public" output="false" returntype="string">
        <cfreturn variables.instance.name />
    </cffunction>

</cfcomponent>