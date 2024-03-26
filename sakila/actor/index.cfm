<cfparam name="url.page" default="1"/>
<cfparam name="url.maxRows" default="10" />

<cfset variables.qActors = new components.actorGateway().actorList(
        page = url.page,
        maxRows = url.maxRows       
    )/> 

<DOCTYPE html>
    <html>
        <head>
            <title>actor_list</title>
            <cfinclude template="/includes/scripts.cfm" />
            <script> 
                <cfinclude template="/assets/helper.js" /> 
            </script>
        </head>
        <body>
            <cfoutput>
    
                <cfinclude template="/includes/header.cfm" />

                <div class="d-flex">
                    <div class="p-4">
                        <a href="add-edit.cfm" class="text-decoration-none bg-secondary p-2 text-white r-2 rounded">New Actor</a>
                    </div>

                    <div aria-label="breadcrumb">
                        <ol class="breadcrumb p-4">
                            <li class="breadcrumb-item"><a href="/dashboard.cfm">Home</a></li>
                            <li class="breadcrumb-item active " aria-current="page">Actors</li>
                        </ol>
                    </div>
                </div>

                <div class="p-4">

                    <table class="table table-bordered text-center table-striped" border="1" cellpadding="3" cellspacing="0" width="100%" >
                        <tr>
                            <th>ID</th>
                            <th>First_Name</th>
                            <th>Last_Name</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                        <cfloop query="variables.qActors">
                            <tr>
                                <td>#variables.qActors.actor_id#</td>
                                <td>#variables.qActors.first_name#</td>
                                <td>#variables.qActors.last_name#</td>
                                <td>#variables.qActors.email#</td>
                                <td>
                                    <a class="btn btn-secondary" href="add-edit.cfm?id=#variables.qActors.actor_id#">Edit</a>
                                </td>
                            </tr>
                        </cfloop>
                    </table>

                    <input type="hidden" name="page" value="#url.page#" />
                    <div class="p-4 d-flex justify-content-around">
                        <button class="p-2 btn btn-secondary" type="button" onclick="previousPage()">Previous Page</button>
                        <button class="p-2 btn btn-secondary" type="button" onclick="nextPage()">Next Page</button>
                    </div>
                </div>
            </cfoutput>
        </body>
    </html>