to_install_bioconductor <- c("stringr", "remotes", "doParallel","foreach", "RJSONIO", 'DT',  'igraph',   'jsonlite', 'openxlsx', 'R.utils',  'visNetwork', 'docstring')
BiocManager::install(to_install_bioconductor)
devtools::install_github("statgen/Rprs", ref = "fix/broken-zlib-url", quiet=FALSE)