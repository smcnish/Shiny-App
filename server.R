library(shiny)

server <- function(input, output) {
  output$hist <- renderPlot({ 
    
    hist(AirPassengers, main="Histogram for Air Passengers",
         xlab="Passengers", ylab= "Frequency of Passengers", border="black",col="red", 
         xlim=c(100,700),las=1,breaks=input$num, prob=TRUE)
    
    lines(density(AirPassengers)) 
  })
  
}