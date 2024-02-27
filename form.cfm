<cfparam name="url.firstName" default="" />
<cfparam name="url.lastName" default="" />
<cfparam name="url.email" default="" />
<!--- <cfset variables.fullName = "#firstName# #lastName#"/>  --->


<DOCTYPE html>
<html>
    <cfoutput>
        <head>
            <title>Login Form</title>
            <style>
                input{
                    display : flex;
                    flex-direction : column;
                }
            </style> 
        </head>
        <body>
            <h2>FORM</h2>
            <form action="./info.cfm" method="get">

                <label for="fName">First Name : </label>
                <input type="text" id="fName" name="firstName"  value="#url.firstName#" /> <br/>

                <label for="lName">Last Name : </label>
                <input type="text" id="lName" name="lastName" value="#url.lastName#" /> <br/>

                <label for="email">Email : </label>
                <input type="text" id="email" name="email" value="#url.email#" /> <br> 
                
                <!--- <label for="fuName">Full Name : </label>
                <input type="text" id="fuName" name="fullName" value="#url.fullName#" /> <br>  --->
            
                
                <button type="submit">Submit</button>
            </form>
        </body>
    </cfoutput>
</html>