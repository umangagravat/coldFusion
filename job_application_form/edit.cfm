<cfquery datasource="jobapps">
    update jobapplication
         set firstName = <cfqueryparam value="#form.firstName#" cfsqltype="cf_sql_varchar" />,
             lastname = <cfqueryparam value="#form.lastName#" cfsqltype="cf_sql_varchar" />,
             gender = <cfqueryparam value="#form.gender#" cfsqltype="cf_sql_varchar" />,
             birthDate = <cfqueryparam value="#form.bod#" cfsqltype="cf_sql_date" />,
             email = <cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar" />,
             phone = <cfqueryparam value="#form.phone#" cfsqltype="cf_sql_varchar" />,
             address1 = <cfqueryparam value="#form.line1#" cfsqltype="cf_sql_varchar" />,
             address2 = <cfqueryparam value="#form.line2#" cfsqltype="cf_sql_varchar" />,
             city = <cfqueryparam value="#form.city#" cfsqltype="cf_sql_varchar" />,
             zipCode = <cfqueryparam value="#form.zip#" cfsqltype="cf_sql_int" />,
             position = <cfqueryparam value="#form.position#" cfsqltype="cf_sql_varchar" />,
             positionOther = <cfqueryparam value="#form.otherpos#" cfsqltype="cf_sql_varchar" />,
             skill = <cfqueryparam value="#form.skill#" cfsqltype="cf_sql_varchar" />,
             skillOther = <cfqueryparam value="#form.otherSkil#" cfsqltype="cf_sql_varchar" />,
             empStatus = <cfqueryparam value="#form.employee#" cfsqltype="cf_sql_varchar" />,
             time = <cfqueryparam value="#form.time#" cfsqltype="cf_sql_varchar" />,
             refFirstName = <cfqueryparam value="#form.fReName#" cfsqltype="cf_sql_varchar" />,
             refLastName = <cfqueryparam value="#form.LReName#" cfsqltype="cf_sql_varchar" />, 
             refMail = <cfqueryparam value="#form.reEmail#" cfsqltype="cf_sql_varchar" />
     where id = <cfqueryparam value="#form.id#" cfsqltype="cf_sql_integer" />
</cfquery>