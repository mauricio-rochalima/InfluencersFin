
library("dplyr") #for data manipulation
library("igraph") # for social network analysis
library("ggraph") 
library(readxl)
library(tidyverse)
library(ggraph)
library(tidygraph)
library(graphlayouts)
library(ggplot2)
library(snahelper)
library(miniCRAN)
library(magrittr)
library(remotes)
library(intergraph)
library(Cairo)
library(ggrepel)
library(here)
library(knitr)
library(kableExtra)
library(tidytext)  


rm(list = ls())



carregar_dados <- function(caminho_arquivo) {
  
  c <- here::here("BD",caminho_arquivo)  
  
  edges <- readxl::read_excel(c, sheet = "Edges", skip = 1)
  vertices <- readxl::read_excel(c, sheet = "Vertices", skip = 1)
  
  Hashtag <- readxl::read_excel(c, sheet = "Overall Metrics", skip = 1)
  Hashtag <- toString(Hashtag[30, 2])
  
  # Retorna a lista de dados
  return(list(edges = edges, vertices = vertices, Hashtag = Hashtag))

}




# Exemplo de uso:
caminho_arquivo <- "EducFin.xlsx"
dados <- carregar_dados(caminho_arquivo)


head(edges)

edges <- carregar_dados(caminho_arquivo)$edges
vertices <- carregar_dados(caminho_arquivo)$vertices
Hashtag <- carregar_dados(caminho_arquivo)$Hashtag


