
<cfparam name="url.id" />
<cfoutput>
<cfquery name="variables.qGetApplication" datasource="jobapps">
    select *
    from jobapplication
    where id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer" />
</cfquery>
</cfoutput>

<DOCTYPE html>
    <html>
        <head>
            <title>Isummation Technology</title>
            <link rel="stylesheet" href="/job_application_form/style.css" />
        </head>
        <body>
            <cfoutput>
                <!--- onsubmit="return fun_submit();" --->
                <form name="frmJobApplication" action="./update-action.cfm" id="frmJobApplication" method="post" class="content" enctype="multipart/form-data">
                    <div class="form">
                        <input type="hidden" name="id" value="#variables.qGetApplication.id#" id="id" />
                        <div class="form-head">
                            <h1>ISUMMATION TECHNOLOGIES</h1>
                            <h4>304, Shapath 3, Sarkhej - Gandhinagar Hwy,<br/> nr. Gnfc Infotower, Bodakdev, Ahmedabad, Gujarat 380054</h4>
                        </div>

                        <div class="info">
                            <p class="co-info"><a href="tel:+079 3533 4491">+079 3533 4491</a></p>
                            <p class="co-info"><a href="mailto:isummation@gmail.com">isummation@gmail.com</a></p>
                        </div>

                        <div class="head-para">
                            <h2>Job Application Form</h2>
                            <p>Thank you for your interest in working with us. Please check below for available job opportunities that meet your criteria and send your application by filling out the Job Application Form.</p>
                        </div>
                        <hr>
                        <div class="name">
                            <label for="name">Name <span>*</span></label>
                            <input type="text" id="fname" name="firstName" placeholder="FIRST" value="#variables.qGetApplication.firstName#" autocomplete="off" />
                            <input type="text" id="lname" name="lastName" placeholder="LAST" value="#variables.qGetApplication.lastName#" autocomplete="off" />
                        </div>
                        
                        <div class="gender-bod">
                            <div class="gender">
                                <p>Gender <span>*</span></p>
                                <input type="radio" id="male" name="gender" value="male" <cfif variables.qGetApplication.gender eq 'male'>checked</cfif> />
                                <label for="male">Male</label>
                                <input type="radio" id="female" name="gender" value="female" <cfif variables.qGetApplication.gender eq 'female'>checked</cfif> />
                                <label for="female">Female</label>
                            </div>
                            <div class="dob">
                                <label>Birth Date <span>*</span></label>
                                <input type="text" id="bod" name="bod" value="#dateFormat(variables.qGetApplication.birthDate, 'dd-mm-yyyy')#" />
                            </div>
                        </div> 

                        <div class="f-email">
                            <label for="email">Email <span>*</span></label>
                            <input type="text" id="email" name="email" placeholder="jhon@gmail.com" value="#variables.qGetApplication.email#" autocomplete="off" />
                        </div>

                        <div class="f-phone">
                            <label for="phone">Phone No <span>*</span></label>
                            <input type="number" id="phone" name="phone" placeholder="0123456789" value="#variables.qGetApplication.phone#" autocomplete="off" />
                        </div>

                        <div class="address">
                            <label for="address">Address <span>*</span></label>
                            <input type="text" id="line1" name="line1" placeholder="LINE 1" value="#variables.qGetApplication.address1#" autocomplete="off" />
                            <input type="text" id="line2" name="line2" placeholder="LINE 2" value="#variables.qGetApplication.address2#" autocomplete="off" />
                        </div>
                        
                        <div class="city-zip">
                            <div class="city">
                                <label for="city">City <span>*</span></label>
                                <input type="text" id="city" name="city" placeholder="CITY" value="#variables.qGetApplication.city#" autocomplete="off" />
                            </div>
                            <div class="zip">
                                <label for="zip">Zip <span>*</span></label>
                                <input type="number" id="zip" name="zip" placeholder="ZIP CODE" value="#variables.qGetApplication.zipCode#" autocomplete="off" />
                            </div>
                        </div>

                        <div class="position">
                            <label for="position">What Position are you applying for ? <span>*</span></label>
                            <select name="position" id="position" onchange="otherPosition(this)">
                                <option value="">-SELECT-</option>
                                <option value="frontend" <cfif variables.qGetApplication.position eq 'frontend'>selected</cfif> >Frontend Developer</option>
                                <option value="backend" <cfif variables.qGetApplication.position eq 'backend'>selected</cfif>>Backend Developer</option>
                                <option value="fullstack" <cfif variables.qGetApplication.position eq 'fullstack'>selected</cfif>>Full-Stack Developer</option>
                                <option value="uiux" <cfif variables.qGetApplication.position eq 'uiux'>selected</cfif>>UI/UX Designer</option>
                                <option value="socialMedia" <cfif variables.qGetApplication.position eq 'socialMedia'>selected</cfif>>Social Media Executive</option>
                                <option value="Tester" <cfif variables.qGetApplication.position eq 'Tester'>selected</cfif>>Tester</option>
                                <option value="otherpos" <cfif variables.qGetApplication.position eq 'otherpos'>selected</cfif>>Other</option>
                            </select>
                            <input type="text" class="otherpos" id="otherpos" name="otherpos" value="#variables.qGetApplication.positionOther#" placeholder="Others Position" style="display: none"/>
                        </div>

                        <div class="skils">
                            <p>Please Select your Skils <span>*</span></p>
                            <input type="checkbox" id="react.js" name="skill" value="react" <cfif listFindNoCase(variables.qGetApplication.skill, 'react')>checked</cfif> />
                            <label for="react">React.Js</label>
                            <input type="checkbox" id="android" name="skill" value="android" <cfif listFindNoCase(variables.qGetApplication.skill, 'android')>checked</cfif> />
                            <label for="android">Android</label>
                            <input type="checkbox" id="ios" name="skill" value="ios" <cfif listFindNoCase(variables.qGetApplication.skill, 'ios')>checked</cfif> />
                            <label for="ios">IOS</label><br/>
                            <input type="checkbox" id="node.js" name="skill" value="node" <cfif listFindNoCase(variables.qGetApplication.skill, 'node')>checked</cfif>  />
                            <label for="node">Node.Js</label>
                            <input type="checkbox" id="coldfusion" name="skill" value="coldfusion" <cfif listFindNoCase(variables.qGetApplication.skill, 'coldfusion')>checked</cfif> />
                            <label for="coldfusion">ColdFusion</label>
                            <input type="checkbox" id="php" name="skill" value="php" <cfif listFindNoCase(variables.qGetApplication.skill, 'php')>checked</cfif> />
                            <label for="php">PHP</label>
                            <input type="checkbox" id="otherSkil" name="skill" value="other" onclick="showInput(this)" <cfif listFindNoCase(variables.qGetApplication.skill, 'other')>checked</cfif> />
                            <label for="otherSkil">Other</label>
                            <input type="text" class="otherinput" id="other" name="otherSkil" value="#variables.qGetApplication.skillOther#" placeholder="Others Skils" style="display: none"/>
                        </div>

                        <div class="employee">
                            <p>What is your current employee status? <span>*</span></p>
                            <input type="radio" id="employee" name="employee" value="employee" <cfif variables.qGetApplication.empStatus eq 'employee'>checked</cfif> />
                            <label for="employee">Employee</label>
                            <input type="radio" id="selfEmployee" name="employee" value="selfEmployee" <cfif variables.qGetApplication.empStatus eq 'selfEmployee'>checked</cfif> />
                            <label for="selfEmployee">Self-Employee</label>
                            <input type="radio" id="unEmployee" name="employee" value="unemployee" <cfif variables.qGetApplication.empStatus eq 'unemployee'>checked</cfif> />
                            <label for="unEmployee">Unemployee</label>
                            <input type="radio" id="student" name="employee" value="student" <cfif variables.qGetApplication.empStatus eq 'student'>checked</cfif> />
                            <label for="student">Student</label>
                        </div>

                        <div class="time">
                            <p>Prefered hours <span>*</span></p>
                            <select name="time" id="time" value="#variables.qGetApplication.time#" multiple>
                                <option value="fullTime" <cfif listFindNoCase(variables.qGetApplication.time, 'fullTime')>selected</cfif> >Full Time</option>
                                <option value="partTime" <cfif listFindNoCase(variables.qGetApplication.time, 'partTime')>selected</cfif> >Part Time</option>
                                <option value="workFromHome" <cfif listFindNoCase(variables.qGetApplication.time, 'workFromHome')>selected</cfif> >Work From Home</option>
                            </select>
                        </div>

                        <div class="resume">
                            <label for="resume">Please upload your Resume <span>*</span></label>
                            <input type="file" id="resume" name="resume" placeholder="-RESUME-"/>
                        </div>

                        <div class="name">
                            <label for="reName">Do you have References ? </label>
                            <input type="text" id="fReName" name="fReName" value="#variables.qGetApplication.refFirstName#" placeholder="FIRST" autocomplete="off" />
                            <input type="text" id="lReName" name="lReName" value="#variables.qGetApplication.refLastName#" placeholder="LAST" autocomplete="off" />
                        </div>

                        <div class="f-email">
                            <label for="reEmail">Reference Email</label>
                            <input type="text" id="reEmail" name="reEmail" value="#variables.qGetApplication.refMail#" placeholder="jhon@gmail.com" autocomplete="off" />
                        </div>

                        <div class="term">
                            <input type="checkbox" id="termcon" name="term" checked>
                            <label for="term">I agree to the terms and conditions.</label>
                        </div> 

                        <div class="button">
                            <button type="reset" onclick="reset()">Reset</button>
                            <!--- <button type="submit">Apply</button> --->
                            <button type="button" onclick="fun_submit()">Update</button>
                        </div>
                    </div>
                </form>
            </cfoutput>
            <script src="/assets/helper.js"></script>
            <script>
                function fun_submit() {
                    const frm = document.frmJobApplication;

                    const { 
                        fname: firstName, 
                        lname: lastName,
                        gender: validGender,
                        bod: validBirthdate,
                        email: validEmail,
                        phone: validPhone,
                        line1: validAddressLine1,
                        line2: validAddressLine2,
                        city: validCity,
                        zip: validZip,
                        position: validPosition,
                        otherpos: validOtherPosition,
                        employee: validEmployee,
                        time: validTime,
                        term: selectedTerm,
                        skill: validSkill,
                        other: validOtherSkill
                    } = frm;

                    
                    if(!isBlank(firstName, 'Please enter your valid first name!')) {
                        return false;
                    }

                    if(!isBlank(lastName, 'Please enter your valid last name!')) {
                        return false;
                    }

                    if(!isCheck(validGender, 'Please select gender')){
                        return false;
                    }

                    if(!isBlank(validBirthdate, 'Please enter your birth-date')){
                        return false;
                    }

                    if(!isEmail(validEmail, 'Please enter your valid email')){
                        return false;
                    }

                    if(!isNumber(validPhone, 'Please enter your valid phone number')){
                        return false;
                    }

                    if(!isBlank(validAddressLine1, 'Please enter address line 1')){
                        return false;
                    }

                    if(!isBlank(validAddressLine2, 'Please enter address line 2')){
                        return false;
                    }

                    if(!isBlank(validCity, 'Please enter city')){
                        return false;
                    }

                    if(!isZipCode(validZip, 'Please enter valid Zip code')){
                        return false;
                    }

                    if(!isBlank(validPosition, 'Please select position')){
                        return false;
                    }

                    if(validPosition.value === 'otherpos' && !isBlank(validOtherPosition, 'Please enter othres position')) {
                        return false;
                    } 

                    if(!isCheck(validSkill, "Your Skill required!")){
                        return false;
                    } 

                    const otherSkill = Array.from(validSkill).filter(element => element.value === 'other');
                    if(otherSkill.checked && !isBlank(validOtherSkill, 'Required other skills')) {
                        return false;
                    }
                                        
                    if(!isCheck(validEmployee, 'Please select employee status')){
                        return false;
                    }

                    if(!isBlank(validTime, 'Please select prefered time')){
                        return false;
                    }
                    
                    if(!isChecked(selectedTerm, 'Please Read term & Condtion')){
                        return false;
                    }
                    // return true;                
                    frm.submit();
                    // alert("Record Updated successfully");
                }
                    
                 function showInput(obj) {
                    const otherSkillText = document.querySelector('input[name=otherSkil]');
                    otherSkillText.style.display = 'none';
                    
                    if(obj.checked) {
                        otherSkillText.style.display = 'block';                        
                    }
                 }

                 function otherPosition(obj){
                    const value = obj.value;
                    const position = document.getElementById("otherpos");
                    position.style.display = 'none';
                    if(value === "otherpos") {
                        position.style.display = 'block';
                    }
                 }
                 
            </script>  
        </body>
    </html>
