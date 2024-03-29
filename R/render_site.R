if(file.exists('_site.yml')){
  rmarkdown::render_site(encoding = 'UTF-8')
} else {
  system('rm -rf render; mkdir render') 
}


system('mkdir render/courses_tools') 
system('mkdir render/resources') 
system( glue::glue( 'cp -rf courses_tools/resources render/courses_tools/.'))
system( glue::glue( 'cp -rf resources/figs render/resources/.'))
system( glue::glue( 'cp -rf resources/img render/resources/.'))
system( glue::glue( 'cp -rf resources/audio render/resources/.'))


if(file.exists("Thesis/hdr_main.pdf")){
  system('cp Thesis/hdr_main.pdf render/.')
}

source(file.path('courses_tools','R', 'load_packages.R'))



filenames <- list.files('_presentation', pattern = '.Rmd',
                        full.names = TRUE)
system(glue::glue( 'cp resources/*.css _presentation/.'))
system(glue::glue( 'cp resources/*.bib _presentation/.'))


for(f_ in filenames){
  system(glue::glue( 'rm -rf {stringr::str_remove(f_, ".Rmd")}_cache'))
  system(glue::glue( 'rm -rf {stringr::str_remove(f_, ".Rmd")}_files'))
  rmarkdown::render(f_)
}


system( glue::glue( 'cp -rf _presentation render/. '))




