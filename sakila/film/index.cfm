<cfparam name="url.page" default="1"/>
<cfparam name="url.maxRows" default="10" />

<cfset variables.utility = new components.utility() />
<cfset variables.qFilms = new components.filmGateway().filmList(
        page = url.page,
        maxRows = url.maxRows       
    )/> 

<DOCTYPE html>
<html>
    <head>
        <title>Film</title>
        <cfinclude template="/includes/scripts.cfm" />
        <script>
            <cfinclude template="/assets/helper.js" />
        </script>
    </head>
    <body>
        <cfoutput>

            <cfinclude template="/includes/header.cfm" />

            <div class="d-flex">
                <div class="p-4">
                    <a href="add-edit.cfm" class="text-decoration-none bg-secondary p-2 text-white r-2 rounded">New Film</a>
                </div>

                <div aria-label="breadcrumb">
                    <ol class="breadcrumb p-4">
                        <li class="breadcrumb-item"><a href="/dashboard.cfm">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Film</li>
                    </ol>
                </div>
            </div>


            <div class="p-4">
                <cfset variables.columns = [
                    {
                        "label": "ID",
                        "fieldName": "film_id",
                        "classes": "text-center"
                    },
                    {
                        "label": "Title",
                        "fieldName" : "title"
                    },
                    {
                        "label" : "Description",
                        "fieldName" : "description"
                    },
                    {
                        "label" : "Release Year",
                        "fieldName" : "release_year",
                        "content" : (film) => {
                            return dateFormat(variables.qFilms.release_year, 'yyyy')
                        }
                    },
                    {
                        "label" : "language",
                        "fieldName" : "language_id"
                    },
                    {
                        "label" : "Retal Rate",
                        "fieldName" : "rental_rate"
                    },
                    {
                        "label" : "Length",
                        "fieldName" : "length"
                    },
                    {
                        "label" : "Replacement Cost",
                        "fieldName" : "replacement_cost"
                    },
                    {
                        "label" : "Rating",
                        "fieldName" : "rating"
                    },
                    {
                        "label" : "Spacial Features",
                        "fieldName" : "special_features"
                    },
                    {
                        "label" : "Actions",
                        "content" : (film) => {
                            var edit = '<a href="add-edit.cfm?id=#film.film_id#">Edit</a>';
                            return edit;
                        }
                    }
                ] />

                <cfset variables.utility.PrintTable(
                    columns = variables.columns,
                    qData = variables.qFilms
                )/>
            </div>

            <input type="hidden" name="page" value="#url.page#" />
            <div class="p-3 d-flex justify-content-around">
                <button class="p-2 btn btn-secondary" type="button" onclick="previousPage()">Previous Page</button>
                <button class="p-2 btn btn-secondary" type="button" onclick="nextPage()">Next Page</button>
            </div>   

        </cfoutput>
    </body>
</html>