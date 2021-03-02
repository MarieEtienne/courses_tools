##########################################################
#### cran packages
##########################################################
packages_to_be_installed <- c('../sources/package_list.txt', 'common_package_list.txt')

for ( l in packages_to_be_installed){
  if(file.exists(l)){
    package_list <- read.table(l)
    for( p_ in package_list){
      if(!require(p_)){
        cat(paste0('Package ', p_, ' mentionned in ', l, ' is missing. Stop rendering'))
      }
    }
  }
}


