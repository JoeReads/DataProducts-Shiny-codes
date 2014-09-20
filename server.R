FTEs <- function(hours) hours / 2080
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$hours})
    output$prediction <- renderPrint({FTEs(input$hours)})
  }
)