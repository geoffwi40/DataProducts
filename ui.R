library(shiny)

shinyUI(pageWithSidebar(  
headerPanel("Visualisation of HP to MPG for Different cylinders and transmission types from the Motor trends data set"),  
sidebarPanel(    
    radioButtons("cyl", "Number of cylinders:",
           c("4 cylinders" = "4",
             "6 cylinders" = "6",
             "8 cylinders" = "8")),
    radioButtons("trans", "Tranmission Type:",
                 c("Automatic" = "0",
                   "Manual" = "1"))), 
mainPanel(    
    plotOutput('myplot')  
)
))