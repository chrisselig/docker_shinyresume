FROM rocker/shiny-verse:latest

RUN apt-get update -qq \
    && apt-get -y --no-install-recommends install \
        lbzip2 \
        libnode-dev \
        libudunits2-dev \
        libudunits2-0 \
        libfreetype6-dev \
        libpng-dev \
        libtiff5-dev \
        libjpeg-dev \
        libgdal-dev \
        libgeos-dev \
        libproj-dev \
    && install2.r --error --deps TRUE \
        shinyWidgets \
        shinythemes \
        shinyjs \
        plotly \
        ggthemes \
        fmsb