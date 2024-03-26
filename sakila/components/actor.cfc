<cfcomponent displayname="actorBean">
    <cfproperty name="actor_id" type="numeric" default="0"/>
    <cfproperty name="first_name" type="string" default=""/>
    <cfproperty name="last_name" type="string" default=""/>
    <cfproperty name="email" type="string" default=""/>
    <cfproperty name="password" type="string" default="" />

    <cfset variables.instance = {} />

    <cffunction name="init" access="public" output="true" returntype="actor">

        <cfargument name="actor_id" type="numeric" default="0"/>
        <cfargument name="first_name" type="string" default=""/>
        <cfargument name="last_name" type="string" default=""/>
        <cfargument name="email" type="string" default=""/>
        <cfargument name="password" type="string" default="" />
        
        <cfset this.setActor_id(arguments.actor_id) />
        <cfset this.setFirst_name(arguments.first_name) />
        <cfset this.setLast_name(arguments.last_name) />
        <cfset this.setEmail(arguments.email) />
        <cfset this.setPassword(arguments.password) />
        
        <cfreturn this />
    </cffunction>

    <cffunction name="setActor_id" access="public" output="false" returntype="void">
        <cfargument name="actor_id" type="numeric" required="true"/>
        <cfset variables.instance.actor_id = arguments.actor_id />
    </cffunction>

    <cffunction name="getActor_id" access="public" output="false" returntype="string">
        <cfreturn variables.instance.actor_id />
    </cffunction>

    <cffunction name="setFirst_name" access="public" output="false" returntype="void">
        <cfargument name="first_name" type="string" required="true" />
        <cfset variables.instance.first_name = arguments.first_name />
    </cffunction>

    <cffunction name="getFirst_name" access="public" output="false" returntype="string">
        <cfreturn variables.instance.first_name />
    </cffunction>

    <cffunction name="setLast_name" access="public" output="false" returntype="void">
        <cfargument name="last_name" type="string" required="true" />
        <cfset variables.instance.last_name = arguments.last_name />
    </cffunction>

    <cffunction name="getLast_name" access="public" output="false" returntype="string">
        <cfreturn variables.instance.last_name />
    </cffunction>

    <cffunction name="setEmail" access="public" output="false" returntype="void">
        <cfargument name="email" type="string" required="true" />
        <cfset variables.instance.email = arguments.email />
    </cffunction>

    <cffunction name="getEmail" access="public" output="false" returntype="string">
        <cfreturn variables.instance.email />
    </cffunction>

    <cffunction name="setPassword" access="public" output="false" returntype="void">
        <cfargument name="password" type="string" required="true" />
        <cfset variables.instance.password = arguments.password />
    </cffunction>

    <cffunction name="getPassword" access="public" output="false" returntype="string">
        <cfreturn variables.instance.password />
    </cffunction>

</cfcomponent>

