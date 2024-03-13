<cfoutput>
<cfif form.id EQ 0> 
     #insertRecord(
           firstName =  #form.firstName#, 
           lastName =  #form.lastName#, 
           gender =  #form.gender#,
           bod =  #form.bod#, 
           email =  #form.email#, 
           phone =  #form.phone#, 
           address1 =  #form.line1#, 
           address2 =  #form.line2#, 
           city =  #form.city#, 
           zipCode =   #form.zip#, 
           position =  #form.position#, 
           posOther =  #form.otherpos#, 
           skill =  #form.skill#, 
           skillOther =  #form.otherSkil#, 
           emp =  #form.employee#, 
           time =  #form.time#, 
           fRefName =  #form.fReName#, 
           lRefName =  #form.LReName#, 
           refMail =  #form.reEmail# 
     )#
    <cfset variables.message = "Record inserted successfully" />

<cfelseif form.id GT 0 >

     #updateRecord(
           id = #form.id#,
           firstName =  #form.firstName#, 
           lastName =  #form.lastName#, 
           gender =  #form.gender#,
           bod =  #form.bod#, 
           email =  #form.email#, 
           phone =  #form.phone#, 
           address1 =  #form.line1#, 
           address2 =  #form.line2#, 
           city =  #form.city#, 
           zipCode =   #form.zip#, 
           position =  #form.position#, 
           posOther =  #form.otherpos#, 
           skill =  #form.skill#, 
           skillOther =  #form.otherSkil#, 
           emp =  #form.employee#, 
           time =  #form.time#, 
           fRefName =  #form.fReName#, 
           lRefName =  #form.LReName#, 
           refMail =  #form.reEmail# 
     )#
    <cfset variables.message = "Record updated successfully" />

</cfif>
</cfoutput>

<cflocation addtoken="false" url="job-add-edit.cfm?id=#form.id#&message#variables.message#" />

<cffunction name="insertRecord" access="public">

    <cfargument name="firstName" required="true" />  
    <cfargument name="lastName" required="true" /> 
    <cfargument name="gender" required="true" /> 
    <cfargument name="bod" required="true" /> 
    <cfargument name="email" required="true" /> 
    <cfargument name="phone" required="true" /> 
    <cfargument name="address1" required="true" /> 
    <cfargument name="address2" required="true" /> 
    <cfargument name="city" required="true" /> 
    <cfargument name="zipCode" required="true" /> 
    <cfargument name="position" required="true" /> 
    <cfargument name="posOther" required="true" /> 
    <cfargument name="skill" required="true" /> 
    <cfargument name="skillOther" required="true" /> 
    <cfargument name="emp" required="true" /> 
    <cfargument name="time" required="true" /> 
    <cfargument name="fRefName" required="true" /> 
    <cfargument name="lRefName" required="true" /> 
    <cfargument name="refMail" required="true" /> 

    <cfquery datasource="jobapps">
        insert into jobapplication (firstName, lastName, gender, birthDate, email, phone, address1, address2, city, zipCode, position, positionOther, skill, skillOther, empStatus, time, refFirstName, refLastName, refMail)
        values 
        (
        <cfqueryparam value="#arguments.firstName#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.lastName#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.gender#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.bod#" cfsqltype="cf_sql_date" />,
        <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.phone#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.address1#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.address2#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.city#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.zipCode#" cfsqltype="cf_sql_int" />,
        <cfqueryparam value="#arguments.position#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.posOther#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.skill#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.skillOther#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.emp#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.time#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.fRefName#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#arguments.lRefName#" cfsqltype="cf_sql_varchar" />, 
        <cfqueryparam value="#arguments.refMail#" cfsqltype="cf_sql_varchar" />
        )
    </cfquery>
</cffunction>

<cffunction name="updateRecord" access="public">
    <cfargument name="id" required="true" />
    <cfargument name="firstName" required="true" />  
    <cfargument name="lastName" required="true" /> 
    <cfargument name="gender" required="true" /> 
    <cfargument name="bod" required="true" /> 
    <cfargument name="email" required="true" /> 
    <cfargument name="phone" required="true" /> 
    <cfargument name="address1" required="true" /> 
    <cfargument name="address2" required="true" /> 
    <cfargument name="city" required="true" /> 
    <cfargument name="zipCode" required="true" /> 
    <cfargument name="position" required="true" /> 
    <cfargument name="posOther" required="true" /> 
    <cfargument name="skill" required="true" /> 
    <cfargument name="skillOther" required="true" /> 
    <cfargument name="emp" required="true" /> 
    <cfargument name="time" required="true" /> 
    <cfargument name="fRefName" required="true" /> 
    <cfargument name="lRefName" required="true" /> 
    <cfargument name="refMail" required="true" /> 

    <cfquery datasource="jobapps">
    update jobapplication
         set firstName = <cfqueryparam value="#arguments.firstName#" cfsqltype="cf_sql_varchar" />,
             lastname = <cfqueryparam value="#arguments.lastName#" cfsqltype="cf_sql_varchar" />,
             gender = <cfqueryparam value="#arguments.gender#" cfsqltype="cf_sql_varchar" />,
             birthDate = <cfqueryparam value="#arguments.bod#" cfsqltype="cf_sql_date" />,
             email = <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar" />,
             phone = <cfqueryparam value="#arguments.phone#" cfsqltype="cf_sql_varchar" />,
             address1 = <cfqueryparam value="#arguments.address1#" cfsqltype="cf_sql_varchar" />,
             address2 = <cfqueryparam value="#arguments.address2#" cfsqltype="cf_sql_varchar" />,
             city = <cfqueryparam value="#arguments.city#" cfsqltype="cf_sql_varchar" />,
             zipCode = <cfqueryparam value="#arguments.zipCode#" cfsqltype="cf_sql_int" />,
             position = <cfqueryparam value="#arguments.position#" cfsqltype="cf_sql_varchar" />,
             positionOther = <cfqueryparam value="#arguments.posOther#" cfsqltype="cf_sql_varchar" />,
             skill = <cfqueryparam value="#arguments.skill#" cfsqltype="cf_sql_varchar" />,
             skillOther = <cfqueryparam value="#arguments.skillOther#" cfsqltype="cf_sql_varchar" />,
             empStatus = <cfqueryparam value="#arguments.emp#" cfsqltype="cf_sql_varchar" />,
             time = <cfqueryparam value="#arguments.time#" cfsqltype="cf_sql_varchar" />,
             refFirstName = <cfqueryparam value="#arguments.fRefName#" cfsqltype="cf_sql_varchar" />,
             refLastName = <cfqueryparam value="#arguments.lRefName#" cfsqltype="cf_sql_varchar" />, 
             refMail = <cfqueryparam value="#arguments.refMail#" cfsqltype="cf_sql_varchar" />
     where id = <cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer" />
</cfquery>
</cffunction> 