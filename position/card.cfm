<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/assets/style.css">
    <link rel="stylesheet" href="/assets/flexbox1.css">
</head>
<body>
    <div class="main">
        <cfmodule template="/includes/header.cfm" header="#url.name#">
        <div class="navbar">
            <cfinclude template="/includes/sidebar.cfm" />
            <div class="task">
                <div class="body">
                    <div class="card-1">
                        <div class="cardhead">
                            <div class="i-con">
                                <img src="../image/icon1.png" alt="img is not found" title="header icon">
                            </div>
                            <div class="cardtitle">
                                <p>Small Business</p>
                            </div>
                        </div>
                        <div class="cardcontent">
                            <ul>
                                <li>Business</li>
                                <ul>
                                    <li>Tab-1</li>
                                    <li>Tab-2</li>
                                    <li>Tab-3</li>
                                </ul>
                            </ul>
                        </div>
                        <div class="cardfooter">
                            <p>My First Card</p>
                        </div>
                    </div>
                    <div class="card-2">
                        <div class="cardhead">
                            <div class="i-con">
                                <img src="../image/icon2.png" width="50vw" height="50vh" alt="img is not found" title="header icon">
                            </div>
                            <div class="cardtitle">
                                <p>Picture Gallary</p>
                            </div>
                        </div>
                        <div class="cardcontent">
                            <ul>
                                <li>Tab-1</li>
                                <li>Tab-2</li>
                                <li>Tab-3</li>
                            </ul>
                        </div>
                        <div class="cardfooter">
                            <P>My Second Card</P>
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