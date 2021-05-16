# /media/jose/DATOS/Archivos/Proyectos/Posts/Markdown-serie/Creando un blog con Markdown y Distill.md
# instalacion de librerias
req_pckgs <- c("distill", "here")
install.packages(pkgs = req_pckgs)
# soporte para diagramas
install.packages("DiagrammeR") #version estable en CRAN
devtools::install_github("rich-iannone/DiagrammeR") #ultima version
library(DiagrammeR)
#grViz()
# cargamos las librerias necearias
library(here)
library(distill)
# crear un nuevo artículo
distill::create_post(title = "Como ejecutar comandos remotos con SSH",
                     author = "José R Sosa",
                     date_prefix = TRUE,
                     draft = FALSE)
# o con fecha:
distill::create_post(title = "Datasets para proyectos de Machine Learning",
                     author = "José R Sosa",
                     date = "2020-12-31",
                     date_prefix = TRUE,
                     draft = FALSE)
# para publicar simplemente rederizar con el botón Knit

# para rederizar toda la pagina
rmarkdown::render_site(input = here::here())


distill::create_post(title = "Tunneling TCP con SSH",
                     author = "José R Sosa",
                     date = "2012-08-318",
                     date_prefix = TRUE,
                     draft = FALSE)
