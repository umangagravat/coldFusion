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
        th, td {
            padding: 10px;
            border-right: 1px solid rgb(0, 0, 0);
            border-bottom: 1px solid black;
        }
        table tr:last-child th,
        table tr:last-child td{
            border-bottom: none;
        }
        table th:last-child{
            border-right: none;
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
        <cfmodule template="/includes/header.cfm" header="#url.name#">
        <div class="navbar">
            <cfmodule template="/includes/sidebar.cfm" >
            <div class="task">
                <table cellspacing="0" cellpadding="0">
                    <tr>
                        <td rowspan="2">Main mode</td>
                        <td colspan="6">Area of workplace</td>
                    </tr>
                    <tr>
                        <th>Central <br> London</th>
                        <th>Rest of inner <br> London</th>
                        <th>Outer <br> London</th>
                        <th>All <br> London</th>
                        <th>Rest of great<br> London</th>
                        <th>Great<br> London</th>
                    </tr>
                    <tr>
                        <th>Car and van</th>
                        <td>48</td>
                        <td>32</td>
                        <td>25</td>
                        <td>29</td>
                        <td>20</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <th>Motorbike, moped, scooter</th>
                        <td>36</td>
                        <td>29</td>
                        <td>27</td>
                        <td>31</td>
                        <td>19</td>
                        <td>21</td>
                    </tr>
                    <tr>
                        <th>Bicycle</th>
                        <td>33</td>
                        <td>24</td>
                        <td>20</td>
                        <td>25</td>
                        <td>15</td>
                        <td>17</td>
                    </tr>
                    <tr>
                        <th>Bus and coach</th>
                        <td>47</td>
                        <td>39</td>
                        <td>36</td>
                        <td>40</td>
                        <td>33</td>
                        <td>34</td>
                    </tr>
                    <tr>
                        <th>Natonal rail</th>
                        <td>69</td>
                        <td>66</td>
                        <td>43</td>
                        <td>66</td>
                        <td>47</td>
                        <td>58</td>
                    </tr>
                    <tr>
                        <th>Underground, tram, light rail</th>
                        <td>49</td>
                        <td>45</td>
                        <td>37</td>
                        <td>47</td>
                        <td>42</td>
                        <td>46</td>
                    </tr>
                    <tr>
                        <th>Walk</th>
                        <td>21</td>
                        <td>16</td>
                        <td>13</td>
                        <td>15</td>
                        <td>12</td>
                        <td>13</td>
                    </tr>
                    <tr>
                        <th>All Models</th>
                        <td>55</td>
                        <td>39</td>
                        <td>27</td>
                        <td>39</td>
                        <td>20</td>
                        <td>23</td>
                    </tr>
                </table>
            </div>
        </div>
        <cfmodule template="/includes/footer.cfm" >
    </div>
</div>
</body>
</html>