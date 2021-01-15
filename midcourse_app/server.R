library(shiny)

shinyServer(function(input, output) {
    
    output$linegraph <- renderPlot({
        health_edu %>%
            filter(Indicator == input$Illness) %>%
            #summarise(health_edu$ind_mean = mean('Indicator')) %>%
            ggplot(aes(x = `Time Period`, y = Value)) +
            geom_line(aes(group = Subgroup, color = Subgroup)) +
            ggtitle('TEST') +
            xlab('x test') +
            ylab('y test') +
            geom_ribbon(aes(ymin=`Low CI`, ymax = `High CI`, group = Subgroup, fill = Subgroup, alpha = 0.1)) +
            #scale_y_continuous(labels = scales::comma) +
            theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
            theme(plot.title = element_text(hjust = 0.5))
    })
})

