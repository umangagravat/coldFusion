<cfcomponent displayname="customerBean">

    <cfproperty name="customer_id" type="numeric" default="0"/>
    <cfproperty name="first_name" type="string" default=""/>
    <cfproperty name="last_name" type="string" default=""/>
    <cfproperty name="email" type="string" default=""/>
    <cfproperty name="store" type="string" default=""/>
    <cfproperty name="address" type="string" default=""/>


    <cfset variables.instance = {} />

    <cffunction name="init" access="public" output="true" returntype="customer">

        <cfargument name="customer_id" type="numeric" default="0"/>
        <cfargument name="first_name" type="string" default=""/>
        <cfargument name="last_name" type="string" default=""/>
        <cfargument name="email" type="string" default=""/>
        <cfargument name="store" type="string" default=""/>
        <cfargument name="address" type="string" default=""/>
  
        
        <cfset this.setCustomer_id(arguments.Customer_id) />
        <cfset this.setFirst_name(arguments.first_name) />
        <cfset this.setLast_name(arguments.last_name) />
        <cfset this.setEmail(arguments.email) />
        <cfset this.setStore(arguments.store) />
        <cfset this.setAddress(arguments.address) />
     
        <cfreturn this />
    </cffunction>

    <cffunction name="setCustomer_id" access="public" output="false" returntype="void">
        <cfargument name="customer_id" type="numeric" required="true"/>
        <cfset variables.instance.customer_id = arguments.customer_id />
    </cffunction>

    <cffunction name="getCustomer_id" access="public" output="false" returntype="string">
        <cfreturn variables.instance.customer_id />
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

    <cffunction name="setStore" access="public" output="false" returntype="void">
        <cfargument name="store" type="string" required="true" />
        <cfset variables.instance.store = arguments.store />
    </cffunction>

    <cffunction name="getStore" access="public" output="false" returntype="string">
        <cfreturn variables.instance.store />
    </cffunction>

    <cffunction name="setAddress" access="public" output="false" returntype="void">
        <cfargument name="address" type="string" required="true" />
        <cfset variables.instance.address = arguments.address />
    </cffunction>

    <cffunction name="getAddress" access="public" output="false" returntype="string">
        <cfreturn variables.instance.address />
    </cffunction>

</cfcomponent>

