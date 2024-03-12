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
            padding: 5px;
            border-bottom: 1px solid black;
            border-right: 1px solid black;
        }

        table tr:last-child td{
            border-bottom: none;
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
        <cfmodule template="/includes/header.cfm" header="#url.name#">
        <div class="navbar">
            <cfmodule template="/includes/sidebar.cfm" >
            <div class="task">
                <table cellspacing="0" cellpadding="0">
                    <tr>
                        <th colspan="2" rowspan="2">Student</th>
                        <th colspan="4">Exam</th>
                        <th colspan="4">2nd Exam</th>
                        <th colspan="2" rowspan="2">Final Grade</th>
                    </tr>
                    <tr>
                        <th>Q1</th>
                        <th>Q2</th>
                        <th>Q3</th>
                        <th rowspan="2">Grade</th>
                        <th>Q1</th>
                        <th>Q2</th>
                        <th>Q3</th>
                        <th rowspan="2" style="border-right: 1px solid black;">Grade</th>
                    </tr>
                    <tr>
                        <th>Code</th>
                        <th>Name</th>
                        <td>8</td>
                        <td>7</td>
                        <td>5</td>
                        <td>6</td>
                        <td>7</td>
                        <td>8</td>
                        <th>NR</th>
                        <th>R</th>
                    </tr>
                    <tr>
                        <td>80549062</td>
                        <td>John</td>
                        <td>70%</td>
                        <td>100%</td>
                        <td>100%</td>
                        <td>17.6</td>
                        <td colspan="4"></td>
                        <td>17.6</td>
                        <td>18</td>
                    </tr>
                    <tr>
                        <td>80549062</td>
                        <td>mary</td>
                        <td>10%</td>
                        <td>50%</td>
                        <td>50%</td>
                        <td>6.8</td>
                        <td>100%</td>
                        <td>100%</td>
                        <td>50%</td>
                        <td>16.5</td>
                        <td>16.5</td>
                        <td>17</td>
                    </tr>
                    <tr>
                        <td>80549063</td>
                        <td>Claire</td>
                        <td colspan="4"></td>
                        <td>50%</td>
                        <td>50%</td>
                        <td>50%</td>
                        <td>10</td>
                        <td>10.0</td>
                        <td>10</td>
                    </tr>
                </table>
            </div>
        </div>
        <cfmodule template="/includes/footer.cfm" >
    </div>
</div>
</body>
</html>