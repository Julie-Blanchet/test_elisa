library(readxl)
library(dplyr)


data_test <- read_excel("data_test.xlsx")

data_test$numero_centre <- as.factor(data_test$numero_centre)
data_test$corrigpoids  <- as.numeric(data_test$corrigpoids)
data_test$numero_crotte <- as.factor(data_test$numero_crotte)


kruskal.test(corrigpoids ~ numero_crotte, data = data_test)
