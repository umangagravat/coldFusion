<cfcomponent displayname="city">
    <cfproperty name="city_id" type="numeric" default="0" />
    <cfproperty name="city" type="string" default="" />
    <cfproperty name="country_id" type="numeric" default="0" />
    <cfproperty name="last_update" type="string" default="" />

    <cfset variables.instance = {} />
    
    <cffunction name="init" access="public" output="false" returntype="city">
        <cfargument name="city_id" type="numeric" default="0" />
        <cfargument name="city" type="string" default="" />
        <cfargument name="country_id" type="numeric" default="0" />
        <cfargument name="last_update" type="string" default="" />
        
        <cfset this.setcity_id(arguments.city_id)  />        
        <cfset this.setcity(arguments.city)  />        
        <cfset this.setcountry_id(arguments.country_id) />
        <cfset this.setlast_update(arguments.last_update) />        

        <cfreturn this />
    </cffunction>

    <cffunction name="setCity_id" access="public" output="false" returntype="city">
        <cfargument name="city_id" type="numeric" required="true" />
        <cfset variables.instance.city_id = arguments.city_id />
    </cffunction>

    <cffunction name="getCity_id" access="public" output="false" returntype="city">
        <cfreturn variables.instance.city_id />
    </cffunction>

    <cffunction name="setCity" access="public" output="false" returntype="city">
        <cfargument name="city" type="string" required="true" />
        <cfset variables.instance.city = arguments.city />
    </cffunction>

    <cffunction name="getCity" access="public" output="false" returntype="city">
        <cfreturn variables.instance.city />
    </cffunction>

    <cffunction name="setcountry_id" access="public" output="false" returntype="city">
        <cfargument name="country_id" type="numeric" required="true" />
        <cfset variables.instance.country_id = arguments.country_id />
    </cffunction>

    <cffunction name="getcountry_id" access="public" output="false" returntype="city">
        <cfreturn variables.instance.country_id />
    </cffunction>

    <cffunction name="setlast_update" access="public" output="false" returntype="city">
        <cfargument name="last_update" type="numeric" required="true" />
        <cfset variables.instance.last_update = arguments.last_update />
    </cffunction>

    <cffunction name="getlast_update" access="public" output="false" returntype="city">
        <cfreturn variables.instance.last_update />
    </cffunction>

</cfcomponent>