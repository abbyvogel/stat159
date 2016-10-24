########################
# Abby Vogel
# Lab 8
########################


library(shiny)
ad <- read.csv("Advertising.csv")


ui <- fluidPage(
  selectInput(inputId="variable", label = " Advertising Medium:", choices= c("TV", "Radio", "Newspaper")),
  plotOutput("plot")
)

server <- function(input, output) {
  output$plot <- renderPlot( { plot(ad[,input$variable], ad$Sales, pch=19, color= "blue", xlab= input$variable, ylab="Sales", main="Scatterplot")})
}


shinyApp(ui, server)