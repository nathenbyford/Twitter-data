library("tidyverse")
theme_set(
  theme_classic() +
    theme(panel.grid.major.y = element_line(),
          axis.title.y = element_text(angle = 0, vjust = .5)
    )
)

dtweets <- read_rds(".//data//dtweets.rds")

## Question 4.

mentions <- dtweets |> 
  pull(text) |> 
  str_extract_all(pattern = "\\@\\w{4,15}") |> 


mentions

map(mentions, str_split, pattern = ", ") |> 
  unlist() |> 
  as_tibble() |> 
  group_by(value) |> 
  count() |> 
  ungroup() |> 
  arrange(desc(n))

test <- TRUE
