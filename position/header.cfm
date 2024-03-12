<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/assets/style.css">
    <style>
        .container1{
            background-color: blanchedalmond;
            border: 1px solid black;
            height: 70vh;
            width: 60vw;
        }
        .cardmenu{
             background-color: rgb(168, 238, 229);
             height: 12vh;
             width: 60vw;
             margin-top: 1rem;
             display: flex;
             justify-content: center;
             font-weight: bold;
        }


        .header ul{
            display:flex;
            justify-content: flex-end;
        }

        .header ul li{
            align-items: flex-end;
            list-style-type: none;
            border-radius: 10px;
            font-family:Georgia;
            margin: 1rem;
            padding: 0.5rem;
            transition: 0.4s ease;
        }

        .header ul li:hover{
            background-color: cadetblue;
        }
    </style>
</head>
<body>
    <div class="main">
        <cfmodule template="/includes/header.cfm" header="#url.name#">
        <div class="navbar">
            <cfinclude template="/includes/sidebar.cfm" />
            <div class="task">
                <div class="container1">
                    <div class="cardmenu">
                        <div class="icon">
                            <img src="../image/icon3.png" alt="img is not found" title="header icon">
                        </div>
                        <div class="header">
                            <ul>
                                <li><a href="#"></a>Home</li>
                                <li><a href="#"></a>Academic</li>
                                <li><a href="#"></a>Facuity</li>
                                <li><a href="#"></a>Conference</li>
                                <li><a href="#"></a>About Us</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <cfinclude template="/includes/footer.cfm" />
    </div>
</div>
</body>
</html>