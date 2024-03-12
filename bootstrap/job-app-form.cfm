<DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap</title>
        <link rel="stylesheet" href="style.css" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body class="p-0 m-0">
        <cfoutput>
            <form name="frmJobApplication" id="frmJobApplication" method="post" class="d-flex justify-content-center" enctype="multipart/form-data">
                <div class="form w-50 h-100 text-left bg-form">
                    <div class="p-4 bg-custom-class text-white">
                        <h1 class="h3">ISUMMATION TECHNOLOGIES</h1>
                        <h4 class="small">304, Shapath 3, Sarkhej - Gandhinagar Hwy,<br/> nr. Gnfc Infotower, Bodakdev, Ahmedabad, Gujarat 380054</h4>
                    </div>

                    <div class="info d-flex justify-content-around flex-wrap bg-custom-info pt-2 text-white">
                        <p ><a class="text-white text-decoration-none" href="tel:+079 3533 4491">+079 3533 4491</a></p>
                        <p ><a class="text-white text-decoration-none" href="mailto:isummation@gmail.com">isummation@gmail.com</a></p>
                    </div>

                    <div class="head-para pt-3 px-3">
                        <h2>Job Application Form</h2>
                        <p>Thank you for your interest in working with us. Please check below for available job opportunities that meet your criteria and send your application by filling out the Job Application Form.</p>
                    </div>
                    <hr>

                    <div class="name px-4">
                        <label for="name" class="d-block px-4 ">Name <span class="text-danger">*</span></label>
                        <div class="d-flex px-4 mt-2"> 
                            <input type="text" class=" mr-auto w-50" id="fname" name="fname" placeholder="FIRST" autocomplete="off" />
                            <input type="text" class=" mx-3 w-50" id="lname" name="lname" placeholder="LAST" autocomplete="off" />
                        </div>
                    </div>

                    <div class="gender-bod d-flex px-5 flex-wrap ">
                        <div class="gender w-50">
                            <p class="mt-4">Gender <span class="text-danger">*</span></p>
                            <input type="radio"id="male" name="gender" value="male" />
                            <label for="male">Male</label>
                            <input type="radio" class="ms-4" id="female" name="gender" value="female"/>
                            <label for="female">Female</label>
                        </div>
                        <div class="dob  ">
                            <label class="d-block mt-4">Birth Date <span class="text-danger">*</span></label>
                            <input class="mt-3" type="date" id="bod" name="bod" placeholder="DD-MM-YYYY" />
                        </div>
                    </div> 

                    <div class="f-email px-5">
                        <label for="email" class="d-block mt-2">Email <span class="text-danger">*</span></label>
                        <input type="text" class="mt-2 w-100" id="email" name="email" placeholder="jhon@gmail.com" autocomplete="off" />
                    </div>

                    <div class="f-phone px-5 mt-4">
                        <label for="phone" class="d-block mt-2">Phone No <span class="text-danger">*</span></label>
                        <input type="number" class="mt-2 w-100" id="phone" name="phone" placeholder="0123456789" autocomplete="off" />
                    </div>

                    <div class="address px-5 mt-4">
                        <label for="address" class="d-block mt-2" >Address <span class="text-danger">*</span></label>
                        <div class="d-flex mt-2">    
                            <input type="text" class=" mr-auto w-50" id="line1" name="line1" placeholder="LINE 1" autocomplete="off" />
                            <input type="text" class=" ms-3 mx-1 w-50" id="line2" name="line2" placeholder="LINE 2" autocomplete="off" />
                        </div>
                    </div>
                    
                    <div class="city-zip d-flex px-5 mt-3 flex-wrap">
                        <div class="city w-50">
                            <label for="city" class="d-block mt-2 " >City <span class="text-danger">*</span></label>
                            <input type="text" class="w-100 mt-2" id="city" name="city" placeholder="CITY" autocomplete="off" />
                        </div>
                        <div class="zip w-50">
                            <label for="zip" class="d-block mt-2 ms-3" >Zip <span class="text-danger">*</span></label>
                            <input type="number" class="ms-3 mt-2"  id="zip" name="zip" placeholder="ZIP CODE" autocomplete="off" />
                        </div>
                    </div>

                    <div class="position px-5 mt-4">
                        <label for="position" class="d-block mt-2 " >What Position are you applying for ? <span class="text-danger">*</span></label>
                        <select name="position" class="mt-2 w-100" id="position" onchange="otherPosition(this)">
                            <option value="">-SELECT-</option>
                            <option value="frontend">Frontend Developer</option>
                            <option value="backend">Backend Developer</option>
                            <option value="fullstack">Full-Stack Developer</option>
                            <option value="uiux">UI/UX Designer</option>
                            <option value="social">Social Media Executive</option>
                            <option value="Tester">Tester</option>
                            <option value="otherpos">Other</option>
                        </select>
                        <input type="text" class="d-none" id="otherpos" name="otherpos" placeholder="Others Position" />
                    </div>

                    <div class="skils px-5 mt-4">
                        <p class="d-block mt-2">Please Select your Skils <span class="text-danger">*</span></p>
                        <input type="checkbox" class="ms-3" id="react" name="skill" value="react" />
                        <label for="react">React.Js</label>
                        <input type="checkbox" class="ms-3" id="android" name="skill" value="android" />
                        <label for="android">Android</label>
                        <input type="checkbox" class="ms-3" id="ios" name="skill" value="ios" />
                        <label for="ios">IOS</label><br/>
                        <input type="checkbox" class="ms-3" id="node" name="skill" value="node" />
                        <label for="node">Node.Js</label>
                        <input type="checkbox" class="ms-3" id="coldfusion" name="skill" value="coldfusion" />
                        <label for="coldfusion">ColdFusion</label>
                        <input type="checkbox" class="ms-3" id="php" name="skill" value="php" />
                        <label for="php">PHP</label>
                        <input type="checkbox" class="ms-3" id="otherSkil" name="skill" value="other" onclick="showInput(this)" />
                        <label for="otherSkil">Other</label>
                        <input type="text" class="d-none" id="other" name="otherSkil" placeholder="Others Skils"/>
                    </div>

                    <div class="employee px-5 mt-4">
                        <p class="d-block mt-2">What is your current employee status? <span class="text-danger">*</span></p>
                        <input type="radio" class="ms-3" id="employee" name="employee" />
                        <label for="employee">Employee</label>
                        <input type="radio" class="ms-3" id="selfEmployee" name="employee" />
                        <label for="selfEmployee">Self-Employee</label>
                        <input type="radio" class="ms-3" id="unEmployee" name="employee" />
                        <label for="unEmployee">Unemployee</label>
                        <input type="radio" class="ms-3" id="student" name="employee" />
                        <label for="student">Student</label>
                    </div>

                    <div class="time px-5 mt-4">
                        <p>Prefered hours <span class="text-danger">*</span></p>
                        <select name="time" id="time" multiple>
                            <option value="fulltime">Full Time</option>
                            <option value="parttime">Part Time</option>
                            <option value="Workfromhome">Work From Home</option>
                        </select>
                    </div>

                    <div class="resume px-5 mt-4">
                        <label for="resume" class="d-block mt-2">Please upload your Resume <span class="text-danger">*</span></label>
                        <input type="file" class="mt-3 w-100" id="resume" name="resume" placeholder="-RESUME-"/>
                    </div>

                    <div class="name  px-5 mt-4">
                        <label for="reName" class="d-block mt-2">Do you have References ? </label>
                        <div class="d-flex mt-3">
                            <input type="text" class=" mr-auto w-50" id="fReName" name="fReName" placeholder="FIRST" autocomplete="off" />
                            <input type="text" class="mx-3 w-50" id="lReName" name="lReName" placeholder="LAST" autocomplete="off" />
                        </div>
                    </div>

                    <div class="f-email px-5 mt-4 ">
                        <label for="reEmail" class="d-block mt-2">Reference Email</label>
                        <input type="text" class="mt-3 w-100" id="reEmail" name="reEmail" placeholder="jhon@gmail.com" autocomplete="off" />
                    </div>

                    <div class="term px-5 mt-4 ">
                        <input type="checkbox" id="termcon" name="term" checked>
                        <label for="term">I agree to the terms and conditions.</label>
                    </div> 

                    <div class="button px-5 mt-4">
                        <button type="reset" class="ms-3">Reset</button>
                        <button type="button" class="ms-3" onclick="fun_submit()">Apply</button>
                    </div>
                </div>
            </form>
        </cfoutput>

        <script src="helper.js"></script>
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
                    alert("Thank You");
                    
                }

                 function showInput(obj) {
                    const otherSkillText = document.querySelector('input[name=otherSkil]');
                    otherSkillText.className = 'd-none';
                    
                    if(obj.checked) {
                        otherSkillText.className = 'd-block mt-3 w-50 ms-3';                        
                    }
                 }

                 function otherPosition(obj){
                    const value = obj.value;
                    const position = document.getElementById("otherpos");
                    position.className = 'd-none';
                    if(value === "otherpos") {
                        position.className = 'd-block mt-3 w-50';
                    }
                 }
            </script>
    </body>
</html>