<cfquery datasource="jobapps" name="variables.qJobApplication">
    SELECT *
    FROM jobapplication

    
</cfquery>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/assets/style.css">
    <style>
        a{
            text-decoration : none;
            border : 1px solid black;
            padding : 5px;
            color : green;   
        }

        .add{
            margin: 20px;
            width : 100
        }
    </style>    
</head>
<body>
    <cfoutput>

        <div class="add">
            <a  href="job-add-edit.cfm" target="blank">New Application</a>
        </div>

        <table border="1" cellpadding="5" cellspacing="0" width="100%">
            <tr>
                <td>Id</td>
                <td>First_Name</td>
                <td>Last_Name</td>
                <td>Gender</td>
                <td>Birth_Date</td>
                <td>Email</td>
                <td>Phone</td>
                <td>Address_Line1</td>
                <td>Address_Line2</td>
                <td>City</td>
                <td>Zip_Code</td>
                <td>Position</td>
                <td>Position_Other</td>
                <td>Skill</td>
                <td>Skill_Other</td>
                <td>Employee_Status</td>
                <td>Time</td>
                <td>Reference_FirstName</td>
                <td>Reference_LastName</td>
                <td>Reference_Mail</td>
                <td>Actions</td>
            </tr>
            <cfloop query="variables.qJobApplication">
                <tr>
                    <td>#variables.qJobApplication.id#</td>
                    <td>#variables.qJobApplication.firstName#</td>
                    <td>#variables.qJobApplication.lastName#</td>
                    <td>#variables.qJobApplication.gender#</td>
                    <td>#dateTimeFormat(variables.qJobApplication.birthDate, "dd/mm/yyyy")#</td>
                    <td>#variables.qJobApplication.email#</td>
                    <td>#variables.qJobApplication.phone#</td>
                    <td>#variables.qJobApplication.address1#</td>
                    <td>#variables.qJobApplication.address2#</td>
                    <td>#variables.qJobApplication.city#</td>
                    <td>#variables.qJobApplication.zipCode#</td>
                    <td>#variables.qJobApplication.position#</td>
                    <td>#variables.qJobApplication.positionOther#</td>
                    <td>#variables.qJobApplication.skill#</td>
                    <td>#variables.qJobApplication.skillOther#</td>
                    <td>#variables.qJobApplication.empStatus#</td>
                    <td>#variables.qJobApplication.time#</td>
                    <td>#variables.qJobApplication.refFirstName#</td>
                    <td>#variables.qJobApplication.refLastName#</td>
                    <td>#variables.qJobApplication.refMail#</td> 
                    <td>
                        <a href="job-add-edit.cfm?id=#variables.qJobApplication.id#" target="blank">Edit</a>
                    </td>
                </tr>
            </cfloop>
        </table>

    </cfoutput>
</body>
</html>