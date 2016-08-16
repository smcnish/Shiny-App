library(shiny)

ui<- fluidPage(
  sliderInput(inputId= "num", label = "Choose number of bins", min=1, max=25, value = 10, step = 1) , 
  plotOutput(outputId = "hist")
)