library(readxl)
install.packages("read_exel")
library(kableExtra)
library(readxl)
library(tidyverse)


sophie <- read_excel("sophie.xlsx")


rec = "Recurrence rate<br>by location (%)"

byloc= c("10.8 %","7.4 %","9.1 %","20 %","9.1 %","12.5 %","4.5 %","8.8 %","3.7 %","9.5 %","1.3 %")

sophie[rec] = byloc

colnames(sophie) %>% str_squish()

sophie = sophie %>% select(Location,`Primary BCC <br>(n=766) n,(%)`,`Recurrent BCC <br>(n=37) n,(%)`,rec,`p value*`)


sophie %>% kbl(align = 'lccccc',escape = F) %>% 
  row_spec(0,bold = T) %>%
  kable_classic(full_width = F) %>% 
  footnote(symbol = "p value given for Fisher test with 'Trunk + Limbs' as reference value") %>% 
  save_kable("locccc.html")


write.csv(sophie,'cbc')
