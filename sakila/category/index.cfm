<cfparam name="url.page" default="1" />
<cfparam name="url.max_row" default="10" />

<cfset variables.utility = new components.utility() />
<cfset variables.categoryGateway = new components.categoryGateway() />
<cfset variables.qCategories = variables.categoryGateway.categoryList(
        page = url.page,
        maxRows = url.max_row       
    )/> 


<DOCTYPE html>
<html>
    <head>
        <title>category</title>
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
                    <a href="add-edit.cfm" class="text-decoration-none bg-secondary p-2 text-white r-2 rounded">New Category</a>
                </div>

                <div aria-label="breadcrumb">
                    <ol class="breadcrumb p-4">
                    <li class="breadcrumb-item"><a href="/dashboard.cfm">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Category</li>
                    </ol>
                </div>
            </div>

            <div class="p-4">

                <cfset variables.columns = [
                    {
                        "label" : "ID",
                        "fieldName" : "category_id",
                        "classes" : "text-center"
                    },
                    {
                        "label" : "Name",
                        "fieldName" : "name",
                        "classes" : "text-center"
                    },
                    {
                        "label" : "Actions",
                        "classes" : "text-center",
                        "content" : (category) => {
                            var edit = '<a href="add-edit.cfm?id=#category.category_id#">Edit</a>';
                            return edit;
                        }
                    }
                ] />

                <cfset variables.utility.PrintTable(
                    columns = variables.columns,
                    qData = variables.qCategories
                ) />
               </div>

               <input type="hidden" name="page" value="#url.page#" />
                <div class="p-3 d-flex justify-content-around">
                    <button class="p-2 btn btn-secondary" type="button" onclick="previousPage()">Previous Page</button>
                    <button class="p-2 btn btn-secondary" type="button" onclick="nextPage()">Next Page</button>
                </div> 

        </cfoutput>
    </body>
</html>