<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/assets/style.css">
    <style>
        .parent{
            right:5rem;
            top: 13rem;
            position:absolute;
            background-color: rgb(235, 188, 150);
            font-size: 30px;
            height: 100vh;
            justify-items: center;
            text-align: center;
            width: 800px;
            height: 400px;
        }
        .child-one{
            background-color: rgb(124, 212, 124);
            position: absolute;
            top: 0;
            width: 100px;
            height: 100px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .child-two{
            background-color: rgb(231, 136, 136);
            position: absolute;
            right: 0;
            top: 0;
            width: 100px;
            height: 100px;
            justify-content: center;
            align-items: center;
            display: flex;
        }
        .child-three{
            background-color: pink;
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 100px;
            justify-content: center;
            align-items: center;
            display: flex;
        }
    </style>
</head>
<body>
    <div class="main">
        <cfmodule template="/includes/header.cfm" header="#url.name#">
        <div class="navbar">
            <cfinclude template="/includes/sidebar.cfm" />
            <div class="task">
                <div class="parent">
                    Parent
                    <div class="child-one">One</div>
                    <div class="child-two">Two</div>
                    <div class="child-three">Three</div>
                </div>
            </div>
        </div>
        <cfinclude template="/includes/footer.cfm" />
    </div>
</div>
</body>
</html>