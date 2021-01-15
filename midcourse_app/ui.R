shinyUI(
  
  dashboardPage(
    
    # Application title
    dashboardHeader(title ="WellLearner Explorer"),
    
    # Sidebar with a slider input for number of bins 
    
    dashboardSidebar(
      selectInput("Illness",
                  "Choose an Illness:",
                  choices = health_edu$Indicator,
                  selected = health_edu$Indicator[1])
      
    ),
    
  
    # Show a plot of the generated distribution
    dashboardBody(
      plotOutput("linegraph")
               
        )

      ))

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


