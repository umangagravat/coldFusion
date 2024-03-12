<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/assets/style.css">
    <style>
        table{
        border: 1px solid black;
        margin: 60px;
        margin-top: 2rem;
        border-radius: 5px;
        width: 50vw;
        height: 50vh;
       }
        th, td{
            border-bottom: 1px solid black;
            border-right: 1px solid black;
            padding: 10px;
        }
        table tr:last-child td{
            border-bottom: none;
        }
        table tr:last-child th{
            border-bottom: none;
        }
        table td:last-child{
            border-right: none;
        }
        table td:last-child{
            border-right: none;
        }
        table th:last-child{
            border-right: none;
        }
    </style>
</head>
<body>
    <div class="main">
        <cfmodule template="/includes/header.cfm" header="#url.name#" >
        <div class="navbar">
            <cfmodule template="/includes/sidebar.cfm" >
            <div class="task">
                <table cellspacing="0" cellpadding="0">
                    <caption>A <i>testvtable with merged cells</i></caption>
                    <tr>
                        <th rowspan="2"></th>
                        <th colspan="2" style="padding: 10px;">Average</th>
                        <th rowspan="2" style="padding: 15px;">Red<br>eyes</th>
                    </tr>
                    <tr>
                        <th style="padding: 10px;">Height</th>
                        <th style="padding: 10px; border-right: 1px solid black;">Weight</th>
                    </tr>
                    <tr>
                        <th style="padding: 10px;">Males</th>
                        <td>1.9</td>
                        <td>0.003</td>
                        <td>40%</td>
                    </tr>
                    <tr>
                        <th style="padding: 10px;">Females</th>
                        <td>1.7</td>
                        <td>0.002</td>
                        <td>43%</td>
                    </tr>
                </table>
            </div>
        </div>
        <cfmodule template="/includes/footer.cfm" >
    </div>
</div>
</body>
</html>