library(UsingR)
library(ggplot2)
data(mtcars)

shinyServer(  
    function(input, output) {        
        output$myplot <- renderPlot({ 
            reduced_data<-subset(mtcars,cyl==input$cyl & am==input$trans)
            ggplot(reduced_data,aes(x=mpg,y=hp))+ geom_point() +
                stat_smooth(method = "lm", col = "red")
  
        })      }
)