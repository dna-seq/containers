#!/usr/bin/env bash
docker run -e PASSWORD=nopassword `pwd`/src:/home/rstudio -p 8787:8787 quay.io/just-dna-seq/prs:latest /init
