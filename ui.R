library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Bin's Work for Developing Data Products!"),
  sidebarPanel(
    h5("This application need three parameter, mu and sigma is the mean and sd of normal distribution, range is the interval, and then picture of that distribution will be drawn." ),
    sliderInput(inputId = "mu",
                label = "Parameter mu:",
                min = -10,
                max = 10,
                value = 0,
                step = 0.1),
    
    sliderInput(inputId = "sigma",
                label = "Parameter sigma:",
                min = 0,
                max = 10,
                value = 1,
                step = 0.1),
    
    radioButtons(inputId = "range",
                 label = "Parameter range:",
                 choices = list("-5, 5" = "FIVE",
                                "-10, 10" = "TEN",
                                "-15, 15" = "FITEEN",
                                "-20, 20" = "TWTEEN"))
  ),
  mainPanel(
      textOutput('text1'),
      plotOutput("nPlot")
  )
))
