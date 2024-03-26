
<cfset variables.actorGateway = new components.actorGateway() />
<cfset variables.actor = variables.actorGateway.get(id = val(form.id)) />
<cfset variables.actor.setFirst_name(form.fname) />
<cfset variables.actor.setLast_name(form.lname) />
<cfset variables.actor.setEmail(form.email) />
<cfset variables.actor.setPassword(form.password) />

<cfset variables.actor = variables.actorGateway.save(variables.actor) />

<cfset variables.message = form.id EQ 0 ? "Record_inserted_successfully" : "Record_updated_successfully" >

<cflocation addtoken="false" url="index.cfm?message=#variables.message#" />