
library(readr)
library(dplyr)

codigos = c('251050105000001','251050105000002','251050105000003','251050105000004','251050105000005','251050105000006','251050105000007')

read_csv2(
    "/home/douglas/visu/Domicilio01_PB.csv",
    locale = locale(encoding = "latin1")) %>% 
    filter(Cod_setor %in% codigos) %>%
    write_csv("basico-censo-olivedos-utf8.csv")
