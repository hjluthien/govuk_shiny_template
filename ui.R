#### libraries and global variables ####

library(shiny)
library(flexdashboard)

#### page and source css or js ####

shinyUI(
  fluidPage(
    
    theme = "style.css",
    
    #### header ####
    
    fluidRow(
      id = "header",
      
      column(id = "crown",
             width = 1,
             offset = 1,
             img(src = "apple-touch-icon-60x60.png")
      ),
      
      column(id = "govuk-link",
             width = 2,
             #offset = 2,
             a(href = "https://www.gov.uk/", alt = "Gov UK homepage", h2("GOV.UK", style = "color:white;font-weight:bold"))
      )
    ),
    
    fluidRow(
      column(id = "alpha",
             width = 1, 
             offset = 1,
             h5("ALPHA")),
      
      column(id = "support-text",
             width = 10,
             p("This is a new service – your will help us to improve it.", 
               style = "font: sans-serif;"))
    ),
    
    
    fluidRow(
      column(id = "app-name",
             width = 10, 
             offset = 1,
             h1("Name of your tool", 
                style="font-weight: bold;font: sans-serif;")
             )
      ),
    
    #### support text ####
    
    br(),
    
    fluidRow(
      id = "support-text",
      
      column(width = 11, 
             offset = 1,
             p("Enter description here", 
               style = "font: sans-serif;")
             )
      ),
    
    #### inputs ####
    
    fluidRow(
      column(width = 5,
             offset = 1,
             h3("Enter what information you want the user to enter", style="padding: 0px ;font-weight: bold;")
             
             # enter inputes here here
             
             ), # close sidebar panel #####
      
      #### outputs ####
      
      #      mainPanel(width = 6,
      column( width = 5,
              br(),
              
              div(class="output",
                  htmlOutput(outputId = "likelihood",  align = "center"),
                  style='padding:10px;',
                  style = "background-color: #005EA5;",
                  style = "color:white"
                  ),
              
              br(),
              
              fluidRow(
                id = "support-text"
                )
              )
      ), # close FLuidRow
    
    br(),
    
    ##### close outputs      
    #    ), # close sidebar layout
    
    #### footer ####
    
    fluidRow(
      
      id = "footer",
      
      column(id = "OGL",
             width = 1, offset = 1,
             img(src = "open-government-licence_2x.png", alt = "OGL")
             ),
      
      column(id = "OGL-text",
             width = 6,
             p("All content is available under the ", 
               a(href = "https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/",
                 "Open Government Licence v3.0"),
               " except where otherwise stated")
             ),
      
      column(id = "crest",
             width = 1,
             img(src = "govuk-crest-2x.png", alt = "crest")
             )
      )
    
    #### closing fluidPage and shinyUI ####
  )
)



