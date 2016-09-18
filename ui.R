library(shiny)
shinyUI(navbarPage("Expected Mortgage Estimator",
      tabPanel(p(icon("home"),"Home Page"),            
  sidebarPanel(
    sliderInput('sqft','Desired Square Footage',value = 900, min = 600,max = 10000,step = 50),
    uiOutput("st"),
    submitButton('Calculate Average House Price',icon = icon("money"))
  ),
  
  mainPanel (tabsetPanel(
    tabPanel(p(icon("map-o"), "State Wise Prices"),
    h3('Your Square Footage'),
    verbatimTextOutput("val"),
    h3('State Wise Price Per Square Foot'),
    htmlOutput("chart"),
    h3('You Selected State'),
    verbatimTextOutput("selst"),
    h3('Average Price for Selected Square Footage and State'),
  verbatimTextOutput('cost')
    
  ),
  tabPanel(p(icon("table"),"Source Data"),
           dataTableOutput("finaldata"),
           downloadButton('download','Download')
           
          
           )
  
))),
tabPanel(p(icon("calculator"),"Mortgage Calculator"),
         sidebarPanel(
                    numericInput('homeprice','Home Price',value = 300000),
                    numericInput('downpayment','Enter Down Payment',value= 60000),
                    numericInput('apr','Annual Percentage Rate',value = 4),
                    numericInput('term','Payment Term',value = 30),
                    selectInput('time','Select Term Unit',choices = c("Years"= 'Years', "Months"='Months')),
                    submitButton('Calculate Mortgage',icon = icon("money"))
                    
           ),
         mainPanel(
           h1('Your Monthly Payment Is'),
           verbatimTextOutput("final")
         )
         ),
tabPanel(p(icon("file-text"),"About"),
         mainPanel(includeMarkdown("About.Rmd")
           
         ))
           ))