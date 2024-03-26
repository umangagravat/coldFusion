<cfparam name="url.id" default="0" />
 
<cfparam name="form.fName" default="" />
<cfparam name="form.lName" default="" />
<cfparam name="form.email" default="" />
<cfparam name="form.password" default="" />

<cfif val(url.id)>
    
    <cfset variables.actor = new components.actorGateway().get(id = url.id) />

    <cfset form.fName = variables.actor.getfirst_name() />
    <cfset form.lName = variables.actor.getlast_name() />
    <cfset form.email = variables.actor.getemail() />
    <cfset form.password = variables.actor.getPassword() />

</cfif>

<DOCTYPE html>
<html>
    <head>
        <title>Actors</title>
        <cfinclude template="/includes/scripts.cfm" />
    </head>
    <body>
        <cfoutput>
       
            <cfinclude template="/includes/header.cfm" />

            <div aria-label="breadcrumb">
                <ol class="breadcrumb ms-5 mt-2">
                <li class="breadcrumb-item"><a href="/dashboard.cfm">Home</a></li>
                <li class="breadcrumb-item"><a href="index.cfm">Actors</a></li>
                <li class="breadcrumb-item active" aria-current="page">Action</li>
                </ol>
            </div>
 
            <form name="frmActor" action="add-edit-action.cfm" id="frmActor" method="POST">
                <div class="d-flex justify-content-center align-items-center h-75">
                    <div class="bg-secondary w-50 p-5">
                        <div class="row">
                            <div class="col">
                                <input type="hidden" name="id" value="#url.id#" id="id" />
                                <label for="fname" class="mb-2">First Name</label>
                                <input type="text" id="fname" name="fname" class="form-control" value="#form.fname#" placeholder="First name" autocomplete="off">
                            </div>
                            <div class="col">
                                <label for="lname" class="mb-2">Last Name</label>
                                <input type="text" id="lname" name="lname" class="form-control" value="#form.lname#" placeholder="Last name" autocomplete="off">
                            </div>
                        </div>

                        <div class="col mb-2">
                            <label for="lname" class="mt-3 mb-2">Email</label>
                            <input type="text" id="email" name="email" class="form-control" value="#form.email#" placeholder="Email" autocomplete="off">
                        </div>

                        <div class="col mb-2">
                            <label for="password" class="mt-3 mb-2">Password</label>
                            <input type="password" id="password" name="password" class="form-control" value="#form.password#" placeholder="Password" autocomplete="off">
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
                const frm = document.frmActor;
                
                if(!isBlank(frm.fname, 'Please enter first name!')) {
                    return false;
                }

                if(!isBlank(frm.lname, 'Please enter last name!')) {
                    return false;
                }

                if(!isEmail(frm.email, 'Please enter valid Email!')) {
                    return false;
                }

                if(!isBlank(frm.password, 'Please enter password!')) {
                    return false;
                }
                frm.submit();
            } 
        </script>  
    </body>
</html>