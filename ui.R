library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Gaussian plot"),
        sidebarPanel(
                textInput(inputId="text1", label = "Value of the mean"),
                sliderInput('sdin', 'Value of the standard deviation',value = 1, min = 0.01, max = 5, step = 0.05,)
        ),
        mainPanel(
                p('Value of the mean (between 10 and -10)'),
                textOutput('text1'),
                p('Value of the standard deviation'),
                textOutput('text2'),
                plotOutput('newgauss')
        )
))