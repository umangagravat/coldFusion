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

<DOCTYPE html>
<html>
    <head>
        <title>Update Form</title>
    </head>
    <style>
        *{
            margin :0px;
            padding : 0px;
        }
        .content{
            width : 100%;
            height :100%;
            display : flex;
            align-items : center;
            justify-content : center;
        }
        .status{
            width : 50%;
            height : 50%;
            background-color:  #e1e1e1;
            box-shadow : 0 6px 15px 0 black;
        }

        .msg{
            background-color:  #002c6a;
            text-align : center;
            color : white;
            padding : 10px;
            font-family: 'Franklin Gothic Medium';
        }
        
        .info{
            background-color:#fd9b28;
            height : 5%;
        }

        .record p{
            text-align : center;
            padding-top: 50px;
            font-size : 1.5rem;
            font-family : Verdana, sans-serif;  
        }

        .button{
            padding-top : 50px;
            display : flex;
            justify-content : center;
        }

        .button a{
            text-decoration : none;
            border : 1px solid #fd9b28;
            background-color : #fd9b28;
            color : white;
            padding : 5px;
            margin-left : 15px;
        }
    </style>
    <body>
        <cfoutput>
            <div class=content>
                <div class="status">
                    <div class="msg">
                        <p>RECORD STATUS</p>
                    </div>

                    <div class="info"></div>

                    <div class="record">
                        <p>Record Update Successfully</p>
                    </div>

                    <div class="button">
                        <a href="form.cfm">New form</a>
                        <a href="update.cfm">Update form</a>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>