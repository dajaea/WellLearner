
library(shiny)
library(tidyverse)
library(shinydashboard)

health_data <- read_csv("data/Indicators_of_Anxiety_or_Depression_Based_on_Reported_Frequency_of_Symptoms_During_Last_7_Days.csv")

health_edu <- health_data %>%
  drop_na() 
  #filter(Group == "By Education") %>%
  #mutate(Value = as.numeric(as.character(Value))) %>%
  #mutate(`Time Period` = as.numeric(as.character(`Time Period`)))


#****************

# library(shiny)
# library(tidyverse)
# library(shinydashboard)
# 
# health_data <- read_csv("data/Indicators_of_Anxiety_or_Depression_Based_on_Reported_Frequency_of_Symptoms_During_Last_7_Days.csv")
# 
# health_edu <- health_data %>%
#   drop_na() 
#   filter(Group == "By Education") %>%
#   #mutate(Value = as.numeric(as.character(Value))) %>%
#   #mutate(`Time Period` = as.numeric(as.character(`Time Period`)))