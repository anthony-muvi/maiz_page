# Pasos para Anthony (Windows)

## 0. Instalar una sola vez
1. Quarto: https://quarto.org/docs/get-started/ (instalador de Windows).
2. Git para Windows: https://git-scm.com/download/win
3. En RStudio, consola:
   install.packages(c("inti", "ggplot2", "knitr", "rmarkdown"))

## 1. Tarpuy (libro de campo)
1. Crea un Google Sheets vacío con tu cuenta UNTRM y copia su enlace.
2. En RStudio:  inti:::tarpuy_full()
3. Inicia sesión con tu cuenta y pega el enlace del Sheets.
4. Pestaña PLEX: llena el formulario con la hoja "plex_formulario" de
   tarpuy/tarpuy_maiz_plex_traits.xlsx (completa lo que está entre paréntesis).
5. Pestaña de diseño: 3 factores, rcbd, 4 repeticiones, zigzag, semilla 2019.
   Factores: densidad (62500, 69444), nitrogeno (180, 200, 220), fraccionamiento (2ap, 3ap).
6. En tu Sheets crea una hoja llamada "traits" y pega la hoja "traits" del Excel (con encabezados).
7. Genera el FIELDBOOK y el SKETCH. Debe salir 48 parcelas.
8. Comparte el Sheets con el docente.

## 2. Código inti (lo que se entrega como código)
Abre la carpeta del proyecto en RStudio y corre tarpuy/diseno_inti.R.
Eso vuelve a crear img/croquis.png y data/libro_campo_maiz.csv con TU versión de inti.

## 3. Página web
1. En GitHub crea un repositorio público: reanalisis_maiz (sin README).
2. En la terminal (Git Bash), dentro de esta carpeta:
   git init
   git add .
   git commit -m "Re-análisis maíz"
   git branch -M main
   git remote add origin https://github.com/TU_USUARIO/reanalisis_maiz.git
   git push -u origin main
3. Para volver a generar la web después de cambiar algo:
   quarto render
   git add .
   git commit -m "actualiza"
   git push
4. GitHub > Settings > Pages > Branch: main, carpeta /docs > Save.
   La página queda en https://TU_USUARIO.github.io/reanalisis_maiz/
