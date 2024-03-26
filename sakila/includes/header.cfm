
<cfif NOT structKeyExists(session,'name')>
    <cflocation addtoken="false" url="/index.cfm?message=session_expired" />
</cfif>

<cfoutput>
    <div class="bg-dark container-fluid">
        <div class="d-flex justify-content-between">  
            <div>
                <a class=" h1 text-white text-decoration-none ms-4">Welcome #session.name# </a>
            </div>
            <div class="nav-item">
                <a class="nav-link text-white bg-success p-1 mt-2 me-5" href="/logout.cfm">Logout</a>
            </div>
        </div>
    </div>

    <div class="navbar navbar-expand-lg bg-body-tertiary w-100">
        <div class="container-fluid">
        <a class="navbar-brand" href=""></a>
        <div class="navbar-collapse">
            <ul class="navbar-nav ">
                <li class="nav-item">
                    <a class="nav-link" href="/dashboard.cfm">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/actor/index.cfm">Actors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/address/index.cfm">Address</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/customer/index.cfm">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/category/index.cfm">Category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/country/index.cfm">Country</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/film/index.cfm">Film</a>
                </li>
            </ul>
        </div>
        </div>
    </div>
</cfoutput>