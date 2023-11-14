# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/


library(shiny) 
shinyUI(
  navbarPage("Shiny Application",
             tabPanel("Analysis",
                      fluidPage(   
                        titlePanel("mtcars Dataset"),   
                        sidebarLayout(     
                          sidebarPanel(       
                            radioButtons("var", "Select a variable of mtcars dataset:",                    
                                         list("mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb")),
                            sliderInput("bins",                   
                                        "Number of bins for histogram:",                   
                                        min = 1,                   
                                        max = 50,                   
                                        value = 30)
                          ),
                          mainPanel(
                            plotOutput("distPlot"),
                            plotOutput("distplot") 
                          )   
                        )                            
                      )  
             ),
             tabPanel("About the Data Set",
                      h2("Course Project: Shiny Application and Reproducible Pitch"),
                      h3("Data Description"),
                      helpText("The dataset 'mtcars' was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973--74 models)"),
                      p("This dataset consits of 32 observations on 11 numeric variables"),
                      
                      h3("Data Format"),
                      h6("1.  mpg:	Miles/(US) gallon"),
                      h6("2.  cyl:	Number of cylinders"),
                      h6("3.  disp:	Displacement (cu.in.)"),
                      h6("4.  hp:   Gross horsepower"),
                      h6("5.  drat:	Rear axle ratio"),
                      h6("6.  wt:  	Weight (1000 lbs)"),
                      h6("7.  qsec:	1/4 mile time"),
                      h6("8.  vs:	  Engine (0 = V-shaped, 1 = straight)"),
                      h6("9.  am:  	Transmission (0 = automatic, 1 = manual)"),
                      h6("10. gear:	Number of forward gears"),
                      
                      h3("Data Source"),
                      p("https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/mtcars")
             ),
             
             tabPanel("Project Instruction", 
                      h2("Developing Data Products - Week4 Assignment: Shiny Application and Reproducible Pitch"),
                      
                      h3("This assignment has two parts"),
                      h5("1. Shiny Application"), 
                      h5("2. Reproducible Pitch Presentation"),
                      
                      h5("First you will create a Shiny application and deploy it on Rstudio's servers. Second, you will use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about your application")
             )
             
  )
)