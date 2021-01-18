
library(shiny)
library(tidyverse)
library(shinydashboard)

health_data <- read_csv("data/Indicators_of_Anxiety_or_Depression_Based_on_Reported_Frequency_of_Symptoms_During_Last_7_Days.csv")

#health_data <- health_data %>%
#  select(-c(`Quartile range`))

health_edu <- health_data %>%
  select(-c(`Quartile range`)) %>%
  filter(Group == "By Education") %>%
  drop_na()

health_age <- health_data %>%
  select(-c(`Quartile range`)) %>%
  filter(Group == "By Age") %>%
  drop_na()

diploma_bachelors_29 <- health_data %>%
  select(-c(`Quartile range`)) %>%
  filter(Subgroup %in% c("18 - 29 years", "High school diploma or GED", "Bachelor's degree or higher")) %>%
  drop_na()



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

#**********

#TEST_29 <- health_data %>%
#  select(-c(`Quartile range`)) %>%
#  filter(Subgroup == "18 - 29 years") %>%
#  drop_na()

#TEST_diploma <- health_data %>%
#  select(-c(`Quartile range`)) %>%
#  filter(Subgroup == "High school diploma or GED") %>%
#  drop_na()

