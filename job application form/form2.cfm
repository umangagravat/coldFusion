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
            <cfloop query="variables.qisummation">
                <tr>
                    <td>#variables.qisummation.firstName#</td>
                    <td>#variables.qisummation.lastName#</td>
                    <td>#variables.qisummation.gender#</td>
                    <td>#variables.qisummation.birthDate#</td>
                    <td>#variables.qisummation.email#</td>
                    <td>#variables.qisummation.phone#</td>
                    <td>#variables.qisummation.address1#</td>
                    <td>#variables.qisummation.address2#</td>
                    <td>#variables.qisummation.city#</td>
                    <td>#variables.qisummation.zipCode#</td>
                    <td>#variables.qisummation.position#</td>
                    <td>#variables.qisummation.positionOther#</td>
                    <td>#variables.qisummation.skill#</td>
                    <td>#variables.qisummation.skillOther#</td>
                    <td>#variables.qisummation.empStatus#</td>
                    <td>#variables.qisummation.time#</td>
                    <td>#variables.qisummation.refFirstName#</td>
                    <td>#variables.qisummation.refLastName#</td>
                    <td>#variables.qisummation.refMail#</td>
                    <!--- <td>#dateTimeFormat(variables.qAddress.last_update, "dd/mm/yyyy HH:MM:ss tt")#</td> --->
                </tr>
            </cfloop>
        </table>
    </cfoutput>
</body>
</html> --->

<!--- <cfset url.id = 61 />
<cfset url.firstName = "umang" />
<cfset url.lastName = "agravat" />
<cfset url.gender = "male" />
<cfset url.bod = "2002-08-07" />
<cfset url.email = "agravat@gmail.com" />
<cfset url.phone = "8320343523" />
<cfset url.line1 = "202, sivalik apartment"/>
<cfset url.line2 = "vastral"/>
<cfset url.city = "ahmedabad" />
<cfset url.zip = "520034" />
<cfset url.position = "frontend developer" />
<cfset url.otherpos = "" />
<cfset url.skill = "react.js" />
<cfset url.otherSkil = "" />
<cfset url.employee = "student" />
<cfset url.time = "full time" />

<cfquery datasource="jobapps">
    update isummation
         set firstName = <cfqueryparam value="#url.firstName#" cfsqltype="cf_sql_varchar" />,
             lastname = <cfqueryparam value="#url.lastName#" cfsqltype="cf_sql_varchar" />,
             gender = <cfqueryparam value="#url.gender#" cfsqltype="cf_sql_varchar" />,
             birthDate = <cfqueryparam value="#url.bod#" cfsqltype="cf_sql_date" />,
             email = <cfqueryparam value="#url.email#" cfsqltype="cf_sql_varchar" />,
             phone = <cfqueryparam value="#url.phone#" cfsqltype="cf_sql_varchar" />,
             address1 = <cfqueryparam value="#url.line1#" cfsqltype="cf_sql_varchar" />,
             address2 = <cfqueryparam value="#url.line2#" cfsqltype="cf_sql_varchar" />,
             city = <cfqueryparam value="#url.city#" cfsqltype="cf_sql_varchar" />,
             zipCode = <cfqueryparam value="#url.zip#" cfsqltype="cf_sql_int" />,
             position = <cfqueryparam value="#url.position#" cfsqltype="cf_sql_varchar" />,
             positionOther = <cfqueryparam value="#url.otherpos#" cfsqltype="cf_sql_varchar" />,
             skill = <cfqueryparam value="#url.skill#" cfsqltype="cf_sql_varchar" />,
             skillOther = <cfqueryparam value="#url.otherSkil#" cfsqltype="cf_sql_varchar" />,
             empStatus = <cfqueryparam value="#url.employee#" cfsqltype="cf_sql_varchar" />,
             time = <cfqueryparam value="#url.time#" cfsqltype="cf_sql_varchar" />
     where id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer" />
</cfquery> --->



