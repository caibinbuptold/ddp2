library(shiny)

shinyServer(
  function(input, output) {
    x <- reactive({      
      r=5
      if(input$range == "TEN")    r=10
      if(input$range == "FITEEN") r=15
      if(input$range == "TWTEEN") r=20  
      r
    }) 
    output$text1 <- renderText(
      paste( "Input parameter: mean=", {input$mu} ,", sd=", {input$sigma}, ", range=[-", x(), ",", x(), "]" )
    )
    output$nPlot <- renderPlot({ 
      r <- x()
	    x <- seq(-r,r,length=1000)
      y <- dnorm(x,mean={input$mu}, sd={input$sigma})
      plot(x, y, type="l", lwd=1)
	  })
  }
)
