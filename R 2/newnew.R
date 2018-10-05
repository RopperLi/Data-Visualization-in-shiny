
#please do not click the broomstick button after you run all the scripts in this newnew.R, 
#just move to myApp file open the ui.R file and click the Run App button
setwd("~/R")
library(plotly)
library(leaflet)
library(stringr)
library(lubridate)
library(tidyr)

data1 <- read.csv("Jan.txt")
data2 <- read.csv("Feb.txt")
data3 <- read.csv("Mar.txt")
data4 <- read.csv("Apr.txt")
data5 <- read.csv("May.txt")
data6 <- read.csv("Jun.txt")
data7 <- read.csv("Jul.txt")
data8 <- read.csv("Aug.txt")
data9 <- read.csv("Sep.txt")
data10 <- read.csv("Oct.txt")
data11 <- read.csv("Nov.txt")
data12 <- read.csv("Dec.txt")


data1$DurationSeconds <-  as.numeric(data1$DurationSeconds)
cdata1 <- aggregate(data1$DurationSeconds,by=list(StreetName=data1$StreetName),sum)
names(cdata1)[names(cdata1)=="x"]="sumSeconds"

data2$DurationSeconds <-  as.numeric(data2$DurationSeconds)
cdata2 <- aggregate(data2$DurationSeconds,by=list(StreetName=data2$StreetName),sum)
names(cdata2)[names(cdata2)=="x"]="sumSeconds"

data3$DurationSeconds <-  as.numeric(data3$DurationSeconds)
cdata3 <- aggregate(data3$DurationSeconds,by=list(StreetName=data3$StreetName),sum)
names(cdata3)[names(cdata3)=="x"]="sumSeconds"

data4$DurationSeconds <-  as.numeric(data4$DurationSeconds)
cdata4 <- aggregate(data4$DurationSeconds,by=list(StreetName=data4$StreetName),sum)
names(cdata4)[names(cdata4)=="x"]="sumSeconds"

data5$DurationSeconds <-  as.numeric(data5$DurationSeconds)
cdata5 <- aggregate(data5$DurationSeconds,by=list(StreetName=data5$StreetName),sum)
names(cdata5)[names(cdata5)=="x"]="sumSeconds"

data6$DurationSeconds <-  as.numeric(data6$DurationSeconds)
cdata6 <- aggregate(data6$DurationSeconds,by=list(StreetName=data6$StreetName),sum)
names(cdata6)[names(cdata6)=="x"]="sumSeconds"

data7$DurationSeconds <-  as.numeric(data7$DurationSeconds)
cdata7 <- aggregate(data7$DurationSeconds,by=list(StreetName=data7$StreetName),sum)
names(cdata7)[names(cdata7)=="x"]="sumSeconds"

data8$DurationSeconds <-  as.numeric(data8$DurationSeconds)
cdata8 <- aggregate(data8$DurationSeconds,by=list(StreetName=data8$StreetName),sum)
names(cdata8)[names(cdata8)=="x"]="sumSeconds"

data9$DurationSeconds <-  as.numeric(data9$DurationSeconds)
cdata9 <- aggregate(data9$DurationSeconds,by=list(StreetName=data9$StreetName),sum)
names(cdata9)[names(cdata9)=="x"]="sumSeconds"


data10$DurationSeconds <-  as.numeric(data10$DurationSeconds)
cdata10 <- aggregate(data10$DurationSeconds,by=list(StreetName=data10$StreetName),sum)
names(cdata10)[names(cdata10)=="x"]="sumSeconds"

data11$DurationSeconds <-  as.numeric(data11$DurationSeconds)
cdata11 <- aggregate(data11$DurationSeconds,by=list(StreetName=data11$StreetName),sum)
names(cdata11)[names(cdata11)=="x"]="sumSeconds"

data12$DurationSeconds <-  as.numeric(data12$DurationSeconds)
cdata12 <- aggregate(data12$DurationSeconds,by=list(StreetName=data12$StreetName),sum)
names(cdata12)[names(cdata12)=="x"]="sumSeconds"



cdata1 <- cdata1[-c(1),]
cdata1
cdata2 <- cdata2[-c(1),]
cdata3 <- cdata3[-c(1),]
cdata4 <- cdata4[-c(1),]
cdata5 <- cdata5[-c(1),]



Jan <- plot_ly(cdata1, x = ~StreetName, y = ~sumSeconds, type = 'bar',color = ~StreetName)%>%
layout( title = "The total parking seconds in each month",
  xaxis = list(title = ""),
       yaxis = list(title = ""),
       margin = list(b = 160),
  showlegend = FALSE)


Feb <- plot_ly(cdata2, x = ~StreetName, y = ~sumSeconds, type = 'bar',color = ~StreetName)%>%
  layout( title = "The total parking seconds in each month",
          xaxis = list(title = ""),
          yaxis = list(title = ""),
          margin = list(b = 160),
          showlegend = FALSE)

Mar <- plot_ly(cdata3, x = ~StreetName, y = ~sumSeconds, type = 'bar',color = ~StreetName)%>%
  layout( title = "The total parking seconds in each month",
          xaxis = list(title = ""),
          yaxis = list(title = ""),
          margin = list(b = 160),
          showlegend = FALSE)

Apr <- plot_ly(cdata4, x = ~StreetName, y = ~sumSeconds, type = 'bar',color = ~StreetName)%>%
  layout( title = "The total parking seconds in each month",
          xaxis = list(title = ""),
          yaxis = list(title = ""),
          margin = list(b = 160),
          showlegend = FALSE)

May <- plot_ly(cdata5, x = ~StreetName, y = ~sumSeconds, type = 'bar',color = ~StreetName)%>%
  layout( title = "The total parking seconds in each month",
          xaxis = list(title = ""),
          yaxis = list(title = ""),
          margin = list(b = 160),
          showlegend = FALSE)

Jun <- plot_ly(cdata6, x = ~StreetName, y = ~sumSeconds, type = 'bar',color = ~StreetName)%>%
  layout( title = "The total parking seconds in each month",
          xaxis = list(title = ""),
          yaxis = list(title = ""),
          margin = list(b = 160),
          showlegend = FALSE)

Jul <- plot_ly(cdata7, x = ~StreetName, y = ~sumSeconds, type = 'bar',color = ~StreetName)%>%
  layout( title = "The total parking seconds in each month",
          xaxis = list(title = ""),
          yaxis = list(title = ""),
          margin = list(b = 160),
          showlegend = FALSE)

Aug <- plot_ly(cdata8, x = ~StreetName, y = ~sumSeconds, type = 'bar',color = ~StreetName)%>%
  layout( title = "The total parking seconds in each month",
          xaxis = list(title = ""),
          yaxis = list(title = ""),
          margin = list(b = 160),
          showlegend = FALSE)

Sep <- plot_ly(cdata9, x = ~StreetName, y = ~sumSeconds, type = 'bar',color = ~StreetName)%>%
  layout( title = "The total parking seconds in each month",
          xaxis = list(title = ""),
          yaxis = list(title = ""),
          margin = list(b = 160),
          showlegend = FALSE)

Oct <- plot_ly(cdata10, x = ~StreetName, y = ~sumSeconds, type = 'bar',color = ~StreetName)%>%
  layout( title = "The total parking seconds in each month",
          xaxis = list(title = ""),
          yaxis = list(title = ""),
          margin = list(b = 160),
          showlegend = FALSE)

Nov <- plot_ly(cdata11, x = ~StreetName, y = ~sumSeconds, type = 'bar',color = ~StreetName)%>%
  layout( title = "The total parking seconds in each month",
          xaxis = list(title = ""),
          yaxis = list(title = ""),
          margin = list(b = 160),
          showlegend = FALSE)
Dec <- plot_ly(cdata12, x = ~StreetName, y = ~sumSeconds, type = 'bar',color = ~StreetName)%>%
  layout( title = "The total parking seconds in each month",
          xaxis = list(title = ""),
          yaxis = list(title = ""),
          margin = list(b = 160),
          showlegend = FALSE)



sndata <- read.csv("Address_Points.csv")
stdata <- read.csv("StreetData.csv")
q1 = merge(x = cdata1, y = stdata, by = "StreetName", all.x = TRUE)
q2 = merge(x = cdata2, y = stdata, by = "StreetName", all.x = TRUE)
q3 = merge(x = cdata3, y = stdata, by = "StreetName", all.x = TRUE)
q4 = merge(x = cdata4, y = stdata, by = "StreetName", all.x = TRUE)
q5 = merge(x = cdata5, y = stdata, by = "StreetName", all.x = TRUE)
q6 = merge(x = cdata6, y = stdata, by = "StreetName", all.x = TRUE)
q7 = merge(x = cdata7, y = stdata, by = "StreetName", all.x = TRUE)
q8 = merge(x = cdata8, y = stdata, by = "StreetName", all.x = TRUE)
q9 = merge(x = cdata9, y = stdata, by = "StreetName", all.x = TRUE)
q10 = merge(x = cdata10, y = stdata, by = "StreetName", all.x = TRUE)
q11 = merge(x = cdata11, y = stdata, by = "StreetName", all.x = TRUE)
q12 = merge(x = cdata12, y = stdata, by = "StreetName", all.x = TRUE)
q11["44","LATITUDE"] <- -37.82181796
q11["44", "LONGITUDE"] <- 144.9504831
q11["44", "Suburb"] <- "Docklands"
q12["44","LATITUDE"] <- -37.82181796
q12["44", "LONGITUDE"] <- 144.9504831
q12["44", "Suburb"] <- "Docklands"

co1 <- colorNumeric(palette = c("blue","yellow","red"),domain = q1$sumSeconds)
co2 <- colorNumeric(palette = c("blue","yellow","red"),domain = q2$sumSeconds)
co3 <- colorNumeric(palette = c("blue","yellow","red"),domain = q3$sumSeconds)
co4 <- colorNumeric(palette = c("blue","yellow","red"),domain = q4$sumSeconds)
co5 <- colorNumeric(palette = c("blue","yellow","red"),domain = q5$sumSeconds)
co6 <- colorNumeric(palette = c("blue","yellow","red"),domain = q6$sumSeconds)
co7 <- colorNumeric(palette = c("blue","yellow","red"),domain = q7$sumSeconds)
co8 <- colorNumeric(palette = c("blue","yellow","red"),domain = q8$sumSeconds)
co9 <- colorNumeric(palette = c("blue","yellow","red"),domain = q9$sumSeconds)
co10 <- colorNumeric(palette = c("blue","yellow","red"),domain = q10$sumSeconds)
co11 <- colorNumeric(palette = c("blue","yellow","red"),domain = q11$sumSeconds)
co12 <- colorNumeric(palette = c("blue","yellow","red"),domain = q12$sumSeconds)


smap1 <- leaflet(data = q1) %>% addTiles() %>%
  addCircleMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = paste("Street Name:", q1$StreetName, "<br>",
                  "Suburb:", q1$Suburb, "<br>",
                  "Total parking seconds:", q1$sumSeconds),
    radius = ~sumSeconds / 300000,
    color = ~co1(q1$sumSeconds),
    stroke = TRUE
  )%>%
  addLegend("bottomleft", pal = co1, values = ~sumSeconds,title = "Total seconds",opacity = 1)


smap2 <- leaflet(data = q2) %>% addTiles() %>%
  addCircleMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = paste("Street Name:", q2$StreetName, "<br>",
                  "Suburb:", q2$Suburb, "<br>",
                  "Total parking seconds:", q2$sumSeconds),
    radius = ~sumSeconds / 300000,
    color = ~co2(q2$sumSeconds),
    stroke = TRUE
  )%>%
  addLegend("bottomleft", pal = co2, values = ~sumSeconds,title = "Total seconds",opacity = 1)


smap3 <- leaflet(data = q3) %>% addTiles() %>%
  addCircleMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = paste("Street Name:", q3$StreetName, "<br>",
                  "Suburb:", q3$Suburb, "<br>",
                  "Total parking seconds:", q3$sumSeconds),
    radius = ~sumSeconds / 300000,
    color = ~co3(q3$sumSeconds),
    stroke = TRUE
  )%>%
  addLegend("bottomleft", pal = co3, values = ~sumSeconds,title = "Total seconds",opacity = 1)

smap4 <- leaflet(data = q4) %>% addTiles() %>%
  addCircleMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = paste("Street Name:", q4$StreetName, "<br>",
                  "Suburb:", q4$Suburb, "<br>",
                  "Total parking seconds:", q4$sumSeconds),
    radius = ~sumSeconds / 300000,
    color = ~co4(q4$sumSeconds),
    stroke = TRUE
  )%>%
  addLegend("bottomleft", pal = co4, values = ~sumSeconds,title = "Total seconds",opacity = 1)

smap5 <- leaflet(data = q5) %>% addTiles() %>%
  addCircleMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = paste("Street Name:", q5$StreetName, "<br>",
                  "Suburb:", q5$Suburb, "<br>",
                  "Total parking seconds:", q5$sumSeconds),
    radius = ~sumSeconds / 300000,
    color = ~co5(q5$sumSeconds),
    stroke = TRUE
  )%>%
  addLegend("bottomleft", pal = co5, values = ~sumSeconds,title = "Total seconds",opacity = 1)

smap6 <- leaflet(data = q6) %>% addTiles() %>%
  addCircleMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = paste("Street Name:", q6$StreetName, "<br>",
                  "Suburb:", q6$Suburb, "<br>",
                  "Total parking seconds:", q6$sumSeconds),
    radius = ~sumSeconds / 300000,
    color = ~co6(q6$sumSeconds),
    stroke = TRUE
  )%>%
  addLegend("bottomleft", pal = co6, values = ~sumSeconds,title = "Total seconds",opacity = 1)

smap7 <- leaflet(data = q7) %>% addTiles() %>%
  addCircleMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = paste("Street Name:", q7$StreetName, "<br>",
                  "Suburb:", q7$Suburb, "<br>",
                  "Total parking seconds:", q7$sumSeconds),
    radius = ~sumSeconds / 300000,
    color = ~co7(q7$sumSeconds),
    stroke = TRUE
  )%>%
  addLegend("bottomleft", pal = co7, values = ~sumSeconds,title = "Total seconds",opacity = 1)

smap8 <- leaflet(data = q8) %>% addTiles() %>%
  addCircleMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = paste("Street Name:", q8$StreetName, "<br>",
                  "Suburb:", q8$Suburb, "<br>",
                  "Total parking seconds:", q8$sumSeconds),
    radius = ~sumSeconds / 300000,
    color = ~co8(q8$sumSeconds),
    stroke = TRUE
  )%>%
  addLegend("bottomleft", pal = co8, values = ~sumSeconds,title = "Total seconds",opacity = 1)

smap9 <- leaflet(data = q9) %>% addTiles() %>%
  addCircleMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = paste("Street Name:", q9$StreetName, "<br>",
                  "Suburb:", q9$Suburb, "<br>",
                  "Total parking seconds:", q9$sumSeconds),
    radius = ~sumSeconds / 300000,
    color = ~co9(q9$sumSeconds),
    stroke = TRUE
  )%>%
  addLegend("bottomleft", pal = co9, values = ~sumSeconds,title = "Total seconds",opacity = 1)

smap10 <- leaflet(data = q10) %>% addTiles() %>%
  addCircleMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = paste("Street Name:", q10$StreetName, "<br>",
                  "Suburb:", q10$Suburb, "<br>",
                  "Total parking seconds:", q10$sumSeconds),
    radius = ~sumSeconds / 300000,
    color = ~co10(q10$sumSeconds),
    stroke = TRUE
  )%>%
  addLegend("bottomleft", pal = co10, values = ~sumSeconds,title = "Total seconds",opacity = 1)

smap11 <- leaflet(data = q11) %>% addTiles() %>%
  addCircleMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = paste("Street Name:", q11$StreetName, "<br>",
                  "Suburb:", q11$Suburb, "<br>",
                  "Total parking seconds:", q11$sumSeconds),
    radius = ~sumSeconds / 300000,
    color = ~co11(q11$sumSeconds),
    stroke = TRUE
  )%>%
  addLegend("bottomleft", pal = co11, values = ~sumSeconds,title = "Total seconds",opacity = 1)

smap12 <- leaflet(data = q12) %>% addTiles() %>%
  addCircleMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = paste("Street Name:", q12$StreetName, "<br>",
                  "Suburb:", q12$Suburb, "<br>",
                  "Total parking seconds:", q12$sumSeconds),
    radius = ~sumSeconds / 300000,
    color = ~co12(q12$sumSeconds),
    stroke = TRUE
  )%>%
  addLegend("bottomleft", pal = co12, values = ~sumSeconds,title = "Total seconds",opacity = 1)


data1$ArrivalTime <- as.character(data1$ArrivalTime)
s1 <- str_sub(data1$ArrivalTime,start = 1,end =10 )
n1 <- aggregate(data.frame(ParkingCount = s1), list(Date = s1), length)

data2$ArrivalTime <- as.character(data2$ArrivalTime)
s2 <- str_sub(data2$ArrivalTime,start = 1,end =10 )
n2 <- aggregate(data.frame(ParkingCount = s2), list(Date = s2), length)

data3$ArrivalTime <- as.character(data3$ArrivalTime)
s3 <- str_sub(data3$ArrivalTime,start = 1,end =10 )
n3 <- aggregate(data.frame(ParkingCount = s3), list(Date = s3), length)

data4$ArrivalTime <- as.character(data4$ArrivalTime)
s4 <- str_sub(data4$ArrivalTime,start = 1,end =10 )
n4 <- aggregate(data.frame(ParkingCount = s4), list(Date = s4), length)

data5$ArrivalTime <- as.character(data5$ArrivalTime)
s5 <- str_sub(data5$ArrivalTime,start = 1,end =10 )
n5 <- aggregate(data.frame(ParkingCount = s5), list(Date = s5), length)

data6$ArrivalTime <- as.character(data6$ArrivalTime)
s6 <- str_sub(data6$ArrivalTime,start = 1,end =10 )
n6 <- aggregate(data.frame(ParkingCount = s6), list(Date = s6), length)

data7$ArrivalTime <- as.character(data7$ArrivalTime)
s7 <- str_sub(data7$ArrivalTime,start = 1,end =10 )
n7 <- aggregate(data.frame(ParkingCount = s7), list(Date = s7), length)

data8$ArrivalTime <- as.character(data8$ArrivalTime)
s8 <- str_sub(data8$ArrivalTime,start = 1,end =10 )
n8 <- aggregate(data.frame(ParkingCount = s8), list(Date = s8), length)

data9$ArrivalTime <- as.character(data9$ArrivalTime)
s9 <- str_sub(data9$ArrivalTime,start = 1,end =10 )
n9 <- aggregate(data.frame(ParkingCount = s9), list(Date = s9), length)

data10$ArrivalTime <- as.character(data10$ArrivalTime)
s10 <- str_sub(data10$ArrivalTime,start = 1,end =10 )
n10 <- aggregate(data.frame(ParkingCount = s10), list(Date = s10), length)

data11$ArrivalTime <- as.character(data11$ArrivalTime)
s11 <- str_sub(data11$ArrivalTime,start = 1,end =10 )
n11 <- aggregate(data.frame(ParkingCount = s11), list(Date = s11), length)

data12$ArrivalTime <- as.character(data12$ArrivalTime)
s12 <- str_sub(data12$ArrivalTime,start = 1,end =10 )
n12 <- aggregate(data.frame(ParkingCount = s12), list(Date = s12), length)

a1 <- rbind(n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12)
a1


m <- list(
  l = 50,
  r = 50,
  b = 100,
  t = 100,
  pad = 4
)
plo1<- plot_ly(n1, x = ~Date, y = ~ParkingCount) %>%
  add_lines(name = ~"Jan")%>%
  layout(autosize = F, width = 1000, height = 500, margin = m)


plo2<- plot_ly(n2, x = ~Date, y = ~ParkingCount) %>%
  add_lines(name = ~"Feb")%>%
  layout(autosize = F, width = 1000, height = 500, margin = m)


plo3<- plot_ly(n3, x = ~Date, y = ~ParkingCount) %>%
  add_lines(name = ~"Mar")%>%
  layout(autosize = F, width = 1000, height = 500, margin = m)

plo4<- plot_ly(n4, x = ~Date, y = ~ParkingCount) %>%
  add_lines(name = ~"Apr")%>%
  layout(autosize = F, width = 1000, height = 500, margin = m)

plo5<- plot_ly(n5, x = ~Date, y = ~ParkingCount) %>%
  add_lines(name = ~"May")%>%
  layout(autosize = F, width = 1000, height = 500, margin = m)

plo6<- plot_ly(n6, x = ~Date, y = ~ParkingCount) %>%
  add_lines(name = ~"Jun")%>%
  layout(autosize = F, width = 1000, height = 500, margin = m)

plo7<- plot_ly(n7, x = ~Date, y = ~ParkingCount) %>%
  add_lines(name = ~"Jul")%>%
  layout(autosize = F, width = 1000, height = 500, margin = m)

plo8<- plot_ly(n8, x = ~Date, y = ~ParkingCount) %>%
  add_lines(name = ~"Aug")%>%
  layout(autosize = F, width = 1000, height = 500, margin = m)

plo9<- plot_ly(n9, x = ~Date, y = ~ParkingCount) %>%
  add_lines(name = ~"Sep")%>%
  layout(autosize = F, width = 1000, height = 500, margin = m)

plo10<- plot_ly(n10, x = ~Date, y = ~ParkingCount) %>%
  add_lines(name = ~"Oct")%>%
  layout(autosize = F, width = 1000, height = 500, margin = m)

plo11<- plot_ly(n11, x = ~Date, y = ~ParkingCount) %>%
  add_lines(name = ~"Nov")%>%
  layout(autosize = F, width = 1000, height = 500, margin = m)

plo12<- plot_ly(n12, x = ~Date, y = ~ParkingCount) %>%
  add_lines(name = ~"Dec")%>%
  layout(autosize = F, width = 1000, height = 500, margin = m)


plo1 <- subplot(plo1, plo2,plo3)
plo2 <- subplot(plo4, plo5,plo6)
plo3 <- subplot(plo7, plo8,plo9)
plo4 <- subplot(plo10, plo11,plo12)

ticks <- seq(from=1, to=366, by=31)
totalline <- ggplot(a1, aes(x=Date, y=ParkingCount)) + geom_line(aes(group=1)) + scale_x_discrete(breaks = a1$Date[ticks]) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5)) 

toline <- plot_ly(a1, x = ~Date, y = ~ParkingCount, type = 'scatter', mode = 'lines')%>%
  layout(title = "The total parking amount during a year", autosize = F, width = 1000, height = 600, margin = m)



newd <- data.frame(
month=c(1,2,3,4,5,6,7,8,9,10,11,12),
averageParking=c(mean(n1$ParkingCount),mean(n2$ParkingCount),mean(n3$ParkingCount),mean(n4$ParkingCount),mean(n5$ParkingCount),mean(n6$ParkingCount),mean(n7$ParkingCount),mean(n8$ParkingCount),mean(n9$ParkingCount),mean(n10$ParkingCount),mean(n11$ParkingCount),mean(n12$ParkingCount))
)

piecc <- plot_ly(newd, labels = ~month, values = ~averageParking, type = 'pie') %>%
  layout(title = 'Average parking amount in 12 months in Melbourne CBD in 2016',showlegend = T,
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))




dur1 = subset(data1, select=c("ArrivalTime", "DurationSeconds", "StreetName"))

dur1$ArrivalTime <- mdy_hms(data1$ArrivalTime)
time1 = strftime(dur1$ArrivalTime, format="%H:%M:%S")
date1 = as.Date(strftime(dur1$ArrivalTime, format="%m/%d/%Y"),format = "%m/%d/%Y")
peak1 = data.frame("ArrivalDate" = date1,"ArrivalTime" = time1,"DurationTime" = dur1$DurationSeconds,"StreetName" = dur1$StreetName)


dur2 = subset(data2, select=c("ArrivalTime", "DurationSeconds", "StreetName"))
dur2$ArrivalTime <- mdy_hms(data2$ArrivalTime)
time2 = strftime(dur2$ArrivalTime, format="%H:%M:%S")
date2 = as.Date(strftime(dur2$ArrivalTime, format="%m/%d/%Y"),format = "%m/%d/%Y")
peak2 = data.frame("ArrivalDate" = date2,"ArrivalTime" = time2,"DurationTime" = dur2$DurationSeconds,"StreetName" = dur2$StreetName)



dur3 = subset(data3, select=c("ArrivalTime", "DurationSeconds", "StreetName"))
dur3$ArrivalTime <- mdy_hms(data3$ArrivalTime)
time3 = strftime(dur3$ArrivalTime, format="%H:%M:%S")
date3 = as.Date(strftime(dur3$ArrivalTime, format="%m/%d/%Y"),format = "%m/%d/%Y")
peak3 = data.frame("ArrivalDate" = date3,"ArrivalTime" = time3,"DurationTime" = dur3$DurationSeconds,"StreetName" = dur3$StreetName)



dur4 = subset(data4, select=c("ArrivalTime", "DurationSeconds", "StreetName"))
dur4$ArrivalTime <- mdy_hms(data4$ArrivalTime)
time4 = strftime(dur4$ArrivalTime, format="%H:%M:%S")
date4 = as.Date(strftime(dur4$ArrivalTime, format="%m/%d/%Y"),format = "%m/%d/%Y")
peak4 = data.frame("ArrivalDate" = date4,"ArrivalTime" = time4,"DurationTime" = dur4$DurationSeconds,"StreetName" = dur4$StreetName)


dur5 = subset(data5, select=c("ArrivalTime", "DurationSeconds", "StreetName"))
dur5$ArrivalTime <- mdy_hms(data5$ArrivalTime)
time5 = strftime(dur5$ArrivalTime, format="%H:%M:%S")
date5 = as.Date(strftime(dur5$ArrivalTime, format="%m/%d/%Y"),format = "%m/%d/%Y")
peak5 = data.frame("ArrivalDate" = date5,"ArrivalTime" = time5,"DurationTime" = dur5$DurationSeconds,"StreetName" = dur5$StreetName)



dur6 = subset(data6, select=c("ArrivalTime", "DurationSeconds", "StreetName"))
dur6$ArrivalTime <- mdy_hms(data6$ArrivalTime)
time6 = strftime(dur6$ArrivalTime, format="%H:%M:%S")
date6 = as.Date(strftime(dur6$ArrivalTime, format="%m/%d/%Y"),format = "%m/%d/%Y")
peak6 = data.frame("ArrivalDate" = date6,"ArrivalTime" = time6,"DurationTime" = dur6$DurationSeconds,"StreetName" = dur6$StreetName)


dur7 = subset(data7, select=c("ArrivalTime", "DurationSeconds", "StreetName"))
dur7$ArrivalTime <- mdy_hms(data7$ArrivalTime)
time7 = strftime(dur7$ArrivalTime, format="%H:%M:%S")
date7 = as.Date(strftime(dur7$ArrivalTime, format="%m/%d/%Y"),format = "%m/%d/%Y")
peak7 = data.frame("ArrivalDate" = date7,"ArrivalTime" = time7,"DurationTime" = dur7$DurationSeconds,"StreetName" = dur7$StreetName)

dur8 = subset(data8, select=c("ArrivalTime", "DurationSeconds", "StreetName"))
dur8$ArrivalTime <- mdy_hms(data8$ArrivalTime)
time8 = strftime(dur8$ArrivalTime, format="%H:%M:%S")
date8 = as.Date(strftime(dur8$ArrivalTime, format="%m/%d/%Y"),format = "%m/%d/%Y")
peak8 = data.frame("ArrivalDate" = date8,"ArrivalTime" = time8,"DurationTime" = dur8$DurationSeconds,"StreetName" = dur8$StreetName)

dur9 = subset(data9, select=c("ArrivalTime", "DurationSeconds", "StreetName"))
dur9$ArrivalTime <- mdy_hms(data9$ArrivalTime)
time9 = strftime(dur9$ArrivalTime, format="%H:%M:%S")
date9 = as.Date(strftime(dur9$ArrivalTime, format="%m/%d/%Y"),format = "%m/%d/%Y")
peak9 = data.frame("ArrivalDate" = date9,"ArrivalTime" = time9,"DurationTime" = dur9$DurationSeconds,"StreetName" = dur9$StreetName)

dur10 = subset(data10, select=c("ArrivalTime", "DurationSeconds", "StreetName"))
dur10$ArrivalTime <- mdy_hms(data10$ArrivalTime)
time10 = strftime(dur10$ArrivalTime, format="%H:%M:%S")
date10 = as.Date(strftime(dur10$ArrivalTime, format="%m/%d/%Y"),format = "%m/%d/%Y")
peak10 = data.frame("ArrivalDate" = date10,"ArrivalTime" = time10,"DurationTime" = dur10$DurationSeconds,"StreetName" = dur10$StreetName)


dur11 = subset(data11, select=c("ArrivalTime", "DurationSeconds", "StreetName"))
dur11$ArrivalTime <- mdy_hms(data11$ArrivalTime)
time11 = strftime(dur11$ArrivalTime, format="%H:%M:%S")
date11 = as.Date(strftime(dur11$ArrivalTime, format="%m/%d/%Y"),format = "%m/%d/%Y")
peak11 = data.frame("ArrivalDate" = date11,"ArrivalTime" = time11,"DurationTime" = dur11$DurationSeconds,"StreetName" = dur11$StreetName)

dur12 = subset(data12, select=c("ArrivalTime", "DurationSeconds", "StreetName"))
dur12$ArrivalTime <- mdy_hms(data12$ArrivalTime)
time12 = strftime(dur12$ArrivalTime, format="%H:%M:%S")
date12 = as.Date(strftime(dur12$ArrivalTime, format="%m/%d/%Y"),format = "%m/%d/%Y")
peak12 = data.frame("ArrivalDate" = date12,"ArrivalTime" = time12,"DurationTime" = dur12$DurationSeconds,"StreetName" = dur12$StreetName)


days = rbind(peak1,peak2,peak3,peak4,peak5,peak6,peak7,peak8,peak9,peak10,peak11,peak12)

bays <- read.csv("On-street_Car_Park_Bay_Information.csv")
bayslo <- read.csv("On-street_Parking_Bay_Sensors (1).csv")


bayinfo <- merge(x = bayslo, y = bays, by = "bay_id", all.x = TRUE)

bayinfo <- bayinfo %>% drop_na(DeviceID,Description1)

baymap <- leaflet(data = bayinfo) %>% addTiles() %>% 
  addMarkers(
    ~LONGITUDE, 
    ~LATITUDE, 
    popup = ~Description1)


data1$In.Violation <- as.numeric(data1$In.Violation)
f1 <- aggregate(data1$In.Violation,by=list(StreetName=data1$StreetName),sum)
names(f1)[names(f1)=="x"]="violationTimes"
f1

data2$In.Violation <- as.numeric(data2$In.Violation)
f2 <- aggregate(data2$In.Violation,by=list(StreetName=data2$StreetName),sum)
names(f2)[names(f2)=="x"]="violationTimes"

data3$In.Violation <- as.numeric(data3$In.Violation)
f3 <- aggregate(data3$In.Violation,by=list(StreetName=data3$StreetName),sum)
names(f3)[names(f3)=="x"]="violationTimes"


data4$In.Violation <- as.numeric(data4$In.Violation)
f4 <- aggregate(data4$In.Violation,by=list(StreetName=data4$StreetName),sum)
names(f4)[names(f4)=="x"]="violationTimes"

data5$In.Violation <- as.numeric(data5$In.Violation)
f5 <- aggregate(data5$In.Violation,by=list(StreetName=data5$StreetName),sum)
names(f5)[names(f5)=="x"]="violationTimes"

data6$In.Violation <- as.numeric(data6$In.Violation)
f6 <- aggregate(data6$In.Violation,by=list(StreetName=data6$StreetName),sum)
names(f6)[names(f6)=="x"]="violationTimes"

data7$In.Violation <- as.numeric(data7$In.Violation)
f7 <- aggregate(data7$In.Violation,by=list(StreetName=data7$StreetName),sum)
names(f7)[names(f7)=="x"]="violationTimes"

data8$In.Violation <- as.numeric(data8$In.Violation)
f8 <- aggregate(data8$In.Violation,by=list(StreetName=data8$StreetName),sum)
names(f8)[names(f8)=="x"]="violationTimes"

data9$In.Violation <- as.numeric(data9$In.Violation)
f9 <- aggregate(data9$In.Violation,by=list(StreetName=data9$StreetName),sum)
names(f9)[names(f9)=="x"]="violationTimes"

data10$In.Violation <- as.numeric(data10$In.Violation)
f10 <- aggregate(data10$In.Violation,by=list(StreetName=data10$StreetName),sum)
names(f10)[names(f10)=="x"]="violationTimes"

data11$In.Violation <- as.numeric(data11$In.Violation)
f11 <- aggregate(data11$In.Violation,by=list(StreetName=data11$StreetName),sum)
names(f11)[names(f11)=="x"]="violationTimes"

data12$In.Violation <- as.numeric(data12$In.Violation)
f12 <- aggregate(data12$In.Violation,by=list(StreetName=data12$StreetName),sum)
names(f12)[names(f12)=="x"]="violationTimes"

f1 <- f1[-c(1),]
f2 <- f2[-c(1),]
f3 <- f3[-c(1),]
f4 <- f4[-c(1),]
f5 <- f5[-c(1),]

r5 <- rbind(f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12)
r6 <- aggregate(r5$violationTimes,by=list(StreetName=r5$StreetName),sum)
names(r6)[names(r6)=="x"]="YearViolationsTimes"

vt <- plot_ly(r6, x = ~StreetName, y = ~YearViolationsTimes, type = 'bar',color = ~StreetName)%>%
  layout( title = "The total parking volations times in 2016",
          xaxis = list(title = "StreetName"),
          yaxis = list(title = "Violation Times"),
          margin = list(b = 160),
          showlegend = FALSE)

