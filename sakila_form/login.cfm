
<DOCTYPE html>
    <html>
        <head>
            <title>Login Page</title>
        </head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
       
        <body class="m-0 p-0">
            <cfoutput>
                <form name="loginPage" id="loginPage" method="post" action="login-action.cfm">
                    <div class="bg-secondary w-100 h-100 d-flex justify-content-center align-items-center">
                        <div class="bg-dark w-50 h-75 d-flex justify-content-center align-items-center flex-column">
                            <div>
                                <h1 class="text-white">Login</h1>
                            </div>
                            <div>
                                <div class="mb-3">
                                    <label for="email" class="form-label text-white">Email address</label>
                                    <input type="email" name="email" class="form-control" id="email" >
                                </div>
                                <div class="mb-3">
                                    <label for="pass" class="form-label text-white">Password</label>
                                    <input type="password" name="password" class="form-control" id="pass">
                                </div>
                                <button type="button" class="btn btn-primary" onclick="fun_submit()">Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
            </cfoutput>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
            <script src="/assets/helper.js"></script>

            <script>
                function fun_submit() {
                    const validation = document.loginPage;

                    const { 
                        email,
                        password
                    } = validation;

                    if(!isBlank(email, 'Please enter your email!')) {
                        return false;
                    }

                    if(!isBlank(password, 'Please enter your password!')) {
                        return false;
                    }
                    validation.submit();
                } 
            </script>  
        </body>
    </html>