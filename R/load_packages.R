##########################################################
#### cran packages
##########################################################
if(!exists("main_dir"))
   main_dir <- ''
packages_to_be_installed <- c(file.path(main_dir,'resources','project_package_list.txt'), 
                              file.path(main_dir, 'courses_tools', 'resources', 'common_package_list.txt'))

print(packages_to_be_installed)
for ( l in packages_to_be_installed){
  if(file.exists(l)){
    package_list <- read.table(l, header = TRUE, sep = ',')
    if(nrow(package_list)>0){
      for( i in 1:nrow(package_list)){
        if(!require(package_list$name[i],character.only = TRUE)){
          cat(paste0('Package ', package_list$name[i], ' mentionned in ', l, ' is missing. Now installing it'))
          if(package_list$repo == 'cran'){
            install.packages(package_list$name[i])
          } else {
            remotes::install_github(paste0(repo,'/',name))
          }
          print(paste0('loading ', package_list$name[i],'.\n'))
          library(package_list$name[i],character.only = TRUE)
        }
      }
    }
  }
}

