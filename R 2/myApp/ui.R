#ui.R


library(shiny)
library(markdown)

shinyUI(fluidPage(
  navbarPage("On-Street Parking data",
                   tabPanel("Introduction", h2("On-Street parking data in Melbourne CBD in 2016"),
                            h3("The Introduction of Data:"),
                            p("The City of Melbourne has installed in-ground parking bay sensors in most CBD parking bays. These sensors record when a vehicle arrives and when it departs. Each record also includes the parking restriction for the bay and whether the vehicle has overstayed that restriction. This is the data for the 2016 calendar year."),
                            h3("The Data Links:"),
                            htmlOutput("html_link"),
                            h3("The Parking Street Map:"),
                            p("It shows Melbourne CBD map, the cricles in the map are represent the total parking seconds, the size and colour of circles are represent the amount of parking seconds. The bar chart also shows the total parking seconds in different streets, you can select the month by click the number input."),
                            h3("Parking Amount Charts"),
                            p("There are two parts in the Parking Amount Charts, first part is everyday parking line chart, it shows the total parking amount of everyday in 2016, and the second part is a year parking line chart and pie chart, it uses pie chart to show the average parking amount in a year, and uses line chart to show the everyday parking amount."),
                            h3("Parking Peak Time"),
                            p("This part use bubble charts show peak time of a day in a specific street, select any days in 2016, and any streets in Melbourne CBD, it will show the bubble chart of that day and street, the bubble size is relate to the duration seconds."),
                            h3("Parking Restrictions Map"),
                            p("This part shows the loactions and descriptions of each parking bay in the Melbourne CBD, the marker represent the locations of parking bays on the streets, and click the marker it will show the descriptions of each parking bay. The bar chart shows the violation times of each street in Melbourne CBD in 2016")
                            ),
                          
                   tabPanel("Parking Streets Map",
                            div(id="outer",
                                
                                tags$head(
                                  includeCSS("Style.css")
                                ),
                                leafletOutput("mymap", width="100%", height="100%"),
                                
                                absolutePanel(id = "controls", class = "panel panel-default", fixed = TRUE,
                                              draggable = TRUE, top = 60, left = "auto", right = 20, bottom = "auto",
                                              width = 600, height = "auto", 
                                              
                                              h2("Street Parking data in Melbourne CBD in 2016"),
                                              
                                              numericInput("mon1", "Please select the month you want to check (1-12 means Jan-Dec) (click the bubble check streets' detail one the map):", 1, min = 1, max = 12),
                                              p("Some streets have no bar because their value is too small"),
                                              p("The Queen Street and Lonsdale Street are always have high total parking seconds"),
                                              plotlyOutput("plot", height = 700)
                                          
                                                )
                                    
                                                ) 
                                                ),
                   
                   tabPanel("Parking Amount Charts",
                     h2("The total parking amount during the 2016 in Melbourne CBD"),
                     mainPanel(
                       tabsetPanel(type = "tabs",
                                   tabPanel("Everyday parking line chart", 
                                            tags$head(
                                              includeCSS("Style.css")
                                            ),
                                            h3("Each line chart shows everyday parking amount:"),
                                            p("(x axis means date and y axis means parking amount)"),
                                            h4("Summary: through the line charts of each month, we could find the February and December has the biggest parking amount"),
                                            fluidRow(
                                         plotlyOutput("mytotalline1",width = 700)
                                   ),
                                   hr(),
                                   hr(),
                                   hr(),
                                   fluidRow(
                                    plotlyOutput("mytotalline2", width = 700)
                                     ),
                                   hr(),
                                   hr(),
                                   hr(),
                                   fluidRow(
                                     plotlyOutput("mytotalline3", width = 700)
                                   ),
                                   hr(),
                                   hr(),
                                   hr(),
                                   fluidRow(
                                     plotlyOutput("mytotalline4", width = 700)
                                   ),
                                   absolutePanel(id = "controls1", class = "panel panel-default", fixed = TRUE,
                                                 draggable = TRUE, top = 60, left = "auto", right = 20, bottom = "auto",
                                                 width = 300, height = "auto",
                                                 wellPanel(
                                                   HTML(markdownToHTML(fragment.only=TRUE, text=c(
                                                     "Tips: (drag me)If you `mouseon` the chart it will shows the data near your mouse, if you `click` the legend and the click part will disappear, if you `drag` the area of the chart, the chart will zoom in"
                                                   ))))
                                   )
                                   ),
                       
                                   tabPanel("A year parking amount pie chart and line cahrt",
                                            tags$head(
                                              includeCSS("Style.css")
                                            ),
                                            hr(),
                                            plotlyOutput("mypieplot", height = 600),
                                            h4("Summary: The gap of average values between each month is not big"),
                                            plotlyOutput("mytoline", height = 600),
                                            h4("Summary: the line chart of 365 days shows the trend of parking amount and the biggest parking amount is in 12/23/2016"),
                                            absolutePanel(id = "controls1", class = "panel panel-default", fixed = TRUE,
                                                          draggable = TRUE, top = 60, left = "auto", right = 20, bottom = "auto",
                                                          width = 300, height = "auto",
                                                          wellPanel(
                                                            HTML(markdownToHTML(fragment.only=TRUE, text=c(
                                                              "Tips: (drag me) If you `mouseon` the chart it will shows the data near your mouse, if you `click` the legend and the click part will disappear, if you `drag` the area of the chart, the chart will zoom in"
                                                            ))))
                                                            ))
                       )
                     )
                     
                   ),
             tabPanel("Parking Peak Time",
                      tags$head(
                        includeCSS("Style.css")
                      ),
                      fluidRow(
                     column( 6, dateInput("date", label = h3("Choose Date you want check"), value = "2016-01-01")),
                  
                    column(6,  selectInput("Street", h3("Select Street you want check"), choices = cdata1$StreetName))
             ),
             hr(),
             h4("Tips: The circle size represent the amount of the duration seconds"),
                      plotlyOutput("mypeakplot",height = 700, width = 1000),
             absolutePanel(id = "controls1", class = "panel panel-default", fixed = TRUE,
                           draggable = TRUE, top = 60, left = "auto", right = 20, bottom = "auto",
                           width = 300, height = "auto",
                           wellPanel(
                             HTML(markdownToHTML(fragment.only=TRUE, text=c(
                               "Tips: Pelase choose only `Date in 2016`, because we only analysis 2016 data, `Some Streets have no data in some days,` because there are no parking records in those days"
                             ))))
             )
                      
             ),
             tabPanel("Parking Restrictions Map",
                      div(id="outer",
                          
                          tags$head(
                            includeCSS("Style.css")
                          ),
                          leafletOutput("mybaymap", width="100%", height="100%"),
                          
                          absolutePanel(id = "controls", class = "panel panel-default", fixed = TRUE,
                                        draggable = TRUE, top = 60, left = "auto", right = 20, bottom = "auto",
                                        width = 600, height = "auto", 
                                        
                                        h2("Parking violations times in 2016"),
                                        h4("This bar charts shows the total violation times in different streets, as we can see the Queen Street and Bourke Street have the biggest violation times (There are no bar in some streets is because their numbers of violation times are too small compare to other streets)"),
                                        plotlyOutput("mybayplot", height = 700)
                                        
                          )
                          
                      ) 
             )
                   
)

))