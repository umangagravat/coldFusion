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
            border: 1px solid black;   
            border-radius: 5px;
            width: 50vw;
            height: 50vh;
        }
        td, th{
            padding: 20px;
            border-bottom:1px solid black;
            border-right: 1px solid black;
        }
        table tr:last-child td{
            border-bottom: none;
        }
        table tr:last-child th,
        table tr:last-child td{
            border-right: none;
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
            <cfinclude template="/includes/sidebar.cfm" />
            <div class="task">
                <table cellspacing="0" cellpadding="0">
                    <caption>Invoice</caption>
                    <tr>
                         <th>Item/Desc.</th>
                         <th>Qty.</th>
                         <th>@</th>
                         <th>Price</th>
                    </tr>
                    <tr>
                        <td>Paperclips(box)</td>
                        <td>100</td>
                        <td>1.15</td>
                        <td>115.00</td>
                    </tr>
                    <tr>
                        <td>Paper(Case)</td>
                        <td>10</td>
                        <td>45.99</td>
                        <td>459.90</td>
                    </tr>
                    <tr>
                        <td>Wastepaper<br>Baskets</td>
                        <td>2</td>
                        <td>17.99</td>
                        <td>35.98</td>
                    </tr>
                    <tr>
                        <td colspan="3">Subtotal</td>
                        <td>610.88</td>
                    </tr>
                    <tr>
                        <td colspan="2">Tax</td>
                        <td>7%</td>
                        <td>42.76</td>
                    </tr>
                    <tr>
                        <td colspan="3">Total</td>
                        <td>653.64</td>
                    </tr>
                </table>
            </div>
        </div>
        <cfinclude template="/includes/footer.cfm" />
    </div>
</body>
</html>