<cfparam name="url.name" default=""/>

<div class="menu">
    <h2>Tables</h2>
    <ul>
        <li class="li <cfif url.name eq 'employee'>active</cfif>"><a href="/table/table1.cfm?name=employee">Employee</a></li>
        <li class="li <cfif url.name eq 'seminar'>active</cfif>"><a href="/table/table2.cfm?name=seminar">Seminars</a></li>
        <li class="li <cfif url.name eq 'invoice'>active</cfif>"><a href="/table/table3.cfm?name=invoice">Invoice</a></li>
        <li class="li <cfif url.name eq 'marksheet'>active</cfif>"><a href="/table/table4.cfm?name=marksheet">Marksheet</a></li>
        <li <cfif url.name eq 'workplace_area'>style="background:rgb(168, 207, 255);"</cfif>><a href="/table/table5.cfm?name=workplace_area">Workplace area</a></li>
        <li <cfif url.name eq 'timetable'>style="background:rgb(168, 207, 255);"</cfif>><a href="/table/table6.cfm?name=timetable">Timetable</a></li>
        <li <cfif url.name eq 'human'>style="background:rgb(168, 207, 255);"</cfif>><a href="/table/table7.cfm?name=human">Human</a></li>
        <li <cfif url.name eq 'position'>style="background:rgb(168, 207, 255);"</cfif>><a href="../position/position.cfm?name=position">Position</a></li>
        <li <cfif url.name eq 'flexboxname'>style="background:rgb(168, 207, 255);"</cfif>><a href="../position/card.cfm?name=flexboxname">Flexbox Card</a></li>
        <li <cfif url.name eq 'menu'>style="background:rgb(168, 207, 255);"</cfif>><a href="../position/header.cfm?name=menu">Menu</a></li> 
        <li><a href="../flexbox/flexbox2.cfm">Flexbox 1</a></li> 
        <li><a href="../flexbox/flexbox3.cfm">Flexbox 2</a></li> 
        <li><a href="../flexbox/flexbox4.cfm">Flexbox 3</a></li>
    </ul>
</div>