<cfparam name="url.id" default="0" />
 
<cfparam name="form.add1" default="" />
<cfparam name="form.add2" default="" />
<cfparam name="form.dis" default="" />
<cfparam name="form.postCode" default="" />
<cfparam name="form.phone" default="" />
<cfparam name="form.cityId" default="" />

<cfset variables.qGetAllCities = new components.cityGateway().getAllCities() />

<cfif val(url.id)>

    <cfset variables.address = new components.addressGateway().get(id = url.id) />
    
    <cfset form.add1 = variables.address.getAddress() />
    <cfset form.add2 = variables.address.getAddress2() />
    <cfset form.dis = variables.address.getDistrict() />
    <cfset form.postCode = variables.address.getPostal_code() />
    <cfset form.phone = variables.address.getPhone() />
    <cfset form.cityId = variables.address.getCity_id() />

</cfif>

<DOCTYPE html>
<html>
    <head>
        <title>Address</title>
        <cfinclude template="/includes/scripts.cfm" />
    </head>
    <body>
        <cfoutput>
           
            <cfinclude template="/includes/header.cfm" />

            <div aria-label="breadcrumb">
                <ol class="breadcrumb ms-5 mt-2">
                <li class="breadcrumb-item"><a href="/dashboard.cfm">Home</a></li>
                <li class="breadcrumb-item"><a href="index.cfm">Address</a></li>
                <li class="breadcrumb-item active" aria-current="page">Action</li>
                </ol>
            </div>

            <form name="frmAddress" action="add-edit-action.cfm" id="frmAddress" method="POST">
                <div class="d-flex justify-content-center align-items-center h-75">
                    <div class="bg-secondary w-50 p-5">
                        <div class="row">
                            <div class="col">
                                <input type="hidden" name="id" value="#url.id#" id="id" />
                                <label for="add1" class="mb-2">Address Line1</label>
                                <input type="text" id="add1" name="add1" class="form-control" value="#form.add1#" placeholder="Address 1" autocomplete="off">
                            </div>
                            <div class="col">
                                <label for="add2" class="mb-2">Address Line2</label>
                                <input type="text" id="add2" name="add2" class="form-control" value="#form.add2#" placeholder="Address 2" autocomplete="off">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label for="dis" class="mb-2">District</label>
                                <input type="text" id="dis" name="dis" class="form-control" value="#form.dis#" placeholder="District" autocomplete="off">
                            </div>
                            <div class="col">
                                <label for="postCode" class="mb-2">Postal Code</label>
                                <input type="number" id="postCode" name="postCode" class="form-control" value="#form.postCode#" placeholder="Post Code" autocomplete="off">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label for="phone" class="mb-2">Phone</label>
                                <input type="number" id="phone" name="phone" class="form-control" value="#form.phone#" placeholder="Phone Number" autocomplete="off">
                            </div>
                            <div class="col">
                                <label for="cityId" class="mb-2">City</label>
                                
                                <select name="cityId" id="cityId" class="p-2 rounded">
                                    <option value="">- Select City -</option>
                                    <cfloop query="variables.qGetAllCities">
                                        <option value="#variables.qGetAllCities.city_id#" <cfif form.cityId EQ '#variables.qGetAllCities.city_id#'>selected</cfif>>
                                            #variables.qGetAllCities.city# [#variables.qGetAllCities.country#]
                                        </option>
                                    </cfloop>
                                </select>
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
                const frm = document.frmAddress;
                
                if(!isBlank(frm.add1, 'Please enter address 1!')) {
                    return false;
                }

                if(!isBlank(frm.add2, 'Please enter address 2!')) {
                    return false;
                }

                if(!isBlank(frm.dis, 'Please enter district!')) {
                    return false;
                }

                if(!isZipCode(frm.postCode, 'Please enter postal code!')) {
                    return false;
                }

                if(!isNumber(frm.phone, 'Please enter valid phone number!')) {
                    return false;
                }

                if(!isBlank(frm.cityId, 'Please enter City!')) {
                    return false;
                }
                frm.submit();
            } 
        </script>  
    </body>
</html>