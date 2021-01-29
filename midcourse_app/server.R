
shinyServer(function(input, output) {
  
  ## Only run examples in interactive R sessions
  #if (interactive()) {
    
    #ui <- fluidPage(
    #  checkboxInput("somevalue", "Some value", FALSE),
    #  verbatimTextOutput("value")
    #)
    ###function(input, output) {
    ###  output$value <- renderText({ input$"Include Error Bands"})
    ###}
    #shinyApp(ui, server)
  #}
  
  output$ed_graph <- renderPlot({
    health_edu %>%
      filter(Indicator_1 == input$Illness_1) %>%
      ggplot(aes(x = reorder(`Time Period Label`, `Time Period`), y = Value)) +
      geom_line(aes(group = Subgroup, color = Subgroup)) +
      # add error bands
      geom_ribbon(aes(ymin=`Low CI`, ymax = `High CI`, group = Subgroup, fill = Subgroup),alpha = .5) +
      # labels
      ggtitle('U.S. Mental Illness Over 7.5 Months in 2020 (Education)') +
      theme(plot.title = element_text(hjust = 0.5, size = 13, face = "bold")) +
      xlab('Survey Week') +
      ylab('Percent of U.S.') +
      theme(axis.title.x = element_text(size = 14, face = "bold", color = "grey47"),
        axis.title.y = element_text(size = 14, face = "bold", color = "grey47")
      ) +
      theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1, size = 13)) +
      theme(axis.text.y = element_text(size = 13)) +
      theme(legend.text = element_text(size = 13)) +
      theme(legend.key.width = unit(1,"cm")) +
      # re-order legend
      scale_fill_discrete(breaks = c("Bachelor's degree or higher", "Some college/Associate's degree", "High school diploma or GED", "Less than a high school diploma")) + 
      scale_color_discrete(breaks = c("Bachelor's degree or higher", "Some college/Associate's degree", "High school diploma or GED", "Less than a high school diploma")) +
      geom_hline(yintercept = 20) +
      #scale_fill_manual(values="black", label="Anxiety baseline 2019")
      annotate("text", x = Inf, y = 2.9, label = "text2", hjust = -0.08, size = 3)
      
  })
  
  output$age_graph <- renderPlot({
    health_age %>%
      filter(Indicator_2 == input$Illness_2) %>%
      ggplot(aes(x = reorder(`Time Period Label`, `Time Period`), y = Value)) +
      geom_line(aes(group = Subgroup, color = Subgroup)) +
      geom_ribbon(aes(ymin=`Low CI`, ymax = `High CI`, group = Subgroup, fill = Subgroup),alpha = .5) +
      ggtitle('U.S. Mental Illness Over 7.5 Months in 2020 (Age)') +
      theme(plot.title = element_text(hjust = 0.5, size = 13, face = "bold")) +
      xlab('Survey Week') +
      ylab('Percent of U.S.') +
      theme(axis.title.x = element_text(size = 14, face = "bold", color = "grey47"),
            axis.title.y = element_text(size = 14, face = "bold", color = "grey47")
      ) +
      theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1, size = 13)) +
      theme(axis.text.y = element_text(size = 13)) +
      theme(legend.text = element_text(size = 13)) +
      theme(legend.key.width = unit(1,"cm"))
      #left these out; it created a duplicate legend, plus already ordered as the data plots out:
      #guides(colour = guide_legend(reverse = T))
      #theme(legend.position = "none")
          
  })
  
  output$ed_age_graph <- renderPlot({
    diploma_bachelors_29 %>%
      filter(Indicator_3 == input$Illness_3) %>%
      ggplot(aes(x = reorder(`Time Period Label`, `Time Period`), y = Value)) +
      geom_line(aes(group = Subgroup, color = Subgroup)) +
      geom_ribbon(aes(ymin=`Low CI`, ymax = `High CI`, group = Subgroup, fill = Subgroup),alpha = .5) +
      ggtitle('U.S. Mental Illness Over 7.5 Months in 2020 (Ages 18 - 29)') +
      theme(plot.title = element_text(hjust = 0.5, size = 13, face = "bold")) +
      xlab('Survey Week') +
      ylab('Percent of U.S.') +
      theme(axis.title.x = element_text(size = 14, face = "bold", color = "grey47"),
            axis.title.y = element_text(size = 14, face = "bold", color = "grey47")
      ) +
      theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1, size = 13)) +
      theme(axis.text.y = element_text(size = 13)) +
      theme(legend.text = element_text(size = 13)) +
      theme(legend.key.width = unit(1,"cm"))
    
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
