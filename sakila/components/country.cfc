<cfcomponent displayname="countryBean" output="true">
    <cfproperty name="country_id" type="numeric" default="0"/>
    <cfproperty name="country" type="string" default=""/>

    <cfset variables.instance = {} />

    <cffunction name="init" access="public" output="true" returntype="country">

        <cfargument name="country_id" type="numeric" default="0"/>
        <cfargument name="country" type="string" default=""/>

        <cfset this.setCountry_id(arguments.country_id) />
        <cfset this.setName(arguments.country) />

        <cfreturn this />
    </cffunction>

    <cffunction name="setCountry_id" access="public" output="false" returntype="void">
        <cfargument name="country_id" type="numeric" required="true"/>
        <cfset variables.instance.country_id = arguments.country_id />
    </cffunction>

    <cffunction name="getCountry_id" access="public" output="false" returntype="string">
        <cfreturn variables.instance.country_id />
    </cffunction>

    <cffunction name="setName" access="public" output="false" returntype="void">
        <cfargument name="country" type="string" required="true"/>
        <cfset variables.instance.country = arguments.country />
    </cffunction>

    <cffunction name="getName" access="public" output="false" returntype="string">
        <cfreturn variables.instance.country />
    </cffunction>

</cfcomponent>