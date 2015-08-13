library(shiny)
library(UsingR)

shinyServer(
        function(input, output) {
                output$text1 <- renderText({input$text1})
                output$text2 <- renderText({input$sdin})
                output$newgauss <- renderPlot({
                        x   <- seq(-10,10,length=2000)
                        meanin<-input$text1
                        sdin<-input$sdin
                        meanin<-as.numeric(meanin)
                        sdin<-as.numeric(sdin)
                        y   <- dnorm(x,mean=meanin, sd=sdin)
                        plot(x,y, type="l", lwd=1, col='lightblue',main='Gaussian Function')
                        
                        lines(c(meanin+sdin, meanin+sdin), c(0, 200),col="red",lwd=5)
                        lines(c(meanin-sdin, meanin-sdin), c(0, 200),col="red",lwd=5)                                        
                })
                
        }
)