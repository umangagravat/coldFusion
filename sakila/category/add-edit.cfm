<cfparam name="url.id" default="0"/>

<cfparam name="form.categoryName" default="" />

<cfif val(url.id)>

    <cfset variables.category = new components.categoryGateway().get(id = url.id) />
    <cfset form.categoryName = variables.category.getName() />

</cfif>

<DOCTYPE html>
    <html>
        <head>
            <title>Category</title>
            <cfinclude template="/includes/scripts.cfm" />
            <script>
                <cfinclude template="/assets/helper.js" />
            </script>
        </head>
        <body>
            <cfoutput>

                <cfinclude template="/includes/header.cfm" />

                <div aria-label="breadcrumb">
                    <ol class="breadcrumb ms-5 mt-2">
                    <li class="breadcrumb-item"><a href="/dashboard.cfm">Home</a></li>
                    <li class="breadcrumb-item"><a href="index.cfm">Category</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Action</li>
                    </ol>
                </div>

                <form name="frmCategory" action="add-edit-action.cfm" id="frmCategory" method="POST">
                    <div class="d-flex justify-content-center align-items-center h-75">
                        <div class="bg-secondary w-50 p-5">
                            <div class="row">
                                <div class="col">
                                    <input type="hidden" name="id" value="#url.id#" id="id" />
                                    <label for="categoryName" class="mb-2">Category Name</label>
                                    <input type="text" id="categoryName" name="categoryName" class="form-control" value="#form.categoryName#" placeholder="Category Name" autocomplete="off">
                                </div>  
                            </div>

                            <div class="p-4 d-flex justify-content-center"> 
                                <button class="p-2 bg-success text-white rounded border-0" type="button" onclick="fun_submit()">Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
            </cfoutput>
            <script>
                function fun_submit() {
                    const frm = document.frmCategory;
                    
                    if(!isBlank(frm.categoryName, 'Please enter caregory Name!')) {
                        return false;
                    }
                    frm.submit();
                } 
            </script> 
        </body>
    </html> 