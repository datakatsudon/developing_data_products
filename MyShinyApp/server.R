library(shiny)

calorieCalc <- function(duration,speed,grade,weight) duration * (((0.2*speed)+(0.9*speed*grade)+3.5)*3.5*(weight/2.20462262185))/200


# Define server logic required to draw a histogram
shinyServer(function(input, output) {

        output$text1 <- renderText({input$var})
#        output$text1 <- renderText({ 
#                paste("You say you are a", input$var)
#        })
        output$calorieCalc <- renderText({calorieCalc(input$duration,input$speed,input$grade,input$weight)})       
        
})
