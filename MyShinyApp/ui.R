library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        titlePanel(h1("My Generic Treadmill Calorie Calculator")),
        sidebarLayout(
                sidebarPanel(
                        h3("CALORIES BURNED ON TREADMILL"),
                        p("See what all that effort is worth (in calories)!"),
 
                        img(src = "Treadmill.jpg", height = 150, width = 220),
                        br(),
                        br(),
                        helpText("Fill in below and hit 'Submit' to calculate"),
                        br(),
                        numericInput('duration','Duration (minutes on treadmill):', 30, min = 5, max = 180, step = 1),

                        numericInput('weight','Weight (lbs):', 150, min = 45, max = 400, step = 5),

                        numericInput('speed','Speed (average mph):', 6, min = 1, max = 30, step = 1),

                        numericInput('grade','Grade (%):', 0, min = 1, max = 60, step = 1),
                        
                        #helpText("Enter Breed"),
                        selectInput('var', 
                                    label = "What are you? Please enter.",
                                    choices = list("Human", "Dog"),
                                    selected = "Human"),
                        submitButton('Submit')
                        
                        
                ),
                mainPanel(
                        h3('Here are your calculation results based on your input'),
                        br(),
                        br(),
                        h4('You claim you are a'),
                        verbatimTextOutput("text1"),
                        h4('The number of calories burned is: '),
                        verbatimTextOutput("calorieCalc"),
                        h5('(Regardless of whether your are human or dog)')
                        
                        )
        )
))
