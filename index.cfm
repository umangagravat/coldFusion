<cfset variables.firstName = "umang" />
<cfset variables.lastName = "agravat" />
<cfset variables.email= "agrava@gmail.com" />

<cfquery datasource="jobapps">
    update isummation
         set firstName = <cfqueryparam value="#form.firstName#" cfsqltype="cf_sql_varchar" />,
             lastname = <cfqueryparam value="#form.lastName#" cfsqltype="cf_sql_varchar" />,
             email = <cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar" />
     where id = <cfqueryparam value="#form.id#" cfsqltype="cf_sql_integer" />

<cflocation url="/edit.cfm?id=#form.id#&message=Record Updated successfully" /> 

    insert into isummation (firstName, lastName, email)
    values 
    (
        <cfqueryparam value="#url.firstName#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.lastName#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.email#" cfsqltype="cf_sql_varchar" />,
    )
</cfquery>


<cfabort />
<!DOCTYPE html>
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
                <td>Email</td>
                <td>Gender</td>
            </tr>
            <cfloop query="variables.qIsummation">
                <tr>
                    <td>#variables.qIsummation.firstName#</td>
                    <td>#variables.qIsummation.lastName#</td>
                    <td>#variables.qIsummation.email#</td>
                    <td>#variables.qIsummation.gender#</td>
                    <!--- <td>#dateTimeFormat(variables.qAddress.last_update, "dd/mm/yyyy HH:MM:ss tt")#</td> --->
                </tr>
            </cfloop>
        </table>
    </cfoutput>
</body>
</html>






<!--- <!--- <cfparam name="url.name" default=""> --->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/assets/style.css">    
</head>
<body>
    <div class="main">
            <cfinclude template="/includes/header.cfm" />
        <div class="navbar">
            <!--- <cfset url.name = "" /> --->
            <cfinclude template="/includes/sidebar.cfm" />
            <div class="task">
                <!--- <cflocation url="/table1.cfm" addtoken="false" />     --->
            </div>
        </div>
        <cfinclude template="/includes/footer.cfm" />        
    </div>
</div>
</body>
</html> --->