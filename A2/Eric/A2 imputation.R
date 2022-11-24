a2_data <- read_csv("../Starter/gss_clean.csv") %>% select(-c(caseid))
a2_data[sapply(a2_data, is.character)] <- lapply(a2_data[sapply(a2_data, is.character)], 
                                                 as.factor)
glimpse(a2_data)
browser()
a2_data_imputed <- missForest(a2_data, verbose = T, variablewise = TRUE)

