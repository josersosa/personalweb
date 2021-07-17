# /media/jose/DATOS/Archivos/Proyectos/Posts/Markdown-serie/Creando un blog con Markdown y Distill.md
#
# Para configurar el cliente Git en linea de comandos:
# git config --global user.name "José R Sosa"
# git config --global user.email "josersosa@gmail.com"
# git config --global credential.helper 'cache --timeout=36000'
# git remote set -url origin git@github.com:josersosa/personalweb.git
#
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
# crear un post en otra colecci[on custom
distill::create_post(title = "Tunneling TCP con SSH",
                     collection = "projects",
                     author = "José R Sosa",
                     date = "2012-08-31",
                     date_prefix = TRUE,
                     draft = FALSE)
# para publicar simplemente renderizar con el botón Knit

# para rederizar toda la pagina
rmarkdown::render_site(input = here::here())


distill::create_post(title = "Editor en linea de comandos Vim",
                     author = "José R Sosa",
                     date = "2021-07-10",
                     date_prefix = TRUE,
                     draft = FALSE)

distill::create_post(title = "Construccion de un avion de madera de balsa",
                     collection = "gabyprojects",
                     author = "José R Sosa",
                     date = "2013-11-03",
                     date_prefix = TRUE,
                     draft = FALSE)

# How to create and include images
#{r out.width = "50%", fig.align = "center"}
knitr::include_graphics("images/fig31_adjust_nodes.png")


# Presentacion de videos de youtuve embebidos:
<div class="embed-container">
  <iframe
    src="https://www.youtube.com/embed/aD1_e4rPsvM"
    width="700"
    height="480"
    frameborder="0"
    allowfullscreen="">
  </iframe>
</div>  

# Presentacion de videos de youtuve embebidos usando vember:      
```{r, echo=FALSE}
  #https://ijlyttle.github.io/vembedr/
  library("vembedr")
  embed_url("https://www.youtube.com/watch?v=GyM2M9dyAi4") %>%
    use_start_time("5m34") %>%
    use_align("center")
```
