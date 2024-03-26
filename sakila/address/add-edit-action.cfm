
<cfset variables.addressGateway = new components.addressGateway()/>
<cfset variables.address = variables.addressGateway.get(id = val(form.id)) />
<cfset variables.address.setAddress(form.add1) />
<cfset variables.address.setAddress2(form.add2) />
<cfset variables.address.setDistrict(form.dis) />
<cfset variables.address.setCity_id(form.cityId) />
<cfset variables.address.setPostal_code(form.postCode) />
<cfset variables.address.setPhone(form.phone) />

<cfset variables.address = variables.addressGateway.save(variables.address) />

<cfset variables.message = form.id EQ 0 ? "Record_inserted_successfully" : "Record_updated_successfully" />

<cflocation addtoken="false" url="index.cfm?message=#variables.message#" />
