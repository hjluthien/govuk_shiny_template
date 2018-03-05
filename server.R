#### Load libraries and define shiny server ####

library(shiny)
library(flexdashboard)

shinyServer(function(input,output){
  
  output$likelihood <- renderUI({
    HTML(paste("<p><font size=8>  <span style='color:white;font:sans-serif;'> 
               insert your ourput here </span></font></p>" 
              ))})
})
