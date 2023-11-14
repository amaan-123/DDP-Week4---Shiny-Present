#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/


#SERVER.R 
library(shiny) 
#writing server function 
shinyServer(function(input, output) 
{ 
  #referring output distPlot in ui.r as output$distPlot   
  output$distPlot <- renderPlot({ 
    #referring input 'var' in ui.r as input$var   
    
    if(input$var=='mpg'){       
      i<-1     
    }     
    if(input$var=='cyl'){
      i<-2     
    }     
    if(input$var=='disp'){       
      i<-3     
    }     
    if(input$var== 'hp'){       
      i<-4     
    } 
    if(input$var=='drat'){       
      i<-5     
    } 
    
    if(input$var=='wt'){       
      i<-6     
    } 
    
    if(input$var=='qsec'){       
      i<-7     
    } 
    
    if(input$var=='vs'){       
      i<-8     
    } 
    if(input$var=='am'){       
      i<-9     
    } 
    if(input$var=='gear'){       
      i<-10     
    } 
    if(input$var=='carb'){       
      i<-11     
    } 
    
    if(i %in% c(1, 3:7)){
      x <- mtcars[,i] 
      x0 <- mtcars[i]
      header = paste("Histogram of a Continuous Variable:", names(x0))
      #referring input bins in ui.r as input$bins     
      bins <- seq(min(x), max(x), length.out = input$bins + 1) 
      #producing histogram as output     
      hist(x, breaks = bins, col = 'darkblue', border = 'white', xlab = names(x0),  ylab='Frequency', main = header)  
    }
    else {
      x2 <- mtcars[i]
      header = paste("Bar Chart of a Categorical Variable:", names(x2))
      barplot(table(x2), main = header, col="darkgreen", xlab = names(x2), ylab='Frequency')
    }
  }) 
})
