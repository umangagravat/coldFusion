<cfparam name="url.firstName" default="" />
<cfparam name="url.lastName" default="" />
<cfparam name="url.email" default="" />
<cfparam name="url.male" default="" />


<DOCTYPE html>
<html>
    <cfoutput>
        <head>
            <title>Login Form</title>
            <style>
                input{
                    display : flex;  
                }
            </style> 
        </head>
        <body>
            <h2>FORM</h2>
            <form action="./info.cfm" method="get">

                <label for="fName">First Name : </label>
                <input type="text" id="fName" name="firstName"  value="#url.firstName#" autocomplete="off" required/> <br/>

                <label for="lName">Last Name : </label>
                <input type="text" id="lName" name="lastName" value="#url.lastName#" autocomplete="off" required/> <br/>

                <label for="email">Email : </label>
                <input type="text" id="email" name="email" value="#url.email#" autocomplete="off" required/> <br> 
             
                <button type="submit">Submit</button>
            </form>
        </body>
    </cfoutput>
</html>