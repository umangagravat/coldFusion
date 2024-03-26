<cfcomponent displayname="cityGateway">

    <cffunction name="get" output="false" access="public" returntype="city">
        <cfargument name="id" type="numeric" required="true" />

        <cfset var city = new cityDAO().read(id = arguments.id) />
        
        <cfreturn city />
    </cffunction>

    <cffunction name="save" output="false" access="public" returntype="city">
        <cfargument name="city" type="city" required="true" />

        <cfset var qCity = get(arguments.city.getCity_id()) />

        <cfif qCity.recordcount eq 0>
            <cfreturn new cityDAO().insert(arguments.city) />
        <cfelse>
            <cfreturn new cityDAO().update(arguments.city) />            
        </cfif>
    </cffunction>

    <cffunction name="getAllCities" output="false" access="public" returntype="query">

        <cfset var qCities = "" />
        <cfquery name="qCities" datasource="sakila">
            SELECT 	c.city_id, c.city, country.country
            FROM 	sakila.city c
                        inner join country on country.country_id = c.country_id
            order by country.country, c.city;
        </cfquery>

        <cfreturn qCities />
    </cffunction>

</cfcomponent>