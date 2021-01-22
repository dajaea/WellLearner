
shinyUI(
  
  navbarPage("WellLearner Explorer",
             
             # Output plots  ...#do a sidebar layout for each
             tabPanel("Ed. Attainment",
                      sidebarLayout(
                        sidebarPanel(
                          selectInput("Illness","Choose an Illness:",
                                      choices = health_edu$Indicator_1,
                                      selected = health_edu$Indicator_1)),
                        mainPanel(plotOutput("ed_graph"))
                        
                        #sidebarPanel(
                        #  selectInput(inputId ="column",
                        #              label = "Choose Column for Summary",
                        #              choices = names(health_edu),
                        #              selected = "grouping_letter"),
                        #  tableOutput('table')
                        
                      )),                        
             
             #fluidPage(
             # checkboxInput("somevalue", "Include Error Bands", FALSE),
             # verbatimTextOutput("value")
             
             tabPanel("By Age",
                      sidebarLayout(
                        sidebarPanel(
                          selectInput("Illness","Choose an Illness:",
                                      choices = health_age$Indicator_2,
                                      selected = health_age$Indicator_2)),
                        mainPanel(plotOutput("age_graph"))
                      )),
             
             #ui <- fluidPage(
             #   checkboxInput("somevalue", "Some value", FALSE),
             #   verbatimTextOutput("value")
             
             #),
             
             tabPanel("Education + Age",
                      sidebarLayout(
                        sidebarPanel(
                          selectInput("Illness","Choose an Illness:",
                                      choices = diploma_bachelors_29$Indicator_3,
                                      selected = diploma_bachelors_29$Indicator_3)),
                        mainPanel(plotOutput("ed_age_graph"))
                      ))
             
             #ui <- fluidPage(
             #   checkboxInput("somevalue", "Some value", FALSE),
             #   verbatimTextOutput("value")
             
             #)
             
             #mainPanel(
             #  tabsetPanel(
             #    tabPanel("Plot", plotOutput("plot")), 
             #    tabPanel("Summary", verbatimTextOutput("summary")), 
             #    tabPanel("Table", tableOutput("table"))   
  )
)  




# library(shiny)
# 
# shinyUI(
#     
#     dashboardPage(
#         
#         # Application title
#         dashboardHeader(title ="WellLearner Explorer"),
#         
#         # Sidebar with a slider input for number of bins 
#         
#         dashboardSidebar(
#             selectInput("Illness",
#                         "Choose an Illness:",
#                         choices = Indicator,
#                         selected = Indicator[1])
#             #fileInput("file",
#             #          "Choose a file:"
#             
#         )
#         
#     ),
#     
#     # Show a plot of the generated distribution
#     dashboardBody(
#         fluidRow(
#             column(width=8,
#                    box(width=20,
#                        plotOutput("linegraph")
#                    )
#             )
#         )
#     )
# )
# )


