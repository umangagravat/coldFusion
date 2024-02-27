<!--- ColdFusion variable scope --->

<!---
    1. variables
    2. form
    3. url
    4. function scope (var, local & arguments)
    5. application
    6. session
    7. cookie
    8. attribute
    9. request
    10. caller
--->

<!--- Primitives (Simple) [string, number, boolean, null, list] --->
<!--- Nonprimitives (Complex) [function, array, struct] --->

<h1>Declare Variables</h1>

<!--- Declare Variables --->


<cfset variables.firstName = 'Umang'/>
<cfdump var="#firstName#" /> 
<cfset variables.lastName = 'Agravat' />
<cfdump var="#lastName#" />
<cfset variables.age = 22 />
<cfdump var="#age#" />
<cfset variables.aborts = true />
<cfdump var="#aborts#" />

<h1>Array</h1>

<br >
<!--- Declare array --->

<cfset variables.names = ArrayNew(1) />

<cfset ArrayAppend(variables.names, 'Umang') />
<cfset ArrayAppend(variables.names, 'ajay') />
<cfset arrayAppend(variables.names, ['chirag', 'jaydeep', 'jay']) />

<cfdump var="#variables.names#" />

<cfset variables.list = ArrayNew() />

<cfset list.append('jaydeep') />
<cfset list.append(['umang','chirag','ajay'],true) />

<br>
<cfset variables.city = ['ahmedabad','baroda','surat','rajkot'] />
<cfdump var="#variables.city#" />

<br>
<cfset variables.avarage = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] />
<cfdump var="#avarage#" />
<p>Avarage of array</p>
<cfdump var="#variables.avarage.avg()#" />


<br/>
<!--- Declare structure --->
<h1>Struct</h1>
<cfset variables.profile = StructNew("ordered") />

<cfset variables.profile['id'] = '1' />
<cfset variables.profile['name'] = 'Umang' />
<cfset variables.profile['rollNo'] = '78' />
<cfset variables.profile['age'] = '22' />


<br/>
<cfdump var="#variables.profile#" /> 

<br/>
<cfdump var="#variables.profile.name#" /> 

<br/>
<cfset variables.employee = StructNew() />

<cfset variables.employee = [
    "id" : "1",
    "name" : "virat sharma",
    "age" : "35"
]/>

<cfdump var="#variables.employee#" />


<br/>
<cfdump var="#now()#" />


<br/>
<cfoutput>
    #variables.firstName# <br />
    #variables.lastName# <br/>
    #variables.age# <br/> 
</cfoutput>