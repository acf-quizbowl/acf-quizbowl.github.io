library(tidyverse)
library(gt)
library(knitr)
library(kableExtra)
library(clipr)

tribble(~Officer, ~Contact,
        "Billy Busse, President", "president@acf-quizbowl.com",
        "Matt Bollinger, Communications", "communications@acf-quizbowl.com",
        "Alex Damisch, Mirror Coordinator", "alexandra.damisch@acf-quizbowl.com",
        "Andrew Feist, Treasurer", "tabstopva@acf-quizbowl.com",
        "Ryan Rosenberg, Webmaster", "ryanr345@acf-quizbowl.com") %>% 
  gt() %>% 
  as_raw_html() %>% 
  write_clip()

read_csv("prov.csv") %>% 
  gt() %>% 
  tab_style(style = cells_styles(text_weight = "bold"),
            locations = cells_column_labels(columns = c("Name", "Affiliation", "Contributions"))) %>% 
  as_raw_html() %>% 
  write_clip()

read_csv("full.csv") %>% 
  gt() %>% 
  tab_style(style = cells_styles(text_weight = "bold"),
            locations = cells_column_labels(columns = c("Name", "Affiliation", "Contributions"))) %>% 
  as_raw_html() %>% 
  write_clip()

read_csv("emeritus.csv") %>% 
  gt() %>% 
  tab_style(style = cells_styles(text_weight = "bold"),
            locations = cells_column_labels(columns = c("Name", "Affiliation", "Contributions"))) %>% 
  as_raw_html() %>% 
  write_clip()
