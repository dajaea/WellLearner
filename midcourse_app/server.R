
shinyServer(function(input, output) {
  
  output$ed_graph <- renderPlot({
    health_edu %>%
      filter(Indicator == input$Illness) %>%
      ggplot(aes(x = `Time Period Label`, y = Value)) +
      # <trying to show weeks from Time Period Label column, 
      # I got it by using Time Period Label on line 7 but now ordered alphabetically>
      #scale_x_date(breaks = `Time Period Label`) +
      #scale_x_discrete(breaks = c(`Time Period Label`)) +
      geom_line(aes(group = Subgroup, color = Subgroup)) +
      ggtitle('U.S. Mental Illness Over 7.5 Months in 2020 (Education)') +
      xlab('Survey Week') +
      ylab('Percent of U.S.') +
      # <trying to make error bands>
      #geom_ribbon(aes(ymin=`Low CI`, ymax = `High CI`, group = Subgroup, fill = Subgroup, alpha = .1)) +
      theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1, size = 13)) +
      theme(axis.text.y = element_text(size = 13)) +
      theme(plot.title = element_text(hjust = 0.5, size = 13, face = "bold")) +
      theme(legend.text = element_text(size = 13)) +
      theme(legend.key.width = unit(3,"cm"))
      # <trying to re-order legend> 
      #theme(legend.text = reorder("Bachelor's degree or higher", "Some college/Associate's degree", "High school diploma or GED", "Less than a high school diploma"))
      #legend(limits = c("Bachelor's degree or higher", "Some college/Associate's degree", "High school diploma or GED", "Less than a high school diploma"))
    
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
  
  #output$summary_table <- reactive({
  #  req(input$column)
  #  health_edu %>%
  #    group_by(!!sym(input$column)) %>%
  #    summarise (value = n(), yield = round(mean(value)*100, 1)) %>%
  #    mutate(Pct_of_value = paste0(round(100 * value/sum(value), 0), "%"))
  #})
  
  #output$table <- renderTable(summary_table())
  
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
