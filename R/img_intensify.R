

#' Viewing images on full screen
#'
#' @param target By default, the function intensifies all the images (<img> tag) however the user can target specific classes
#' @return images that when clicked can be viewed on full screen no matter their initial size
#' @export
#'
#' @examples
#'
#' if (interactive()) {
#'
#' library(shiny)
#'
#' ui <- fluidPage(
#'
#' h1("Click on the image to view it in full screen"),
#'
#' img(src = "https://www.r-project.org/logo/Rlogo.png",
#'
#' width = "200px", height = "200px"),
#'
#' img_intensify()
#'
#' )
#'
#' server <- function(input, output) {
#'
#' }
#'
#' shinyApp(ui = ui, server = server)
#'
#'}
#'



img_intensify <- function(target = "img"){


htmltools::tagList(

  intense_dependency(),

  htmltools::tags$script(htmltools::HTML(glue::glue(

    "
 window.onload = function() {{

  var element = document.querySelectorAll( '{target}' );
	Intense( element );

    }}"




  )))



)





}


