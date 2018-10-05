#server.R
library(shiny)
library(datasets)

shinyServer(function(input, output) {
  
  output$html_link <- renderUI({
    a("https://data.melbourne.vic.gov.au/Transport-Movement/On-street-Car-Parking-Sensor-Data-2016/dj7e-rdx9", href=paste("https://data.melbourne.vic.gov.au/Transport-Movement/On-street-Car-Parking-Sensor-Data-2016/dj7e-rdx9", sep=""), target="_blank") 
  })
  
output$mymap <- renderLeaflet({ 
  if(input$mon1 == 1)
  {
    smap1
  }
  else if(input$mon1 == 2)
  {
    smap2
  }
  else if(input$mon1 == 3)
  {
    smap3
  }
  else if(input$mon1 == 4)
  {
    smap4
  }
  else if(input$mon1 == 5)
  {
    smap5
  }
  else if(input$mon1 == 6)
  {
    smap6
  }
  else if(input$mon1 == 7)
  {
    smap7
  }
  else if(input$mon1 == 8)
  {
    smap8
  }
  else if(input$mon1 == 9)
  {
    smap9
  }
  else if(input$mon1 == 10)
  {
    smap10
  }
  else if(input$mon1 == 11)
  {
    smap11
  }
  else if(input$mon1 == 12)
  {
    smap12
  }
  
  })

output$plot <- renderPlotly({
  if(input$mon1 == 1)
  {
    Jan
  }
  else if(input$mon1 == 2)
  {
    Feb
  }
  else if(input$mon1 == 3)
  {
    Mar
  }
  else if(input$mon1 == 4)
  {
    Apr
  }
  else if(input$mon1 == 5)
  {
    May
  }
  else if(input$mon1 == 6)
  {
    Jun
  }
  else if(input$mon1 == 7)
  {
    Jul
  }
  else if(input$mon1 == 8)
  {
    Aug
  }
  else if(input$mon1 == 9)
  {
    Sep
  }
  else if(input$mon1 == 10)
  {
    Oct
  }
  else if(input$mon1 == 11)
  {
    Nov
  }
  else if(input$mon1 == 12)
  {
    Dec
  }
  
})


output$mytotalline1 <- renderPlotly({
  plo1
})
output$mytotalline2 <- renderPlotly({
  plo2
})
output$mytotalline3 <- renderPlotly({
  plo3
})
output$mytotalline4 <- renderPlotly({
  plo4
})


output$mypieplot <- renderPlotly({
  piecc
})

output$mytoline <- renderPlotly({
  toline
})

output$mypeakplot <- renderPlotly({
  
  day1 <- subset(days, ArrivalDate == input$date & StreetName == input$Street)
  plot_ly(day1, x = ~ArrivalTime, y = ~DurationTime, text = ~StreetName, type = 'scatter', mode = 'markers',
          marker = list(size = ~DurationTime/300, opacity = 0.5)) %>%
    layout(title = 'Parking Peak Time',
           autosize = F, width = 1000, height = 800, margin = m,
           xaxis = list(showgrid = FALSE,categoryorder = "category ascending"),
           yaxis = list(showgrid = FALSE))
})
output$mybaymap <- renderLeaflet({ baymap })
output$mybayplot <- renderLeaflet({ vt })
})
