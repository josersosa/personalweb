# /media/jose/DATOS/Archivos/Proyectos/Posts/Markdown-serie/Creando un blog con Markdown y Distill.md
# instalacion de librerias
req_pckgs <- c("distill", "here")
install.packages(pkgs = req_pckgs)
# soporte para diagramas
install.packages("DiagrammeR") #version estable en CRAN
devtools::install_github("rich-iannone/DiagrammeR") #ultima version
library(DiagrammeR)
#para generar jpg
install.packages("png","jpeg")
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
distill::create_post(title = "Tunneling TCP con SSH",
                     author = "José R Sosa",
                     date = "2012-08-31",
                     date_prefix = TRUE,
                     draft = FALSE)
# para publicar simplemente renderizar con el botón Knit

# para rederizar toda la pagina
rmarkdown::render_site(input = here::here())


distill::create_post(title = "Brazo Robot Articulado",
                     author = "José R Sosa",
                     date = "2012-04-07",
                     date_prefix = TRUE,
                     draft = FALSE)

# How to create and include images
#{r out.width = "50%", fig.align = "center"}
knitr::include_graphics("images/fig31_adjust_nodes.png")


