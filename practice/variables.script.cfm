<cfscript>

    param name="url.name" default="umang";
    param name="url.rollNo" default="79";

    variables.city = "Ahmedabad";
    writeDump(city);
    variables.state = "Gujarat";
    writeDump(state);
    // abort;
    writeOutput("<h1>#variables.city#</h1>")

    variables.arr = ["umang","ajay","chirag","jaydeep"];
    arrayAppend(arr, "mehul");
    arrayAppend(arr, "jay");
    writeDump(arr);

    variables.profile = arrayNew();
    arrayAppend(profile, "rahul");
    arrayAppend(profile, "rohit");
    arrayAppend(profile, ["umang","ajay","chirag"]);
    writeDump(profile);


    variables.struct = [
        "id" : "1",
        "name" : "virat",
        "age" : "35"
    ]
    writeDump(struct);

    writeOutput("
                    <table cellspacing = 0 border = 1px solid black>
                        <tr>
                            <th>id</th>
                            <th>name</th>
                            <th>age</th>
                        </tr>
                        <tr>
                            <td>id</td>
                            <td>umang</td>
                            <td>22</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>ajay</td>
                            <td>23</td>
                        </tr>
                    </table>
                ")

</cfscript>