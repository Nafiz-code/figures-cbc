library(readxl)
install.packages("kableExtra")
library(kableExtra)
library(tidyverse)

localisation <- read_excel("localisation.xlsx")
colnames(localisation) %>% str_squish()



localisation %>% kbl(align = 'lccccc',escape = F) %>% 
  row_spec(0,bold = T) %>%
  row_spec(21,bold = T) %>% 
  kable_classic(full_width = F) %>% 
  footnote(symbol = "BCC histological subtypes") %>% 
  save_kable("locccc.html")
