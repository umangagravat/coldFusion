<cfset variables.categoryGateway = new components.categoryGateway() />
<cfset variables.category = variables.categoryGateway.get(id = val(form.id)) />
<cfset variables.category.setName(form.categoryName) />

<cfset variables.category = variables.categoryGateway.save(variables.category) />

<cfset variables.message = form.id EQ 0 ? "Record_inserted_successfully" : "Record_updated_successfully" >

<cflocation addtoken="false" url="index.cfm?message=#variables.message#" />