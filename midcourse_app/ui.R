
shinyUI(
  
  navbarPage("WellLearner Explorer",

             # Output plots  ...#do a sidebar layout for each
             tabPanel("Ed. Attainment",
                      sidebarLayout(
                        sidebarPanel(
                          selectInput("Illness","Choose an Illness:",
                                      choices = health_edu$Indicator,
                                      selected = health_edu$Indicator[1])),
                        mainPanel(plotOutput("ed_graph"))
                     )),
             
             tabPanel("By Age",
                      sidebarLayout(
                        sidebarPanel(
                          selectInput("Illness","Choose an Illness:",
                                      choices = health_age$Indicator,
                                      selected = health_age$Indicator[1])),
                        mainPanel(plotOutput("age_graph"))
                      )),     
             
             tabPanel("Education + Age",
                      sidebarLayout(
                        sidebarPanel(
                          selectInput("Illness","Choose an Illness:",
                                      choices = diploma_bachelors_29$Indicator,
                                      selected = diploma_bachelors_29$Indicator[1])),
                        mainPanel(plotOutput("ed_age_graph"))
                      ))
             
             
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


