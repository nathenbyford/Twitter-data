library("tidyverse")

dtt <- read_rds(".//data//dtweets.rds")

dtt |> 
  mutate(length = str_length(text)) |> 
    ggplot() +
    geom_histogram(aes(x=length), binwidth =5) +
    scale_x_continous(expand = 0)  

