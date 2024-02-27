<!--- <cfdump var = "#url.firstName#" label="Fisrt Name"/>
<cfdump var = "#url.lastName#" label="Last Name" />
<cfdump var = "#url.email#" abort="true"/>
<cfdump var = "#fullName#" /> --->
<DOCTYPE html>
<html>
    <head>
        <title>Information</title>        
    </head>
    <style>

        th{
            padding : 10px;
        }

        tr:first-child{
            background-color : rgb(207, 235, 228);    
        }

        td{
            width : 200px;
            text-align : center;
        }
    </style>
    <body>
        <cfoutput>
            <table cellspacing = "0" border="1px solid black">
                <tr>
                    <th colspan = "2">Student Information</th>   
                </tr>
                <tr>
                    <th>First Name</th>
                    <td>#url.firstName#</td>
                </tr>
                <tr>
                    <th>Last Name</th>
                    <td>#url.lastName#</td>
                </tr>
                <tr>
                    <th>Full Name</th>
                    <td>#url.firstName# #url.lastName#</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>#url.email#</td>
                </tr    
            </table>
        </cfoutput>
    </body>
</html>