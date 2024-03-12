<!--- <cfset variables.sum = 0 />
<cfif  variables.sum == 0>
    Result is Zero
<cfelseif variables.sum % 2 == 0>
    Result is Even
<cfelse>
    Result is Odd
</cfif> --->

<cfscript>
    variables.sum = 10 + 10;

    writeOutput(variables.sum % 2 == 0 ? 'Even' : 'Odd');
    writeOutput('<hr />');

    if(variables.sum EQ 0) {
        writeOutput('Result is Zero');
    } else if(variables.sum % 2 EQ 0) {
        writeOutput('Result is Even');
    } else {
        writeOutput('Result is Odd');
    }
</cfscript>


<hr/>
<cfset variables.sum = 10 />
<cfif variables.sum eq 10>
    Result is equal
<cfelse>
    Result is Not equal
</cfif>

<hr/>
<cfset variables.age = 17 />
<cfif variables.age GT 18>
    Voting
<cfelse>
    Not voting
</cfif>

<hr/>
<cfoutput>
<cfset variables.maths = 40 />
<cfset variables.english = 55 />
<cfset variables.gujarti = 35 />
<cfset variables.science = 60 />
<cfset variables.total = maths + english + gujarti + science />
<cfset variables.percentage = total / 4 />
    Maths : #variables.maths# <br/>
    English : #variables.english# <br/>
    Gujarati : #variables.gujarti# <br/>
    Science : #variables.science# <br/>
    Total : #variables.total# <br/>
    Percentage : #variables.percentage#

<cfif variables.percentage GTE 90 && variables.percentage LT 99 >
        Grade : A++
<cfelseif variables.percentage GTE 80 && variables.percentage LT 90 >
        Grade : A
<cfelseif variables.percentage GTE 70 && variables.percentage LT 80>
        Grade : B++
<cfelseif variables.percentage GTE 60 && variables.percentage LT 70>
        Grade : B
<cfelseif variables.percentage GTE 50 && variables.percentage LT 60>
        Grade : C
<cfelseif variables.percentage GTE 40 && variables.percentage LT 50>
        Grade : D
<cfelse>
        Fail
</cfif>
</cfoutput>



<hr/>
<cfscript>
    variables.english = 85;
    variables.maths = 60;
    variables.gujarti = 75;
    variables.science = 96;
    variables.total = maths + english + gujarti + science;
    variables.percentage = total / 4;

    writeOutput("Percentage : #variables.percentage#");
    if(variables.percentage GTE 90 && variables.percentage LT 99 ){
        writeOutput("Grade : A++");
    }else if (variables.percentage GTE 80 && variables.percentage LT 90) {
        writeOutput("Grade : A");
    }else if (variables.percentage GTE 70 && variables.percentage LT 80) {
        writeOutput("Grade : B++")
    }else if (variables.percentage GTE 60 && variables.percentage LT 70) {
        writeOutput("Grade : B");
    }else if (variables.percentage GTE 50 && variables.percentage LT 60) {
        writeOutput("Grade : C");
    }else if (variables.percentage GTE 40 && variables.percentage LT 50) {
        writeOutput("Grade : D");
    }else {
        writeOutput("Fail");
    }
</cfscript>
<hr/>
<cfscript>
    variables.sub = 20 - 10;
    writeOutput(variables.sub % 2 EQ 0 ? 'Even' : 'Odd');
</cfscript>

