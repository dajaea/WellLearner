shinyUI(
  
  dashboardPage(
    
    # Application title
    dashboardHeader(title ="WellLearner Explorer"),
    
    # Sidebar with a slider input for number of bins 
    
    dashboardSidebar(
      selectInput("Illness",
                  "Choose an Illness:",
                  choices = Indicator,
                  selected = Indicator[1])
      #fileInput("file",
      #          "Choose a file:"
                
      )
      
    ),
    
    # Show a plot of the generated distribution
    dashboardBody(
      fluidRow(
        column(width=8,
               box(width=NULL,
                   plotOutput("linegraph")
               )
            )
        )
    )
)

