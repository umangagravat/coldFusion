<cfparam name="url.page" default="1"/>
<cfparam name="url.maxRows" default="10" />

<cfset variables.qAddress = new components.addressGateway().addressList(
        page = url.page,
        maxRows = url.maxRows       
    )/>

<DOCTYPE html>
<html>
    <head>
        <title>Address</title>
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
                    <a href="add-edit.cfm" class="text-decoration-none bg-secondary p-2 text-white r-2 rounded">New Address</a>
                </div>

                <div aria-label="breadcrumb">
                    <ol class="breadcrumb p-4">
                    <li class="breadcrumb-item"><a href="/dashboard.cfm">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Address</li>
                    </ol>
                </div>
            </div>

           

            <div class="p-4">
                <table class="table table-bordered table-striped text-center" border="1" cellspacing="0" cellpadding="3" width="100%">
                    <tr>
                        <th>Address_id</th>
                        <th>Address</th>
                        <th>Address2</th>
                        <th>District</th>
                        <th>Postal_code</th>
                        <th>Phone</th>
                        <th>Action</th>
                    </tr>
                    <cfloop query="variables.qAddress">
                        <tr>
                            <td>#variables.qAddress.address_id#</td>
                            <td>#variables.qAddress.address#</td>
                            <td>#variables.qAddress.address2#</td>
                            <td>#variables.qAddress.district#</td>
                            <td>#variables.qAddress.postal_code#</td>
                            <td>#variables.qAddress.phone#</td>
                            <td>
                                <a class="p-2 btn btn-secondary" href="add-edit.cfm?id=#variables.qAddress.address_id#">Edit</a>
                            </td>
                        </tr>
                    </cfloop>
                </table>

                <input type="hidden" name="page" value="#url.page#" />
                <div class="p-3 d-flex justify-content-around">
                    <button class="p-2 btn btn-secondary" type="button" onclick="previousPage()">Previous Page</button>
                    <button class="p-2 btn btn-secondary" type="button" onclick="nextPage()">Next Page</button>
                </div>
            </div>
        </cfoutput>
    </body>
</html>