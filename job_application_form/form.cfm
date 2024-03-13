<cfparam name="url.firstName" default="" />
<cfparam name="url.lastName" default="" />
<cfparam name="url.bod" default="" />
<cfparam name="url.email" default="" />
<cfparam name="url.phone" default="" />
<cfparam name="url.line1" default="" />
<cfparam name="url.line2" default="" />
<cfparam name="url.city" default="" />
<cfparam name="url.zip" default="" />
<cfparam name="url.position" default="" />
<cfparam name="url.otherpos" default="" />
<cfparam name="url.time" default="" />
<cfparam name="url.fReName" default="" />
<cfparam name="url.lReName" default="" />
<cfparam name="url.reEmail" default="" />
<cfparam name="url.otherSkil" default="" />


<DOCTYPE html>
    <html>
        <head>
            <title>Isummation Technology</title>
            <link rel="stylesheet" href="/job_application_form/style.css" />
        </head>
        <body>
            <cfoutput>
                <!--- onsubmit="return fun_submit();" --->
                <form name="frmJobApplication" action="insert.cfm" id="frmJobApplication" method="get" class="content" enctype="multipart/form-data">
                    <div class="form">
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
                            <input type="text" id="fname" name="firstName" placeholder="FIRST" value="#url.firstName#" autocomplete="off" />
                            <input type="text" id="lname" name="lastName" placeholder="LAST" value="#url.lastName#" autocomplete="off" />
                        </div>
                        
                        <div class="gender-bod">
                            <div class="gender">
                                <p>Gender <span>*</span></p>
                                <input type="radio" id="male" name="gender" value="male"/>
                                <label for="male">Male</label>
                                <input type="radio" id="female" name="gender" value="female"/>
                                <label for="female">Female</label>
                            </div>
                            <div class="dob">
                                <label>Birth Date <span>*</span></label>
                                <input type="date" id="bod" name="bod" value="#url.bod#" placeholder="DD-MM-YYYY" />
                            </div>
                        </div> 

                        <div class="f-email">
                            <label for="email">Email <span>*</span></label>
                            <input type="text" id="email" name="email" placeholder="jhon@gmail.com" value="#url.email#" autocomplete="off" />
                        </div>

                        <div class="f-phone">
                            <label for="phone">Phone No <span>*</span></label>
                            <input type="number" id="phone" name="phone" placeholder="0123456789" value="#url.phone#" autocomplete="off" />
                        </div>

                        <div class="address">
                            <label for="address">Address <span>*</span></label>
                            <input type="text" id="line1" name="line1" placeholder="LINE 1" value="#url.line1#" autocomplete="off" />
                            <input type="text" id="line2" name="line2" placeholder="LINE 2" value="#url.line2#" autocomplete="off" />
                        </div>
                        
                        <div class="city-zip">
                            <div class="city">
                                <label for="city">City <span>*</span></label>
                                <input type="text" id="city" name="city" placeholder="CITY" value="#url.city#" autocomplete="off" />
                            </div>
                            <div class="zip">
                                <label for="zip">Zip <span>*</span></label>
                                <input type="number" id="zip" name="zip" placeholder="ZIP CODE" value="#url.zip#" autocomplete="off" />
                            </div>
                        </div>

                        <div class="position">
                            <label for="position">What Position are you applying for ? <span>*</span></label>
                            <select name="position" id="position" onchange="otherPosition(this)" value="#url.position#" >
                                <option value="">-SELECT-</option>
                                <option value="frontend">Frontend Developer</option>
                                <option value="backend">Backend Developer</option>
                                <option value="fullstack">Full-Stack Developer</option>
                                <option value="uiux">UI/UX Designer</option>
                                <option value="socialMedia">Social Media Executive</option>
                                <option value="Tester">Tester</option>
                                <option value="otherpos">Other</option>
                            </select>
                            <input type="text" class="otherpos" id="otherpos" name="otherpos" value="#url.otherpos#" placeholder="Others Position" style="display: none"/>
                        </div>

                        <div class="skils">
                            <p>Please Select your Skils <span>*</span></p>
                            <input type="checkbox" id="react.js" name="skill" value="react" />
                            <label for="react">React.Js</label>
                            <input type="checkbox" id="android" name="skill" value="android" />
                            <label for="android">Android</label>
                            <input type="checkbox" id="ios" name="skill" value="ios" />
                            <label for="ios">IOS</label><br/>
                            <input type="checkbox" id="node.js" name="skill" value="node" />
                            <label for="node">Node.Js</label>
                            <input type="checkbox" id="coldfusion" name="skill" value="coldfusion" />
                            <label for="coldfusion">ColdFusion</label>
                            <input type="checkbox" id="php" name="skill" value="php" />
                            <label for="php">PHP</label>
                            <input type="checkbox" id="otherSkil" name="skill" value="other" onclick="showInput(this)" />
                            <label for="otherSkil">Other</label>
                            <input type="text" class="otherinput" id="other" name="otherSkil" value="#url.otherSkil#" placeholder="Others Skils" style="display: none"/>
                        </div>

                        <div class="employee">
                            <p>What is your current employee status? <span>*</span></p>
                            <input type="radio" id="employee" name="employee" value="employee"/>
                            <label for="employee">Employee</label>
                            <input type="radio" id="selfEmployee" name="employee" value="selfEmployee" />
                            <label for="selfEmployee">Self-Employee</label>
                            <input type="radio" id="unEmployee" name="employee" value="unemployee"/>
                            <label for="unEmployee">Unemployee</label>
                            <input type="radio" id="student" name="employee" value="student"/>
                            <label for="student">Student</label>
                        </div>

                        <div class="time">
                            <p>Prefered hours <span>*</span></p>
                            <select name="time" id="time" value="#url.time#" multiple>
                                <option value="fullTime">Full Time</option>
                                <option value="partTime">Part Time</option>
                                <option value="WorkFromHome">Work From Home</option>
                            </select>
                        </div>

                        <div class="resume">
                            <label for="resume">Please upload your Resume <span>*</span></label>
                            <input type="file" id="resume" name="resume" placeholder="-RESUME-"/>
                        </div>

                        <div class="name">
                            <label for="reName">Do you have References ? </label>
                            <input type="text" id="fReName" name="fReName" value="#url.fReName#" placeholder="FIRST" autocomplete="off" />
                            <input type="text" id="lReName" name="lReName" value="#url.lReName#" placeholder="LAST" autocomplete="off" />
                        </div>

                        <div class="f-email">
                            <label for="reEmail">Reference Email</label>
                            <input type="text" id="reEmail" name="reEmail" value="#url.reEmail#" placeholder="jhon@gmail.com" autocomplete="off" />
                        </div>

                        <div class="term">
                            <input type="checkbox" id="termcon" name="term" checked>
                            <label for="term">I agree to the terms and conditions.</label>
                        </div> 

                        <div class="button">
                            <button type="reset" onclick="reset()">Reset</button>
                            <!--- <button type="submit">Apply</button> --->
                            <button type="button" onclick="fun_submit()">Apply</button>
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