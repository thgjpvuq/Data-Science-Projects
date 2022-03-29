library(shiny)

# load iris data set
data("iris")
iris

# Define UI
ui <- fluidPage(
  titlePanel("title panel"),
  
  sidebarLayout(
    sidebarPanel(
      "sidebar panel",
      selectInput(
        "col",
        label = "Select color",
        choices = c("blue",
                    "orange",
                    "yellow"),
        selected = "blue"
      )
    ),
    mainPanel(
      "main panel",
      plotOutput(
        "SL" # Sepal.Length
      ),
      plotOutput(
        "SW" # Sepal.Width
      ),
      plotOutput(
        "PL" # Petal.Length
      )
    )
  )
)

# Define server logic
server <- function(input, output) {
  
  output$SL <- renderPlot({
    
    hist(
      x = iris$Sepal.Length,
      main = "Sepal.Length",
      xlab = "cm")
  })
  
  output$SW <- renderPlot({
    
    hist(
      x = iris$Sepal.Width,
      main = "Sepal.Width",
      xlab = "cm")
  })
  
  output$PL <- renderPlot({
    
    hist(
      x = iris$Petal.Length,
      main = "Petal.Length",
      xlab = "cm")
  })
}

# Run the app
shinyApp(ui = ui, server = server)
