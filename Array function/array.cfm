<cfscript>
    writeDump(label:"new array", var:isArray([]));
</cfscript>

<hr/>
<!--- array sum --->
<cfscript>
    numberArray = [10,99,27,72];
    writeDump(arraySum(numberArray));
    writeDump(numberArray.sum());
</cfscript>

<hr/>
<!--- array max --->
<cfscript>
    numberArray = [10,99,27,72,23,44,675,663];
    writeDump(arrayMax(numberArray));
    writeDump(numberArray.max());
</cfscript>

<hr/>
<!--- array len --->
<cfscript>
    numberArray = [10,99,27,72,23,44,675,663];
    writeDump(arrayLen(numberArray));
    writedump(numberArray.len());
</cfscript>

<hr/>
<!--- array mid --->
<cfscript>
    numberArray = [10,99,27,72,23,'true',44,"umang",675,663];
    writeDump(numberArray.mid(5,5));
    writeDump(arrayMid(numberArray,2,3));
</cfscript>

<hr/>
<!--- arrayNew --->
<cfscript>
    variables.name = arrayNew()
    arrayAppend(name, "umang");
    name.append(['23','233','2345','4234'], true);
    writeDump(name);
</cfscript>

<hr/>
<!--- array min --->
<cfscript>
    numberArray = [10,99,27,72,23,44,675,663];
    writeDump(arrayMin(numberArray));
    writeDump(numberArray.min());
</cfscript>

<hr/>
<!--- array avarage --->
<cfscript>
    numberArray = [10,99,27,72,23,44,675,663];
    writeDump(arrayAvg(numberArray));
    writeDump(numberArray.avg());
</cfscript>


<hr/>
<!--- array set --->
<cfscript>
    variables.numberArray = arrayNew();
    arraySet(numberArray, 1, 4, "this is coldFusion");
    arrayAppend(numberArray,"umang");
    writeDump(numberArray);
    numberArray.set(1, 4, "this is coldFusion");
    writeDump(numberArray);
</cfscript>


<cfscript>
    numbers = [ 1, 2, 3, 4 ];
    Dump( ArrayPush( numbers, 0 ) ); 
    moreNumbers = [ 5, 6, 7, 8 ];
    moreNumbers.push(10);
    dump(numbers);
    dump(moreNumbers);
</cfscript>




