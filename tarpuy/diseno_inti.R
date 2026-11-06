# ------------------------------------------------------------------
# Diseño experimental con inti (Tarpuy)
# Réplica del experimento de Chura et al. (2019), Scientia Agropecuaria
# DBCA, factorial 2 x 3 x 2, 4 bloques = 48 parcelas
# Autor: Anthony Muñoz Vilca
# ------------------------------------------------------------------

# install.packages("inti")   # solo la primera vez
library(inti)

factores <- list(
  densidad        = c("62500", "69444"),       # plantas/ha
  nitrogeno       = c("180", "200", "220"),    # kg N/ha
  fraccionamiento = c("2ap", "3ap")            # 2 o 3 aplicaciones de urea
)

fb <- design_repblock(
  nfactors = 3,
  factors  = factores,
  type     = "rcbd",
  rep      = 4,
  zigzag   = TRUE,
  seed     = 2019
)

libro <- fb$fieldbook
head(libro)
nrow(libro)          # debe salir 48

croquis <- tarpuy_plotdesign(fb)   # croquis de campo
croquis

# Guardar el croquis para la página web
ggplot2::ggsave("img/croquis.png", croquis, width = 9, height = 5, dpi = 150, bg = "white")

# Guardar el libro de campo
write.csv(libro, "data/libro_campo_maiz.csv", row.names = FALSE)
