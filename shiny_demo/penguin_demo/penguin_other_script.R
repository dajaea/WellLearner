penguins <- read_csv('data/penguins.csv') 
penguins <- penguins %>% 
  drop_na(body_mass_g) %>% 
  ggplot(aes(x=body_mass_g)) +
  geom_histogram((color = 'black',bins = input$bins))

penguins %>% 
  drop_na(sex) %>% 
  ggplot(aes(x=sex))+
  geom_bar()

sort(unique(penguins$island))


penguins %>% 
  select(island) %>% 
  unique() %>% 
  sort()


penguins
