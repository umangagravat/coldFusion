
<cfset variables.customerGateway = new components.customerGateway() />
<cfset variables.customer = variables.customerGateway.get(id = val(form.id)) />
<cfset variables.customer.setFirst_name(form.fname) />
<cfset variables.customer.setLast_name(form.lname) />
<cfset variables.customer.setEmail(form.email) />
<cfset variables.customer.setStore(form.store) />
<cfset variables.customer.setAddress(form.address) />

<cfset variables.customer = variables.customerGateway.save(variables.customer) />

<cfset variables.message = form.id EQ 0 ? "Record_inserted_successfully" : "Record_updated_successfully" />

<cflocation addtoken="false" url="index.cfm?message=#variables.message#" /> 