<cfparam name="url.id" default="0" />

<cfparam name="form.fname" default="" />
<cfparam name="form.lname" default="" />
<cfparam name="form.email" default="" />
<cfparam name="form.store" default="" />
<cfparam name="form.address" default="" />

<cfif val(url.id)>
    <cfset variables.customer = new components.customerGateway().get(id = url.id) />

    <cfset form.fname = variables.customer.getFirst_name() />
    <cfset form.lname = variables.customer.getLast_name() />
    <cfset form.email = variables.customer.getEmail() />
    <cfset form.store = variables.customer.getStore() />
    <cfset form.address = variables.customer.getAddress() />

</cfif> 

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

            <div aria-label="breadcrumb">
                <ol class="breadcrumb ms-5 mt-2">
                <li class="breadcrumb-item"><a href="/dashboard.cfm">Home</a></li>
                <li class="breadcrumb-item"><a href="index.cfm">Customer</a></li>
                <li class="breadcrumb-item active" aria-current="page">Action</li>
                </ol>
            </div>

            <form name="frmCustomer" action="add-edit-action.cfm" id="frmCustomer" method="POST">
                <div class="d-flex justify-content-center align-items-center h-75">
                    <div class="bg-secondary w-50 p-5">
                        <div class="row">
                            <div class="col">
                                <input type="hidden" name="id" value="#url.id#" id="id" />
                                <label for="fname" class="mb-2">First Name</label>
                                <input type="text" id="fname" name="fname" class="form-control" value="#form.fname#" placeholder="First Name" autocomplete="off">
                            </div>
                            <div class="col">
                                <label for="lname" class="mb-2">Last Name</label>
                                <input type="text" id="lname" name="lname" class="form-control" value="#form.lname#" placeholder="Last Name" autocomplete="off">
                            </div>
                        </div>

                        <div class="col">
                            <label for="email" class="mb-2">Email</label>
                            <input type="text" id="email" name="email" class="form-control" value="#form.email#" placeholder="Email" autocomplete="off">
                        </div>

                        <div class="row">
                            <div class="col">
                                <label for="store" class="mb-2 d-block">Store</label>
                                <select name="store" id="store" class="p-2 rounded w-100">
                                    <option value="">--SELECT--</option>
                                    <option value="1" <cfif form.store EQ 1 >selected</cfif>>Store 1</option>
                                    <option value="2" <cfif form.store EQ 2 >selected</cfif>>Store 2</option>
                                </select>
                            </div>
                            <div class="col">
                                <label for="address" class="mb-2">Address</label>
                                <input type="text" id="address" name="address" class="form-control" value="#form.address#" placeholder="Address" autocomplete="off">
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
                const frm = document.frmCustomer;
                
                if(!isBlank(frm.fname, 'Please enter first name!')) {
                    return false;
                }

                if(!isBlank(frm.lname, 'Please enter last name!')) {
                    return false;
                }

                if(!isEmail(frm.email, 'Please enter valid Email!')) {
                    return false;
                }

                if(!isBlank(frm.store, 'Please select store!')) {
                    return false;
                }

                if(!isBlank(frm.address, 'Please enter address!')) {
                    return false;
                }

                frm.submit();
            } 
        </script>  
    </body>
</html>