<cfset variables.countryGateway = new components.countryGateway() />
<cfset variables.country = variables.countryGateway.get(id = val(form.id)) />
<cfset variables.country.setName(form.countryName) />

<cfset variables.country = variables.countryGateway.save(variables.country) />

<cfset variables.message = form.id EQ 0 ? "Record_inserted_successfully" : "Record_updated_successfully" >

<cflocation addtoken="false" url="index.cfm?message=#variables.message#" />