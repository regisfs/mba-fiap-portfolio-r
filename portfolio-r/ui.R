library(shiny)
library(htmltools)
library(shinydashboard)

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Capa", tabName="home"),
    menuItem("Sobre o aluno", tabName="aluno"),
#    hr(),
    menuItem("Lista de Exercicios", tabName="aluno",
             startExpanded = TRUE,
             menuSubItem('Aula 01', tabName = 'aula01'),
             menuSubItem('Aula 02', tabName = 'aula02'),
             menuSubItem('Aula 03', tabName = 'aula03'),
             menuSubItem('Aula 04', tabName = 'aula04'),
             menuSubItem('Aula 05', tabName = 'aula05'),
             menuSubItem('Aula 06', tabName = 'aula06'),
             menuSubItem('Aula 07', tabName = 'aula07')
             )
    )
)

body <-  dashboardBody(
  tabItems(
    tabItem(tabName = "home",
            h2("Pagina inicial"),
            h4("Fazer uma capa bonitinha ..."),
            h5("O que eu aprendi nas aulas de R")
    ),
    tabItem(tabName = "aluno",
            h2("Pagina inicial"),
            h4("Falar um pouco sobre o aluno / Grupo")
    ),
    tabItem(tabName = "aula01",
            h2("Aula 01"), includeHTML("C:/MBA/Aula_01_-_RMarkdown.html")
    ),
    tabItem(tabName = "aula02",
            h2("Aula 02"), includeHTML("C:/MBA/Aula_02_-_RMarkdown.html")
    ),
    tabItem(tabName = "aula03",
            h2("Aula 03"), includeHTML("C:/MBA/Aula_03_-_RMarkdown.html")
    ),
    tabItem(tabName = "aula04",
            h2("Aula 04"), includeHTML("C:/MBA/Aula_04_-_RMarkdown.html")
    ),
    tabItem(tabName = "aula05",
            h2("Aula 05"), includeHTML("C:/MBA/Aula_05_-_RMarkdown.html")
    ),
    tabItem(tabName = "aula06",
            h2("Aula 06"), includeHTML("C:/MBA/Aula_06_-_RMarkdown.html")
    ),
    tabItem(tabName = "aula07",
            h2("Aula 07"), includeHTML("C:/MBA/Aula_07_-_RMarkdown.html")
    )   
  )
)

dashboardPage( header = dashboardHeader(  title = "Painel dos Markdowns" ),
                 sidebar = sidebar,
                 body = body
               )
