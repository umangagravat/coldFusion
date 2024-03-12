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
            text-align: left;
            margin: 50px;
            margin-top: 2rem;
            border-radius: 5px;
            width: 50vw;
            height: 50vh;
          }
        th, td{
            padding: 10px;
            border-right: 1px solid black;
            border-bottom: 1px solid black;
        }
        table tr:last-child td{
            border-bottom: none;
        }
        table td:last-child{
            border-right: none;
        }
        td{
            text-align: center;
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
                    <caption>len's Timetable</caption>
                    <tr>
                        <td></td>
                        <td></td>
                        <td colspan="3">Moring</td>
                        <td>lunch</td>
                        <td colspan="4">Aftrnoon</td>
                        <td colspan="3">Evening</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>9-<br>10<br>am</td>
                        <td>10-<br>11<br>am</td>
                        <td>11-<br>12<br>am</td>
                        <td>1-2<br>pm</td>
                        <td>2-<br>3<br>pm</td>
                        <td>3-<br>4<br>pm</td>
                        <td>4-<br>5<br>pm</td>
                        <td>5-6 pm</td>
                        <td>6-<br>7<br>pm</td>
                        <td>7-<br>8<br>pm</td>
                        <td>8-9<br>pm</td>
                    </tr>
                    <tr align="center">
                        <td rowspan="2">Work</td>
                        <td>Monday</td>
                        <td colspan="3">Developmant <br> Meeting</td>
                        <td></td>
                        <td colspan="3">Client <br> Meeting</td>
                        <td>Continue</td>
                        <td colspan="3">Free</td>
                    </tr>
                    <tr align="center">
                        <td>Tuesday</td>
                        <td colspan="3">in Office</td>
                        <td></td>
                        <td colspan="7">in Office</td>
                    </tr>
                    <tr align="center">
                        <td rowspan="2">Lecture</td>
                        <td>Wednesday</td>
                        <td colspan="3">CSC205</td>
                        <td></td>
                        <td colspan="7">Preparation</td>
                    </tr>
                    <tr align="center">
                        <td>Thursday</td>
                        <td colspan="3">MAM200</td>
                        <td></td>
                        <td colspan="3">Tutorials <br> for <br> MAM200</td>
                        <td colspan="4">Free</td>
                    </tr>
                    <tr align="center">
                        <td>Research</td>
                        <td>Friday</td>
                        <td colspan="3">Research</td>
                        <td></td>
                        <td colspan="7">Research</td>
                    </tr>
                </table>
            </div>
        </div>
        <cfmodule template="/includes/footer.cfm" >
    </div>
</div>
</body>
</html>