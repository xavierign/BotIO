function(input, output) {

  output$value <- renderText({ grade_response(input$response,input$definition) })
}