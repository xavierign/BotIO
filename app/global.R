library(corpus)
library(tidyverse)
library(shinydashboard)

df <- read.csv('data/keywords.csv')
bow_dict <- split(df,df$definition)

unique(df$definition)

grade_response <- function(response,definition) {
  
  matches_id <- bow_dict[[definition]]$stem %in% text_tokens(response, stemmer = "es")[[1]]
  matches_sum <- sum(bow_dict[[definition]]$score[matches_id])
  keywords <- bow_dict[[definition]]$keyword[matches_id]
  
  score_response <- min(4,matches_sum) /4*100
  
  text_out <- paste("El score obtenido es: ", score_response,
                    "/100\n Las keywords identificadas son: ",
                    paste(keywords,collapse=", "),collapse ="")
  
  return(text_out)

}

response <- "La IO es la disciplina que construye modelos cuantitativos para resovler problemas"

#sandbox

#definition <- "Investigación Operativa"
#grade_response(response,definition)
#for (w in df$keyword) {
#print(text_tokens(w, stemmer = "es")[[1]])
#}
