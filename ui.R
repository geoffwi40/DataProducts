library(shiny)

shinyUI(pageWithSidebar(  
headerPanel("Correlation of HP to MPG for Different cyl and transmission types "),  
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