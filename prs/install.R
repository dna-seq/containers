to_install_bioconductor <- c("stringr", "remotes", "doParallel","foreach", "RJSONIO", 'DT',  'igraph',   'jsonlite', 'openxlsx', 'R.utils',  'visNetwork', 'docstring', 'pickgene')
BiocManager::install(to_install_bioconductor)
devtools::install_github("antonkulaga/Rprs", quiet=FALSE)