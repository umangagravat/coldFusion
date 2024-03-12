<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/assets/style.css">
    <style>
        table{
            margin: 60px;
            margin-top: 2rem;
            height: 50vh;
            width: 50vw;
            border: 1px solid black;   
            border-radius: 5px;
        }
        td, th{
            padding: 10px;
            border-bottom:1px solid black;
            border-right: 1px solid black;
        }
        table tr:last-child td{
            border-bottom: none;
        }
        table th:last-child{
            border-right: none;
        }
        table td:last-child{
            border-right: none;
        }
    </style>
</head>
<body>
    <div class="main">
        <cfmodule template="/includes/header.cfm" header="#url.name#">
        <div class="navbar">
            <cfmodule template="/includes/sidebar.cfm" >
            <!--- <cfinclude template="/includes/sidebar.cfm" /> --->
            <div class="task">
                <table cellspacing="0" cellpadding="0">
                    <tr>
                        <th rowspan="3">Day</th>
                        <th colspan="3">Seminar</th>
                    </tr>
                    <tr>
                        <th colspan="2">Sehedule</th>
                        <th rowspan="2">Tople</th>
                    </tr>
                    <tr>
                        <th>Begin</th>
                        <th style="border-right: 1px solid black;">End</th>
                    </tr>
                    <tr>
                        <td rowspan="2">Monday</td>
                        <td rowspan="2">8:00 a.m</td>
                        <td rowspan="2">5:00 p.m</td>
                        <td align="center">Introduction to XML</td>
                    </tr>
                    <tr> 
                        <td>Validity,DTD and Relax NG</td>
                    </tr>
                    <tr>
                        <td rowspan="3">Tuesday</td>
                        <td>8:00 a.m</td>
                        <td>11:00 a.m</td>
                        <td rowspan="2" align="center">XPath</td>
                    </tr>
            
                    <tr>
                        <td>11:00 a.m</td>
                        <td style="border-right: 1px solid black;">02:00 p.m</td>  
                    </tr>
                    <tr>
                        <td>02:00 p.m</td>
                        <td>05:00 p.m</td>
                        <td align="center">XPath</td>
                    </tr>
                    
                    <tr>
                        <td>Wednesday</td>
                        <td>8:00 a.m</td>
                        <td>11:00 a.m</td>
                        <td align="center">XSL Formating Object </td>
                    </tr>
                </table>
            </div>
        </div>
        <cfmodule template="/includes/footer.cfm" > 
        <!--- <cfinclude template="/includes/footer.cfm" /> --->
    </div>
</div>
</body>
</html>