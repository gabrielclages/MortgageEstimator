library(shiny)
library(UsingR)
require(googleVis)
library(RCurl)
library(markdown)
data <- read.csv("State_MedianValuePerSqft_AllHomes.csv");
data2<- subset(data,select =-( X1996.04 : X2010.12));
numericset<-subset(data2,select =-(1:3))
rowavg<-rowMeans(numericset)
finalset<-cbind(data2,rowavg)
states<-sort(as.character(finalset[,2]))
cost2<-function(ft2,region){
  data3<- subset(finalset,RegionName == region)
  avgpr <- data3[,70]
  total<- avgpr * ft2
  return(total)
}
mortgage <- function(price,downp,apr,term2,unit){
  loan <- price - downp
  c <- apr/1200
  n<-if(unit == "Years"){
    n<- term2 * 12 
  }else{
    n <- term2
  }
  pay <- signif(loan *( (c*(1+c)^n)/((1+c)^n-1)),5)
  return(pay)
}

function(input,output){
  output$val <- renderPrint({input$sqft})
  values<-reactiveValues(default = 0)
  
  
  values$states <-states
  output$st <-renderUI({
    selectInput('st2','Select State',states,multiple = FALSE,selected = "New Jersey")
  })
  
  output$selst<- renderPrint({
    input$st2
  })
  output$chart <- renderGvis({
    gvisGeoChart(finalset,
                 locationvar="RegionName", colorvar="rowavg",
                 
                 options=list(region="US", displayMode="regions", 
                              resolution="provinces",
                              width=500, height=400,
                              
                              backgroundColor="{fill:'white',stroke:'black',strokeWidth:5}",
                              title ="State Wise Price Per Square Footage(Gradient)",
                              colorAxis="{colors:['orange', 'red']}",
                              datalessRegionColor = 'grey'
                              
                              
                              
                 ))})
  output$cost<- renderPrint({
    
    cost2(input$sqft,input$st2)
    
  })
  output$final<- renderPrint({mortgage(input$homeprice,input$downpayment,input$apr,input$term,input$time)})
  
  output$finaldata <-renderDataTable(
    finalset,options = list(bFilter =TRUE,idisplayLength= 50))
  
  output$download <- downloadHandler(
    filename = 'data.csv',
    content = function(file) {
      write.csv(finalset, file, row.names=FALSE)
    }
  )
}
