## Specify a directeory to generate the rmd files from
## by defaults generates all rmd
system('rm -rf render')
system('mkdir -p render')

filenames <- list.files('sources', pattern = 'Rmd',
                        full.names = FALSE, recursive = TRUE)


system(glue::glue( 'cp courses_tools/resources/mpe_pres.css sources/.'))


for(f_ in filenames){
  rmarkdown::render(glue::glue( 'sources/{f_}'))
}

system('cp -rf sources/* render/.')

