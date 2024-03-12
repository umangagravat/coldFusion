<cfquery datasource="jobapps">

    insert into jobapplication (firstName, lastName, gender, birthDate, email, phone, address1, address2, city, zipCode, position, positionOther, skill, skillOther, empStatus, time, refFirstName, refLastName, refMail)
    values 
    (
        <cfqueryparam value="#url.firstName#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.lastName#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.gender#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.bod#" cfsqltype="cf_sql_date" />,
        <cfqueryparam value="#url.email#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.phone#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.line1#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.line2#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.city#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.zip#" cfsqltype="cf_sql_int" />,
        <cfqueryparam value="#url.position#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.otherpos#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.skill#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.otherSkil#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.employee#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.time#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.fReName#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.LReName#" cfsqltype="cf_sql_varchar" />, 
        <cfqueryparam value="#url.reEmail#" cfsqltype="cf_sql_varchar" />
    )
</cfquery>

<!--- <cflocation url="/edit.cfm?id=#form.id#&message=Record Updated successfully" /> --->

<!--- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/assets/style.css">    
</head>
<body>
    <cfoutput>
        <table border="1" cellpadding="5" cellspacing="0" width="100%">
            <tr>
                <td>First_Name</td>
                <td>Last_Name</td>
                <td>Gender</td>
                <td>Birth Date</td>
                <td>Email</td>
                <td>Phone</td>
                <td>Address Line1</td>
                <td>Address Line2</td>
                <td>City</td>
                <td>Zip Code</td>
                <td>Position</td>
                <td>Position Other</td>
                <td>Skill</td>
                <td>Skill Other</td>
                <td>Employee Status</td>
                <td>Time</td>
                <td>Reference_FirstName</td>
                <td>Reference_LastName</td>
                <td>Reference_Mail</td>
            </tr>
            <cfloop query="variables.qjobapplication">
                <tr>
                    <td>#variables.qjobapplication.firstName#</td>
                    <td>#variables.qjobapplication.lastName#</td>
                    <td>#variables.qjobapplication.gender#</td>
                    <td>#variables.qjobapplication.birthDate#</td>
                    <td>#variables.qjobapplication.email#</td>
                    <td>#variables.qjobapplication.phone#</td>
                    <td>#variables.qjobapplication.address1#</td>
                    <td>#variables.qjobapplication.address2#</td>
                    <td>#variables.qjobapplication.city#</td>
                    <td>#variables.qjobapplication.zipCode#</td>
                    <td>#variables.qjobapplication.position#</td>
                    <td>#variables.qjobapplication.positionOther#</td>
                    <td>#variables.qjobapplication.skill#</td>
                    <td>#variables.qjobapplication.skillOther#</td>
                    <td>#variables.qjobapplication.empStatus#</td>
                    <td>#variables.qjobapplication.time#</td>
                    <td>#variables.qjobapplication.refFirstName#</td>
                    <td>#variables.qjobapplication.refLastName#</td>
                    <td>#variables.qjobapplication.refMail#</td>
                    <!--- <td>#dateTimeFormat(variables.qAddress.last_update, "dd/mm/yyyy HH:MM:ss tt")#</td> --->
                </tr>
            </cfloop>
        </table>
    </cfoutput>
</body>
</html> --->





