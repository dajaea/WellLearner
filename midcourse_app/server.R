
shinyServer(function(input, output) {
  
  output$ed_graph <- renderPlot({
    health_edu %>%
      filter(Indicator == input$Illness) %>%
      ggplot(aes(x = `Time Period`, y = Value)) +
      #aes(x = reorder(`Bachelor's degree or higher`, `Some college/Associate's degree`, `High school diploma or GED`, `Less than a high school diploma`))    +
      geom_line(aes(group = Subgroup, color = Subgroup)) +
      ggtitle('U.S. Mental Illness Over 7.5 Months in 2020 (Education)') +
      xlab('Survey Week') +
      ylab('Percent of U.S.') +
      #geom_ribbon(aes(ymin=`Low CI`, ymax = `High CI`, group = Subgroup, fill = Subgroup, alpha = .1)) +
      #scale_x_date(breaks = `Time Period Label`)
      theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
      theme(plot.title = element_text(hjust = 0.5))
    
  })
  
  output$age_graph <- renderPlot({
    health_age %>%
      filter(Indicator == input$Illness) %>%
      ggplot(aes(x = `Time Period`, y = Value)) +
      #aes(x = reorder(`Bachelor's degree or higher`, `Some college/Associate's degree`, `High school diploma or GED`, `Less than a high school diploma`))    +
      geom_line(aes(group = Subgroup, color = Subgroup)) +
      ggtitle('U.S. Mental Illness Over 7.5 Months in 2020 (Age)') +
      xlab('Survey Week') +
      ylab('Percent of U.S.') +
      #geom_ribbon(aes(ymin=`Low CI`, ymax = `High CI`, group = Subgroup, fill = Subgroup, alpha = .1)) +
      #scale_x_date(breaks = `Time Period Label`)
      theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
      theme(plot.title = element_text(hjust = 0.5))
    
  })
  
  output$ed_age_graph <- renderPlot({
    diploma_bachelors_29 %>%
      filter(Indicator == input$Illness) %>%
      ggplot(aes(x = `Time Period`, y = Value)) +
      #aes(x = reorder(`Bachelor's degree or higher`, `Some college/Associate's degree`, `High school diploma or GED`, `Less than a high school diploma`))    +
      geom_line(aes(group = Subgroup, color = Subgroup)) +
      ggtitle('U.S. Mental Illness Over 7.5 Months in 2020 (Ages 18 - 29)') +
      xlab('Survey Week') +
      ylab('Percent of U.S.') +
      #geom_ribbon(aes(ymin=`Low CI`, ymax = `High CI`, group = Subgroup, fill = Subgroup, alpha = .1)) +
      #scale_x_date(breaks = `Time Period Label`)
      theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
      theme(plot.title = element_text(hjust = 0.5))
    
  })
  
})


# library(shiny)
# 
# shinyServer(function(input, output) {
#     
#     output$linegraph <- renderPlot({
#         health_edu %>%
#             filter(Indicator == input$Illness) %>%
#             #summarise(health_edu$ind_mean = mean('Indicator')) %>%
#             ggplot(aes(x = `Time Period`, y = Value)) +
#             geom_line(aes(group = Subgroup, color = Subgroup)) +
#             ggtitle('TEST') +
#             xlab('x test') +
#             ylab('y test') +
#             geom_ribbon(aes(ymin=`Low CI`, ymax = `High CI`, group = Subgroup, fill = Subgroup, alpha = 0.1)) +
#             #scale_y_continuous(labels = scales::comma) +
#             theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
#             theme(plot.title = element_text(hjust = 0.5))
#     })
# })
