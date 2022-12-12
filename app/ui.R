fluidPage(
  dashboardHeader(
    title= div(h3('BotIO - Corrector de definiciones', style="margin: 0;"), 
               h5('Taller de Modelos Matemáticos y Datos', style="margin: 0;"),
               h5('Facultad de Ingenieria - UBA', style="margin: 0;")
               )
  ),
  #titlePanel("BotIO. Corrector de definiciones"),
  textAreaInput("response", "Definición", response, width = "800px"),
  radioButtons("definition", "Definición a evaluar:",
               c("Investigación Operativa" = "Investigación Operativa",
                 "Modelo" = "Modelo",
                 "Algoritmo"= "Algoritmo",
                 "Simplex" = "Método Simplex")),
  submitButton("Evaluar", icon("refresh")),
  verbatimTextOutput("value")
)