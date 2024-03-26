
<DOCTYPE html>
  <html>
      <head>
          <title>Login Page</title>
          <cfinclude template="/includes/scripts.cfm" />
      </head>
     
      <body class="m-0 p-0">
          <cfoutput>              
              <form name="frmLoginPage" id="frmLoginPage" method="post" action="index-action.cfm">
                  <div class="bg-secondary w-100 h-100 d-flex justify-content-center align-items-center">
                      <div class="bg-dark w-50 h-75 d-flex justify-content-center align-items-center flex-column">
                          <cfif url.keyExists('message') and trim(url.message) NEQ "">
                            <div class="alert alert-warning">
                              #url.message# 
                            </div>
                          </cfif>
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
          <script>
              function fun_submit() {
                  const frm = document.frmLoginPage;
                  
                  if(!isBlank(frm.email, 'Please enter your email!')) {
                      return false;
                  }

                  if(!isBlank(frm.password, 'Please enter your password!')) {
                      return false;
                  }
                  frm.submit();
              } 
          </script>  
      </body>
  </html>