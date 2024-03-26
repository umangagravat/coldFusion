<cfparam name="url.page" default="1"/>
<cfparam name="url.maxRows" default="10" />

<cfset variables.utility = new components.utility() />
<cfset variables.qCustomers = new components.customerGateway().customerList(
        page = url.page,
        maxRows = url.maxRows       
    )/> 

<DOCTYPE html>
<html>
    <head>
        <title>customer</title>
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
                    <a href="add-edit.cfm" class="text-decoration-none bg-secondary p-2 text-white r-2 rounded">New Customer</a>
                </div>

                <div aria-label="breadcrumb">
                    <ol class="breadcrumb p-4">
                    <li class="breadcrumb-item"><a href="/dashboard.cfm">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Customer</li>
                    </ol>
                </div>
            </div>

            <div class="p-4">
                <cfset variables.columns = [
                    {
                        "label": "ID",
                        "fieldName": "customer_id",
                        "classes": "text-center"
                    },
                    {
                        "label": "First Name",
                        "fieldName": "first_name",
                        "classes": "text-center"
                    },
                    {
                        "label": "Last Name",
                        "fieldName": "last_name",
                        "classes": "text-center"
                    },
                    {
                        "label": "Email",
                        "fieldName": "email",
                        "classes": "text-center"
                    },
                    {
                        "label": "Actions",
                        "classes": "text-center",
                        "content": (customer) => {
                            var edit = '<a href="add-edit.cfm?id=#customer.customer_id#">Edit</a>';
                            <!--- var delete = '<a href="delete.cfm?id=#customer.customer_id#" target="_blank">Delete</a>'; --->
                            return edit;
                        }
                    }
                ] />

                 <cfset variables.utility.PrintTable(
                    columns = variables.columns,
                    qData = variables.qCustomers
                )/>
            </div> 

            <input type="hidden" name="page" value="#url.page#" />
            <div class="p-3 d-flex justify-content-around">
                <button class="p-2 btn btn-secondary" type="button" onclick="previousPage()">Previous Page</button>
                <button class="p-2 btn btn-secondary" type="button" onclick="nextPage()">Next Page</button>
            </div>         
        </cfoutput>
    </body>
</html>

