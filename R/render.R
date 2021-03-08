## Specify a directeory to generate the rmd files from
## by defaults generates all rmd
system('rm -rf render')
system('mkdir -p render')

system('mkdir render/courses_tools') 
system('mkdir render/resources') 
system( glue::glue( 'cp -rf  courses_tools/resources render/courses_tools/. '))
system( glue::glue( 'cp -rf  resources/fig  render/resources/. '))

source(file.path('courses_tools','R', 'load_packages.R'))

directory_list <- stringr::str_remove(string = list.files('.', pattern = '.Rmd', full.names = TRUE, recursive = TRUE),
                                      pattern = "\\/[:alpha:]+.Rmd")
for( directory in directory_list){
  
  filenames <- list.files(directory, pattern = '.Rmd',
                          full.names = TRUE)
  system(glue::glue( 'cp resources/mpe_pres.css {directory}/.'))
  
  for(f_ in filenames){
    system(glue::glue( 'rm -rf {stringr::str_remove(f_, ".Rmd")}_cache'))
    system(glue::glue( 'rm -rf {stringr::str_remove(f_, ".Rmd")}_files'))
  }
  
  rmarkdown::render(file.path(directory, 'index.Rmd'))
  
  system( glue::glue( 'cp -rf  {directory} render/ '))
}



