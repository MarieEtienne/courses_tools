##########################################################
#### cran packages
##########################################################


# system ------------------------------------------------------------------
install.packages('remotes')
install.packages('devtools')

# tidyverse ---------------------------------------------------------------
install.packages('tidyverse')

# graphic -----------------------------------------------------------------
install.packages('plotly')
install.packages('ggpubr')
install.packages("gifski")
install.packages("magick")
install.packages("leaflet")



# ## sudo apt-get install cargo 
# install.packages('gifski') 
# ## sudo add-apt-repository -y ppa:cran/imagemagick
# ## sudo apt-get update
# ## sudo apt-get install -y libmagick++-dev
# install.packages('magick')   
install.packages('gganimate')
install.packages('GGally')

# linear model ------------------------------------------------------------

install.packages("ggfortify") ## nice diagnostic plot for lm glm and co
install.packages('car') # functionAnova for type III
install.packages("emmeans") # lsmeans


# color -------------------------------------------------------------------
install.packages('wesanderson')

# maps --------------------------------------------------------------------



# sudo apt install libpq-dev
# sudo apt install gdal-bin
# sudo apt-get install -y libgdal-dev
# sudo apt install libudunits2-dev 
install.packages('sf')
install.packages('maps')
install.packages('ggmap')
install.packages('rnaturalearth')
install.packages('rnaturalearthdata')
install.packages('rgeos')
remotes::install_github("ropensci/osmdata") # openstreet map data

# reporting ---------------------------------------------------------------
install.packages('rmarkdown')
install.packages('kableExtra')
remotes::install_github("ropensci/RefManageR")
install.packages('flexdashboard') # to produce nice dashboard




# # data --------------------------------------------------------------------
remotes::install_github("allisonhorst/palmerpenguins")
remotes::install_github("MarieEtienne/coursesdata")

# # presentation ------------------------------------------------------------
remotes::install_github('yihui/xaringan')
remotes::install_github("EvaMaeRey/flipbookr")
remotes::install_github("gadenbuie/xaringanExtra")

