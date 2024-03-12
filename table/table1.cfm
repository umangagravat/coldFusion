<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/assets/style.css" />
    <style>
        table{
            margin: 1em; 
            margin-top: 2rem;
            font-size: 1em;
            height: 50vh;
            width: 50vw;
            border: 1px solid black;
            border-radius: 5px;
        }
        img{
            width: 10vw;
            height: 20vh;
        }
        td, th{
            padding: 1rem;
            border-bottom: 1px solid black;
            border-right: 1px solid black ;
        }
        table th:last-child,
        table td:last-child{
            border-right: none;
        }
        table tr:last-child td{
            border-bottom: none
        }

    </style>
</head>
<body>
    <div class="main">
        <cfmodule template="/includes/header.cfm" header="#url.name#">
        <div class="navbar">
            <cfinclude template="/includes/sidebar.cfm" />
            <div class="task">
                <table>
                    <tr>
                        <th>No</th>
                        <th>Image</th>
                        <th>Frist Name</th>
                        <th>Last Name</th>
                        <th>Age</th>
                        <th>Hubby</th>
                   </tr>
                        <tr>
                            <td>1</td>
                            <td><img src="./profile.png" height="100" width="100"></td>
                            <td>James</td>
                            <td>Frosty</td>
                            <td>25</td>
                            <td><a href="https://www.w3schools.com/html/default.asp">Swimming</a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><img src="./profile.png" height="100" width="100"></td>
                            <td>Anna</td>
                            <td>Bayo</td>
                            <td>23</td>
                            <td><a href="https://www.w3schools.com/html/default.asp">Cooking</a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><img src="./profile.png" height="100" width="100"></td>
                            <td>James</td>
                            <td>Lartey</td>
                            <td>22</td>
                            <td><a href="https://www.w3schools.com/html/default.asp">Rapping</a></td>
                        </tr>
                   </table>
            </div>
        </div>
        <cfinclude template="/includes/footer.cfm" />
    </div>
</div>
</body>
</html>