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
                            <p>Successfully Form Fill-Up</p>
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





